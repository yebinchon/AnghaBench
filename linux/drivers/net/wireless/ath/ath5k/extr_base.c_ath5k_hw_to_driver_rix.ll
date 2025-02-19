; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_hw_to_driver_rix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath5k/extr_base.c_ath5k_hw_to_driver_rix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath5k_hw = type { i32**, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@AR5K_MAX_RATES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"hw_rix out of bounds: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"invalid hw_rix: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath5k_hw*, i32)* @ath5k_hw_to_driver_rix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath5k_hw_to_driver_rix(%struct.ath5k_hw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath5k_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ath5k_hw* %0, %struct.ath5k_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AR5K_MAX_RATES, align 4
  %12 = icmp sge i32 %10, %11
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i1 [ true, %2 ], [ %12, %9 ]
  %15 = zext i1 %14 to i32
  %16 = load i32, i32* %5, align 4
  %17 = call i64 @WARN(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %44

20:                                               ; preds = %13
  %21 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %22 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load %struct.ath5k_hw*, %struct.ath5k_hw** %4, align 8
  %25 = getelementptr inbounds %struct.ath5k_hw, %struct.ath5k_hw* %24, i32 0, i32 1
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32*, i32** %23, i64 %28
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp slt i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %5, align 4
  %39 = call i64 @WARN(i32 %37, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %20
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
