; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_check_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_check_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DLN2_HANDLE_CTRL = common dso_local global i32 0, align 4
@CMD_GET_DEVICE_VER = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@DLN2_HW_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Device ID 0x%x not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dln2_dev*)* @dln2_check_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dln2_check_hw(%struct.dln2_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dln2_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dln2_dev* %0, %struct.dln2_dev** %3, align 8
  store i32 4, i32* %6, align 4
  %7 = load %struct.dln2_dev*, %struct.dln2_dev** %3, align 8
  %8 = load i32, i32* @DLN2_HANDLE_CTRL, align 4
  %9 = load i32, i32* @CMD_GET_DEVICE_VER, align 4
  %10 = call i32 @_dln2_transfer(%struct.dln2_dev* %7, i32 %8, i32 %9, i32* null, i32 0, i32* %5, i32* %6)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 4
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* @EREMOTEIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %38

22:                                               ; preds = %15
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @le32_to_cpu(i32 %23)
  %25 = load i64, i64* @DLN2_HW_ID, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.dln2_dev*, %struct.dln2_dev** %3, align 8
  %29 = getelementptr inbounds %struct.dln2_dev, %struct.dln2_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @le32_to_cpu(i32 %32)
  %34 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %27, %19, %13
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @_dln2_transfer(%struct.dln2_dev*, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
