; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_setup_qtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sunplus.c_setup_qtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, [64 x i32]*)* @setup_qtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_qtable(%struct.gspca_dev* %0, [64 x i32]* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca [64 x i32]*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store [64 x i32]* %1, [64 x i32]** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 64
  br i1 %8, label %9, label %23

9:                                                ; preds = %6
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = add nsw i32 10240, %11
  %13 = load [64 x i32]*, [64 x i32]** %4, align 8
  %14 = getelementptr inbounds [64 x i32], [64 x i32]* %13, i64 0
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [64 x i32], [64 x i32]* %14, i64 0, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @reg_w_riv(%struct.gspca_dev* %10, i32 0, i32 %12, i32 %18)
  br label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %5, align 4
  br label %6

23:                                               ; preds = %6
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %41

27:                                               ; preds = %24
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 10304, %29
  %31 = load [64 x i32]*, [64 x i32]** %4, align 8
  %32 = getelementptr inbounds [64 x i32], [64 x i32]* %31, i64 1
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %32, i64 0, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @reg_w_riv(%struct.gspca_dev* %28, i32 0, i32 %30, i32 %36)
  br label %38

38:                                               ; preds = %27
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %24

41:                                               ; preds = %24
  ret void
}

declare dso_local i32 @reg_w_riv(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
