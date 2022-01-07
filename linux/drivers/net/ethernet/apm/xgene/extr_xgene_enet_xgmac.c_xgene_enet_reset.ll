; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_enet_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_xgmac.c_xgene_enet_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*)* @xgene_enet_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_reset(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  %5 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %6 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %10 = call i32 @xgene_ring_mgr_init(%struct.xgene_enet_pdata* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %15
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_prepare_enable(i32 %23)
  %25 = call i32 @udelay(i32 5)
  %26 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %27 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_disable_unprepare(i32 %28)
  %30 = call i32 @udelay(i32 5)
  %31 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %32 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @clk_prepare_enable(i32 %33)
  %35 = call i32 @udelay(i32 5)
  br label %37

36:                                               ; preds = %15
  br label %37

37:                                               ; preds = %36, %20
  %38 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %39 = call i32 @xgene_enet_ecc_init(%struct.xgene_enet_pdata* %38)
  %40 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %41 = call i32 @xgene_enet_config_ring_if_assoc(%struct.xgene_enet_pdata* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @xgene_ring_mgr_init(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @xgene_enet_ecc_init(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_config_ring_if_assoc(%struct.xgene_enet_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
