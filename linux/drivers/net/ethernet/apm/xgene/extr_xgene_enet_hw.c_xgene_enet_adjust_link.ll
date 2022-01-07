; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64 }
%struct.xgene_enet_pdata = type { i64, %struct.xgene_mac_ops* }
%struct.xgene_mac_ops = type { i32 (%struct.xgene_enet_pdata.0*)*, i32 (%struct.xgene_enet_pdata.1*)*, i32 (%struct.xgene_enet_pdata.2*)*, i32 (%struct.xgene_enet_pdata.3*)*, i32 (%struct.xgene_enet_pdata.4*)* }
%struct.xgene_enet_pdata.0 = type opaque
%struct.xgene_enet_pdata.1 = type opaque
%struct.xgene_enet_pdata.2 = type opaque
%struct.xgene_enet_pdata.3 = type opaque
%struct.xgene_enet_pdata.4 = type opaque

@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @xgene_enet_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.xgene_mac_ops*, align 8
  %5 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %6)
  store %struct.xgene_enet_pdata* %7, %struct.xgene_enet_pdata** %3, align 8
  %8 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %8, i32 0, i32 1
  %10 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %9, align 8
  store %struct.xgene_mac_ops* %10, %struct.xgene_mac_ops** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %5, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %55

18:                                               ; preds = %1
  %19 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %20 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %21, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %18
  %27 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %28 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %4, align 8
  %33 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %32, i32 0, i32 4
  %34 = load i32 (%struct.xgene_enet_pdata.4*)*, i32 (%struct.xgene_enet_pdata.4*)** %33, align 8
  %35 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %36 = bitcast %struct.xgene_enet_pdata* %35 to %struct.xgene_enet_pdata.4*
  %37 = call i32 %34(%struct.xgene_enet_pdata.4* %36)
  %38 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %4, align 8
  %39 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %38, i32 0, i32 3
  %40 = load i32 (%struct.xgene_enet_pdata.3*)*, i32 (%struct.xgene_enet_pdata.3*)** %39, align 8
  %41 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %42 = bitcast %struct.xgene_enet_pdata* %41 to %struct.xgene_enet_pdata.3*
  %43 = call i32 %40(%struct.xgene_enet_pdata.3* %42)
  %44 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %4, align 8
  %45 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %44, i32 0, i32 2
  %46 = load i32 (%struct.xgene_enet_pdata.2*)*, i32 (%struct.xgene_enet_pdata.2*)** %45, align 8
  %47 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %48 = bitcast %struct.xgene_enet_pdata* %47 to %struct.xgene_enet_pdata.2*
  %49 = call i32 %46(%struct.xgene_enet_pdata.2* %48)
  %50 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %51 = call i32 @phy_print_status(%struct.phy_device* %50)
  br label %52

52:                                               ; preds = %26, %18
  %53 = load %struct.net_device*, %struct.net_device** %2, align 8
  %54 = call i32 @xgene_enet_flowctrl_cfg(%struct.net_device* %53)
  br label %73

55:                                               ; preds = %1
  %56 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %4, align 8
  %57 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %56, i32 0, i32 1
  %58 = load i32 (%struct.xgene_enet_pdata.1*)*, i32 (%struct.xgene_enet_pdata.1*)** %57, align 8
  %59 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %60 = bitcast %struct.xgene_enet_pdata* %59 to %struct.xgene_enet_pdata.1*
  %61 = call i32 %58(%struct.xgene_enet_pdata.1* %60)
  %62 = load %struct.xgene_mac_ops*, %struct.xgene_mac_ops** %4, align 8
  %63 = getelementptr inbounds %struct.xgene_mac_ops, %struct.xgene_mac_ops* %62, i32 0, i32 0
  %64 = load i32 (%struct.xgene_enet_pdata.0*)*, i32 (%struct.xgene_enet_pdata.0*)** %63, align 8
  %65 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %66 = bitcast %struct.xgene_enet_pdata* %65 to %struct.xgene_enet_pdata.0*
  %67 = call i32 %64(%struct.xgene_enet_pdata.0* %66)
  %68 = load i64, i64* @SPEED_UNKNOWN, align 8
  %69 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %70 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %72 = call i32 @phy_print_status(%struct.phy_device* %71)
  br label %73

73:                                               ; preds = %55, %52
  ret void
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

declare dso_local i32 @xgene_enet_flowctrl_cfg(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
