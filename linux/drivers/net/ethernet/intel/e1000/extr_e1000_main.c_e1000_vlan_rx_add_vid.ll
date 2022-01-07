; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT = common dso_local global i32 0, align 4
@VFTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @e1000_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.e1000_adapter*, align 8
  %9 = alloca %struct.e1000_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.e1000_adapter* %13, %struct.e1000_adapter** %8, align 8
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %15 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %14, i32 0, i32 2
  store %struct.e1000_hw* %15, %struct.e1000_hw** %9, align 8
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %17 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %59

30:                                               ; preds = %23, %3
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %32 = call i32 @e1000_vlan_used(%struct.e1000_adapter* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %30
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %36 = call i32 @e1000_vlan_filter_on_off(%struct.e1000_adapter* %35, i32 1)
  br label %37

37:                                               ; preds = %34, %30
  %38 = load i32, i32* %7, align 4
  %39 = ashr i32 %38, 5
  %40 = and i32 %39, 127
  store i32 %40, i32* %11, align 4
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %42 = load i32, i32* @VFTA, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %41, i32 %42, i32 %43)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 31
  %47 = shl i32 1, %46
  %48 = load i32, i32* %10, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %10, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %9, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @e1000_write_vfta(%struct.e1000_hw* %50, i32 %51, i32 %52)
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %8, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @set_bit(i32 %54, i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %37, %29
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e1000_vlan_used(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_vlan_filter_on_off(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_write_vfta(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
