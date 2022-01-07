; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_input_ready_interrupt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_hw-txe.c_mei_txe_input_ready_interrupt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_txe_hw = type { i32 }

@SEC_IPC_HOST_INT_MASK_REG = common dso_local global i32 0, align 4
@SEC_IPC_HOST_INT_MASK_IN_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mei_device*)* @mei_txe_input_ready_interrupt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mei_txe_input_ready_interrupt_enable(%struct.mei_device* %0) #0 {
  %2 = alloca %struct.mei_device*, align 8
  %3 = alloca %struct.mei_txe_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %2, align 8
  %5 = load %struct.mei_device*, %struct.mei_device** %2, align 8
  %6 = call %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device* %5)
  store %struct.mei_txe_hw* %6, %struct.mei_txe_hw** %3, align 8
  %7 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %3, align 8
  %8 = load i32, i32* @SEC_IPC_HOST_INT_MASK_REG, align 4
  %9 = call i32 @mei_txe_sec_reg_read(%struct.mei_txe_hw* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @SEC_IPC_HOST_INT_MASK_IN_RDY, align 4
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.mei_txe_hw*, %struct.mei_txe_hw** %3, align 8
  %14 = load i32, i32* @SEC_IPC_HOST_INT_MASK_REG, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @mei_txe_sec_reg_write(%struct.mei_txe_hw* %13, i32 %14, i32 %15)
  ret void
}

declare dso_local %struct.mei_txe_hw* @to_txe_hw(%struct.mei_device*) #1

declare dso_local i32 @mei_txe_sec_reg_read(%struct.mei_txe_hw*, i32) #1

declare dso_local i32 @mei_txe_sec_reg_write(%struct.mei_txe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
