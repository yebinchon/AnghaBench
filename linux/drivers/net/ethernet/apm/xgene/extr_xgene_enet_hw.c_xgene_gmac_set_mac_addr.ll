; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_gmac_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_gmac_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@STATION_ADDR0_ADDR = common dso_local global i32 0, align 4
@STATION_ADDR1_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_gmac_set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_gmac_set_mac_addr(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %6 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %7 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 3
  %13 = load i32, i32* %12, align 4
  %14 = shl i32 %13, 24
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 16
  %19 = or i32 %14, %18
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = or i32 %19, %23
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %24, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 5
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 24
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 16
  %37 = or i32 %32, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %39 = load i32, i32* @STATION_ADDR0_ADDR, align 4
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %38, i32 %39, i32 %40)
  %42 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %43 = load i32, i32* @STATION_ADDR1_ADDR, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @xgene_enet_wr_mac(%struct.xgene_enet_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
