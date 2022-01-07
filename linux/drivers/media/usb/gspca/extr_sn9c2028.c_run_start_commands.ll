; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c2028.c_run_start_commands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c2028.c_run_start_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.init_command = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.init_command*, i32)* @run_start_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_start_commands(%struct.gspca_dev* %0, %struct.init_command* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca %struct.init_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store %struct.init_command* %1, %struct.init_command** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %54, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %57

14:                                               ; preds = %10
  %15 = load %struct.init_command*, %struct.init_command** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.init_command, %struct.init_command* %15, i64 %17
  %19 = getelementptr inbounds %struct.init_command, %struct.init_command* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %48 [
    i32 4, label %21
    i32 1, label %30
    i32 0, label %39
  ]

21:                                               ; preds = %14
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %23 = load %struct.init_command*, %struct.init_command** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.init_command, %struct.init_command* %23, i64 %25
  %27 = getelementptr inbounds %struct.init_command, %struct.init_command* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sn9c2028_long_command(%struct.gspca_dev* %22, i32 %28)
  store i32 %29, i32* %9, align 4
  br label %48

30:                                               ; preds = %14
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %32 = load %struct.init_command*, %struct.init_command** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.init_command, %struct.init_command* %32, i64 %34
  %36 = getelementptr inbounds %struct.init_command, %struct.init_command* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @sn9c2028_short_command(%struct.gspca_dev* %31, i32 %37)
  store i32 %38, i32* %9, align 4
  br label %48

39:                                               ; preds = %14
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %41 = load %struct.init_command*, %struct.init_command** %6, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.init_command, %struct.init_command* %41, i64 %43
  %45 = getelementptr inbounds %struct.init_command, %struct.init_command* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sn9c2028_command(%struct.gspca_dev* %40, i32 %46)
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %14, %39, %30, %21
  %49 = load i32, i32* %9, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %4, align 4
  br label %58

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %10

57:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %51
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @sn9c2028_long_command(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sn9c2028_short_command(%struct.gspca_dev*, i32) #1

declare dso_local i32 @sn9c2028_command(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
