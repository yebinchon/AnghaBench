; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_devices.c_iwl6000_nic_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_devices.c_iwl6000_nic_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@CSR_GP_DRIVER_REG = common dso_local global i32 0, align 4
@CSR_GP_DRIVER_REG_BIT_RADIO_SKU_2x2_IPA = common dso_local global i32 0, align 4
@CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6 = common dso_local global i32 0, align 4
@CSR_GP_DRIVER_REG_BIT_6050_1x2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl6000_nic_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl6000_nic_config(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %3, i32 0, i32 0
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %54 [
    i32 131, label %10
    i32 130, label %10
    i32 133, label %10
    i32 132, label %11
    i32 129, label %18
    i32 128, label %33
  ]

10:                                               ; preds = %1, %1, %1
  br label %56

11:                                               ; preds = %1
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = load i32, i32* @CSR_GP_DRIVER_REG, align 4
  %16 = load i32, i32* @CSR_GP_DRIVER_REG_BIT_RADIO_SKU_2x2_IPA, align 4
  %17 = call i32 @iwl_write32(%struct.TYPE_7__* %14, i32 %15, i32 %16)
  br label %56

18:                                               ; preds = %1
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp sge i32 %23, 6
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %27 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load i32, i32* @CSR_GP_DRIVER_REG, align 4
  %30 = load i32, i32* @CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6, align 4
  %31 = call i32 @iwl_set_bit(%struct.TYPE_7__* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %25, %18
  br label %56

33:                                               ; preds = %1
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp sge i32 %38, 6
  br i1 %39, label %40, label %47

40:                                               ; preds = %33
  %41 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %42 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = load i32, i32* @CSR_GP_DRIVER_REG, align 4
  %45 = load i32, i32* @CSR_GP_DRIVER_REG_BIT_CALIB_VERSION6, align 4
  %46 = call i32 @iwl_set_bit(%struct.TYPE_7__* %43, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %33
  %48 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %49 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* @CSR_GP_DRIVER_REG, align 4
  %52 = load i32, i32* @CSR_GP_DRIVER_REG_BIT_6050_1x2, align 4
  %53 = call i32 @iwl_set_bit(%struct.TYPE_7__* %50, i32 %51, i32 %52)
  br label %56

54:                                               ; preds = %1
  %55 = call i32 @WARN_ON(i32 1)
  br label %56

56:                                               ; preds = %54, %47, %32, %11, %10
  ret void
}

declare dso_local i32 @iwl_write32(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @iwl_set_bit(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
