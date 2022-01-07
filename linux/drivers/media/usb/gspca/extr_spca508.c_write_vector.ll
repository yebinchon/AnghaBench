; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca508.c_write_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca508.c_write_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, [2 x i32]*)* @write_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vector(%struct.gspca_dev* %0, [2 x i32]* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca [2 x i32]*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store [2 x i32]* %1, [2 x i32]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %50, %2
  %7 = load [2 x i32]*, [2 x i32]** %4, align 8
  %8 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %53

11:                                               ; preds = %6
  %12 = load [2 x i32]*, [2 x i32]** %4, align 8
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 1
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 32768
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %11
  %18 = load [2 x i32]*, [2 x i32]** %4, align 8
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 56576
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load [2 x i32]*, [2 x i32]** %4, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %23, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @msleep(i32 %25)
  br label %36

27:                                               ; preds = %17
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load [2 x i32]*, [2 x i32]** %4, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %29, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = load [2 x i32]*, [2 x i32]** %4, align 8
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i64 0, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @reg_write(%struct.gspca_dev* %28, i32 %31, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %27, %22
  br label %46

37:                                               ; preds = %11
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %39 = load [2 x i32]*, [2 x i32]** %4, align 8
  %40 = getelementptr inbounds [2 x i32], [2 x i32]* %39, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = load [2 x i32]*, [2 x i32]** %4, align 8
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @ssi_w(%struct.gspca_dev* %38, i32 %41, i32 %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %37, %36
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  br label %53

50:                                               ; preds = %46
  %51 = load [2 x i32]*, [2 x i32]** %4, align 8
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i32 1
  store [2 x i32]* %52, [2 x i32]** %4, align 8
  br label %6

53:                                               ; preds = %49, %6
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_write(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @ssi_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
