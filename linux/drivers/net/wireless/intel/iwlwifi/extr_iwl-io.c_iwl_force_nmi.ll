; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-io.c_iwl_force_nmi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-io.c_iwl_force_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@IWL_DEVICE_FAMILY_9000 = common dso_local global i64 0, align 8
@DEVICE_SET_NMI_REG = common dso_local global i32 0, align 4
@DEVICE_SET_NMI_VAL_DRV = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_AX210 = common dso_local global i64 0, align 8
@UREG_NIC_SET_NMI_DRIVER = common dso_local global i32 0, align 4
@UREG_NIC_SET_NMI_DRIVER_NMI_FROM_DRIVER_MSK = common dso_local global i32 0, align 4
@UREG_DOORBELL_TO_ISR6 = common dso_local global i32 0, align 4
@UREG_DOORBELL_TO_ISR6_NMI_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_force_nmi(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %3 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IWL_DEVICE_FAMILY_9000, align 8
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %12 = load i32, i32* @DEVICE_SET_NMI_REG, align 4
  %13 = load i32, i32* @DEVICE_SET_NMI_VAL_DRV, align 4
  %14 = call i32 @iwl_write_prph(%struct.iwl_trans* %11, i32 %12, i32 %13)
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @IWL_DEVICE_FAMILY_AX210, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %15
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %25 = load i32, i32* @UREG_NIC_SET_NMI_DRIVER, align 4
  %26 = load i32, i32* @UREG_NIC_SET_NMI_DRIVER_NMI_FROM_DRIVER_MSK, align 4
  %27 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %24, i32 %25, i32 %26)
  br label %33

28:                                               ; preds = %15
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %30 = load i32, i32* @UREG_DOORBELL_TO_ISR6, align 4
  %31 = load i32, i32* @UREG_DOORBELL_TO_ISR6_NMI_BIT, align 4
  %32 = call i32 @iwl_write_umac_prph(%struct.iwl_trans* %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %10
  ret void
}

declare dso_local i32 @iwl_write_prph(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_write_umac_prph(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
