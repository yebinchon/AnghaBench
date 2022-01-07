; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_hw.c_xgene_enet_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { %struct.TYPE_2__*, i32, i64 }
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
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %22 = call i32 @xgene_enet_config_ring_if_assoc(%struct.xgene_enet_pdata* %21)
  store i32 0, i32* %2, align 4
  br label %50

23:                                               ; preds = %15
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %44

28:                                               ; preds = %23
  %29 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %30 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @clk_prepare_enable(i32 %31)
  %33 = call i32 @udelay(i32 5)
  %34 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %35 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_disable_unprepare(i32 %36)
  %38 = call i32 @udelay(i32 5)
  %39 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %40 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_prepare_enable(i32 %41)
  %43 = call i32 @udelay(i32 5)
  br label %45

44:                                               ; preds = %23
  br label %45

45:                                               ; preds = %44, %28
  %46 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %47 = call i32 @xgene_enet_ecc_init(%struct.xgene_enet_pdata* %46)
  %48 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %49 = call i32 @xgene_enet_config_ring_if_assoc(%struct.xgene_enet_pdata* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %45, %20, %12
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @xgene_ring_mgr_init(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_config_ring_if_assoc(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @xgene_enet_ecc_init(%struct.xgene_enet_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
