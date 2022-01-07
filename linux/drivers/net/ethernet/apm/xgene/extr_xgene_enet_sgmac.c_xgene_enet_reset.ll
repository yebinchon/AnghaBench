; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_sgmac.c_xgene_enet_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i64, i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i64 }

@ENODEV = common dso_local global i32 0, align 4
@XGENE_ENET2 = common dso_local global i64 0, align 8
@XGENET_CONFIG_REG_ADDR = common dso_local global i32 0, align 4
@SGMII_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*)* @xgene_enet_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_reset(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  %5 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %6 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %5, i32 0, i32 2
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
  br label %80

15:                                               ; preds = %1
  %16 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %17 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %22 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XGENE_ENET2, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %28 = call i32 @xgene_enet_config_ring_if_assoc(%struct.xgene_enet_pdata* %27)
  store i32 0, i32* %2, align 4
  br label %80

29:                                               ; preds = %20, %15
  %30 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XGENE_ENET2, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %37 = load i32, i32* @XGENET_CONFIG_REG_ADDR, align 4
  %38 = load i32, i32* @SGMII_EN, align 4
  %39 = call i32 @xgene_enet_wr_clkrst_csr(%struct.xgene_enet_pdata* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %29
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = getelementptr inbounds %struct.device, %struct.device* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %47 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @IS_ERR(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %67, label %51

51:                                               ; preds = %45
  %52 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %53 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @clk_prepare_enable(i32 %54)
  %56 = call i32 @udelay(i32 5)
  %57 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %58 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @clk_disable_unprepare(i32 %59)
  %61 = call i32 @udelay(i32 5)
  %62 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %63 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @clk_prepare_enable(i32 %64)
  %66 = call i32 @udelay(i32 5)
  br label %67

67:                                               ; preds = %51, %45
  br label %69

68:                                               ; preds = %40
  br label %69

69:                                               ; preds = %68, %67
  %70 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %71 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  %75 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %76 = call i32 @xgene_enet_ecc_init(%struct.xgene_enet_pdata* %75)
  %77 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %78 = call i32 @xgene_enet_config_ring_if_assoc(%struct.xgene_enet_pdata* %77)
  br label %79

79:                                               ; preds = %74, %69
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %79, %26, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @xgene_ring_mgr_init(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_config_ring_if_assoc(%struct.xgene_enet_pdata*) #1

declare dso_local i32 @xgene_enet_wr_clkrst_csr(%struct.xgene_enet_pdata*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

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
