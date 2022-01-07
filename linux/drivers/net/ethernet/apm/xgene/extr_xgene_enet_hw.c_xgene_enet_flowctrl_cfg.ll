; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_flowctrl_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_flowctrl_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i32 }
%struct.xgene_enet_pdata = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.xgene_enet_pdata*, i8*)*, i32 (%struct.xgene_enet_pdata*, i8*)* }

@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@LPA_PAUSE_CAP = common dso_local global i32 0, align 4
@LPA_PAUSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.net_device*)* @xgene_enet_flowctrl_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xgene_enet_flowctrl_cfg(%struct.net_device* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.xgene_enet_pdata*, align 8
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device* %11)
  store %struct.xgene_enet_pdata* %12, %struct.xgene_enet_pdata** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.phy_device*, %struct.phy_device** %14, align 8
  store %struct.phy_device* %15, %struct.phy_device** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %1
  store i8* null, i8** %2, align 8
  br label %134

26:                                               ; preds = %20
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %28 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* @FLOW_CTRL_TX, align 4
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %31, %26
  %36 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %37 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @FLOW_CTRL_RX, align 4
  %42 = load i32, i32* %10, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %35
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @mii_advertise_flowctrl(i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @LPA_PAUSE_CAP, align 4
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %51, %44
  %54 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %55 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i32, i32* @LPA_PAUSE_ASYM, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %58, %53
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @mii_resolve_flowctrl_fdx(i32 %63, i32 %64)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @FLOW_CTRL_TX, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %9, align 8
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* @FLOW_CTRL_RX, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  store i8* %83, i8** %8, align 8
  %84 = load i8*, i8** %9, align 8
  %85 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %86 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = inttoptr i64 %88 to i8*
  %90 = icmp ne i8* %84, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %62
  %92 = load i8*, i8** %9, align 8
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %95 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %97 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %96, i32 0, i32 2
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 1
  %100 = load i32 (%struct.xgene_enet_pdata*, i8*)*, i32 (%struct.xgene_enet_pdata*, i8*)** %99, align 8
  %101 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %102 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %103 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = call i32 %100(%struct.xgene_enet_pdata* %101, i8* %106)
  br label %108

108:                                              ; preds = %91, %62
  %109 = load i8*, i8** %8, align 8
  %110 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %111 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = icmp ne i8* %109, %114
  br i1 %115, label %116, label %133

116:                                              ; preds = %108
  %117 = load i8*, i8** %8, align 8
  %118 = ptrtoint i8* %117 to i32
  %119 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %120 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %122 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %121, i32 0, i32 2
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (%struct.xgene_enet_pdata*, i8*)*, i32 (%struct.xgene_enet_pdata*, i8*)** %124, align 8
  %126 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %127 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %4, align 8
  %128 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = inttoptr i64 %130 to i8*
  %132 = call i32 %125(%struct.xgene_enet_pdata* %126, i8* %131)
  br label %133

133:                                              ; preds = %116, %108
  store i8* null, i8** %2, align 8
  br label %134

134:                                              ; preds = %133, %25
  %135 = load i8*, i8** %2, align 8
  ret i8* %135
}

declare dso_local %struct.xgene_enet_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mii_advertise_flowctrl(i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
