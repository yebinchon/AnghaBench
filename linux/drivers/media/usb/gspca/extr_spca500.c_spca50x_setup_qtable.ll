; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca500.c_spca50x_setup_qtable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_spca500.c_spca50x_setup_qtable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i32, i32, [64 x i32]*)* @spca50x_setup_qtable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spca50x_setup_qtable(%struct.gspca_dev* %0, i32 %1, i32 %2, i32 %3, [64 x i32]* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gspca_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [64 x i32]*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store [64 x i32]* %4, [64 x i32]** %11, align 8
  store i32 0, i32* %12, align 4
  br label %14

14:                                               ; preds = %35, %5
  %15 = load i32, i32* %12, align 4
  %16 = icmp slt i32 %15, 64
  br i1 %16, label %17, label %38

17:                                               ; preds = %14
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %12, align 4
  %22 = add i32 %20, %21
  %23 = load [64 x i32]*, [64 x i32]** %11, align 8
  %24 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [64 x i32], [64 x i32]* %24, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @reg_w(%struct.gspca_dev* %18, i32 %19, i32 %22, i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, i32* %13, align 4
  store i32 %33, i32* %6, align 4
  br label %64

34:                                               ; preds = %17
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %14

38:                                               ; preds = %14
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %60, %38
  %40 = load i32, i32* %12, align 4
  %41 = icmp slt i32 %40, 64
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* %12, align 4
  %47 = add i32 %45, %46
  %48 = load [64 x i32]*, [64 x i32]** %11, align 8
  %49 = getelementptr inbounds [64 x i32], [64 x i32]* %48, i64 1
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %49, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @reg_w(%struct.gspca_dev* %43, i32 %44, i32 %47, i32 %53)
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %42
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %6, align 4
  br label %64

59:                                               ; preds = %42
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %12, align 4
  br label %39

63:                                               ; preds = %39
  store i32 0, i32* %6, align 4
  br label %64

64:                                               ; preds = %63, %57, %32
  %65 = load i32, i32* %6, align 4
  ret i32 %65
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
