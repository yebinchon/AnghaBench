; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_eeprom_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_eeprom_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@I40E_MAC_X722 = common dso_local global i64 0, align 8
@I40E_GLPCI_LBARCTRL = common dso_local global i32 0, align 4
@I40E_GLPCI_LBARCTRL_FL_SIZE_MASK = common dso_local global i32 0, align 4
@I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT = common dso_local global i32 0, align 4
@X722_EEPROM_SCOPE_LIMIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @i40e_get_eeprom_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_eeprom_len(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i40e_netdev_priv*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.i40e_netdev_priv* %8, %struct.i40e_netdev_priv** %4, align 8
  %9 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %4, align 8
  %10 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  store %struct.i40e_hw* %14, %struct.i40e_hw** %5, align 8
  %15 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %16 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @I40E_MAC_X722, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  store i32 6004736, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %2, align 4
  br label %35

23:                                               ; preds = %1
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %25 = load i32, i32* @I40E_GLPCI_LBARCTRL, align 4
  %26 = call i32 @rd32(%struct.i40e_hw* %24, i32 %25)
  %27 = load i32, i32* @I40E_GLPCI_LBARCTRL_FL_SIZE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @I40E_GLPCI_LBARCTRL_FL_SIZE_SHIFT, align 4
  %30 = ashr i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = mul nsw i32 65536, %32
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %23, %21
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
