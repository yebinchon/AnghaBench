; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i64 }

@SEC_IPC_INPUT_DOORBELL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"wait for aliveness settle failed ... bailing out\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"wait for aliveness failed ... bailing out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, i32)* @mei_txe_hw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_hw_reset(%struct.mei_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mei_txe_hw*, align 8
  %7 = alloca i64, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %9 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %8)
  store %struct.mei_txe_hw* %9, %struct.mei_txe_hw** %6, align 8
  %10 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %11 = load i32, i32* @SEC_IPC_INPUT_DOORBELL_REG, align 4
  %12 = call i32 @mei_txe_sec_reg_read_silent(%struct.mei_txe_hw* %10, i32 %11)
  %13 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %14 = call i64 @mei_txe_aliveness_req_get(%struct.mei_device* %13)
  store i64 %14, i64* %7, align 8
  %15 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %16 = call i64 @mei_txe_aliveness_get(%struct.mei_device* %15)
  %17 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %18 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %20 = call i32 @mei_txe_intr_disable(%struct.mei_device* %19)
  %21 = load i64, i64* %7, align 8
  %22 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %6, align 8
  %23 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %2
  %27 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @mei_txe_aliveness_poll(%struct.mei_device* %27, i64 %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %33 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %59

38:                                               ; preds = %26
  br label %39

39:                                               ; preds = %38, %2
  %40 = load i64, i64* %7, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %39
  %43 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %44 = call i32 @mei_txe_aliveness_set(%struct.mei_device* %43, i32 0)
  %45 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %46 = call i64 @mei_txe_aliveness_poll(%struct.mei_device* %45, i64 0)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %42
  %49 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %50 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %39
  %57 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %58 = call i32 @mei_txe_readiness_clear(%struct.mei_device* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %48, %31
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_sec_reg_read_silent(%struct.mei_txe_hw*, i32) #1

declare dso_local i64 @mei_txe_aliveness_req_get(%struct.mei_device*) #1

declare dso_local i64 @mei_txe_aliveness_get(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_intr_disable(%struct.mei_device*) #1

declare dso_local i64 @mei_txe_aliveness_poll(%struct.mei_device*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mei_txe_aliveness_set(%struct.mei_device*, i32) #1

declare dso_local i32 @mei_txe_readiness_clear(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
