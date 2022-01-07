; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_dis_ctrlq_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_dis_ctrlq_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }

@PFINT_FW_CTL = common dso_local global i32 0, align 4
@PFINT_FW_CTL_CAUSE_ENA_M = common dso_local global i32 0, align 4
@PFINT_MBX_CTL = common dso_local global i32 0, align 4
@PFINT_MBX_CTL_CAUSE_ENA_M = common dso_local global i32 0, align 4
@PFINT_OICR_CTL = common dso_local global i32 0, align 4
@PFINT_OICR_CTL_CAUSE_ENA_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_hw*)* @ice_dis_ctrlq_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_dis_ctrlq_interrupts(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  %3 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %4 = load i32, i32* @PFINT_FW_CTL, align 4
  %5 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %6 = load i32, i32* @PFINT_FW_CTL, align 4
  %7 = call i32 @rd32(%struct.ice_hw* %5, i32 %6)
  %8 = load i32, i32* @PFINT_FW_CTL_CAUSE_ENA_M, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = call i32 @wr32(%struct.ice_hw* %3, i32 %4, i32 %10)
  %12 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %13 = load i32, i32* @PFINT_MBX_CTL, align 4
  %14 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %15 = load i32, i32* @PFINT_MBX_CTL, align 4
  %16 = call i32 @rd32(%struct.ice_hw* %14, i32 %15)
  %17 = load i32, i32* @PFINT_MBX_CTL_CAUSE_ENA_M, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @wr32(%struct.ice_hw* %12, i32 %13, i32 %19)
  %21 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %22 = load i32, i32* @PFINT_OICR_CTL, align 4
  %23 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %24 = load i32, i32* @PFINT_OICR_CTL, align 4
  %25 = call i32 @rd32(%struct.ice_hw* %23, i32 %24)
  %26 = load i32, i32* @PFINT_OICR_CTL_CAUSE_ENA_M, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = call i32 @wr32(%struct.ice_hw* %21, i32 %22, i32 %28)
  %30 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %31 = call i32 @ice_flush(%struct.ice_hw* %30)
  ret void
}

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
