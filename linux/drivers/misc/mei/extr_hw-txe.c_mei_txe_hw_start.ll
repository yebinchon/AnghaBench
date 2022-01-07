; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_hw_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_hw_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"waiting for readiness failed\0A\00", align 1
@HISR_REG = common dso_local global i32 0, align 4
@HISR_INT_2_STS = common dso_local global i32 0, align 4
@TXE_INTR_OUT_DB_BIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"wait for aliveness failed ... bailing out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*)* @mei_txe_hw_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_txe_hw_start(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca %struct.mei_txe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %7 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %8 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %7)
  store %struct.mei_txe_hw* %8, %struct.mei_txe_hw** %4, align 8
  %9 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %10 = call i32 @mei_txe_intr_enable(%struct.mei_device* %9)
  %11 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %12 = call i32 @mei_txe_readiness_wait(%struct.mei_device* %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %17 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %60

21:                                               ; preds = %1
  %22 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %4, align 8
  %23 = load i32, i32* @HISR_REG, align 4
  %24 = call i32 @mei_txe_br_reg_read(%struct.mei_txe_hw* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @HISR_INT_2_STS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %4, align 8
  %31 = load i32, i32* @HISR_REG, align 4
  %32 = load i32, i32* @HISR_INT_2_STS, align 4
  %33 = call i32 @mei_txe_br_reg_write(%struct.mei_txe_hw* %30, i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %29, %21
  %35 = load i32, i32* @TXE_INTR_OUT_DB_BIT, align 4
  %36 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %4, align 8
  %37 = getelementptr inbounds %struct.mei_txe_hw, %struct.mei_txe_hw* %36, i32 0, i32 0
  %38 = call i32 @clear_bit(i32 %35, i32* %37)
  %39 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %40 = call i32 @mei_txe_aliveness_set_sync(%struct.mei_device* %39, i32 1)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %45 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dev_err(i32 %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %60

49:                                               ; preds = %34
  %50 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %51 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @pm_runtime_set_active(i32 %52)
  %54 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %55 = call i32 @mei_txe_input_ready_interrupt_enable(%struct.mei_device* %54)
  %56 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %4, align 8
  %57 = call i32 @mei_txe_output_ready_set(%struct.mei_txe_hw* %56)
  %58 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %59 = call i32 @mei_txe_readiness_set_host_rdy(%struct.mei_device* %58)
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %49, %43, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_intr_enable(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_readiness_wait(%struct.mei_device*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mei_txe_br_reg_read(%struct.mei_txe_hw*, i32) #1

declare dso_local i32 @mei_txe_br_reg_write(%struct.mei_txe_hw*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @mei_txe_aliveness_set_sync(%struct.mei_device*, i32) #1

declare dso_local i32 @pm_runtime_set_active(i32) #1

declare dso_local i32 @mei_txe_input_ready_interrupt_enable(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_output_ready_set(%struct.mei_txe_hw*) #1

declare dso_local i32 @mei_txe_readiness_set_host_rdy(%struct.mei_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
