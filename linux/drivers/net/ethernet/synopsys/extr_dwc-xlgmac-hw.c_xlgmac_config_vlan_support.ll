; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_vlan_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_vlan_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@MAC_VLANIR = common dso_local global i64 0, align 8
@MAC_VLANIR_CSVL_POS = common dso_local global i32 0, align 4
@MAC_VLANIR_CSVL_LEN = common dso_local global i32 0, align 4
@MAC_VLANIR_VLTI_POS = common dso_local global i32 0, align 4
@MAC_VLANIR_VLTI_LEN = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_config_vlan_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_config_vlan_support(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %4 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %5 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @MAC_VLANIR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAC_VLANIR_CSVL_POS, align 4
  %12 = load i32, i32* @MAC_VLANIR_CSVL_LEN, align 4
  %13 = call i32 @XLGMAC_SET_REG_BITS(i32 %10, i32 %11, i32 %12, i32 0)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @MAC_VLANIR_VLTI_POS, align 4
  %16 = load i32, i32* @MAC_VLANIR_VLTI_LEN, align 4
  %17 = call i32 @XLGMAC_SET_REG_BITS(i32 %14, i32 %15, i32 %16, i32 1)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %20 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MAC_VLANIR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writel(i32 %18, i64 %23)
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %26 = call i32 @xlgmac_update_vlan_hash_table(%struct.xlgmac_pdata* %25)
  %27 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %28 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %1
  %36 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %37 = call i32 @xlgmac_enable_rx_vlan_filtering(%struct.xlgmac_pdata* %36)
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %40 = call i32 @xlgmac_disable_rx_vlan_filtering(%struct.xlgmac_pdata* %39)
  br label %41

41:                                               ; preds = %38, %35
  %42 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %43 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %52 = call i32 @xlgmac_enable_rx_vlan_stripping(%struct.xlgmac_pdata* %51)
  br label %56

53:                                               ; preds = %41
  %54 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %55 = call i32 @xlgmac_disable_rx_vlan_stripping(%struct.xlgmac_pdata* %54)
  br label %56

56:                                               ; preds = %53, %50
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @xlgmac_update_vlan_hash_table(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_enable_rx_vlan_filtering(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_disable_rx_vlan_filtering(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_enable_rx_vlan_stripping(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_disable_rx_vlan_stripping(%struct.xlgmac_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
