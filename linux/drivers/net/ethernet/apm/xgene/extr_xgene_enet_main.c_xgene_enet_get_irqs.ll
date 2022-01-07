; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_get_irqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_get_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i64, i32, i32, i32, i32*, %struct.platform_device* }
%struct.platform_device = type { i32 }

@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@XGENE_MAX_ENET_IRQ = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgene_enet_pdata*)* @xgene_enet_get_irqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgene_enet_get_irqs(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgene_enet_pdata*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %3, align 8
  %8 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %8, i32 0, i32 5
  %10 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  store %struct.platform_device* %10, %struct.platform_device** %4, align 8
  %11 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %12 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i64 @phy_interface_mode_is_rgmii(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %27

17:                                               ; preds = %1
  %18 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %19 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 2, i32* %7, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @XGENE_MAX_ENET_IRQ, align 4
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %24, %23
  br label %27

27:                                               ; preds = %26, %16
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %75, %27
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %78

32:                                               ; preds = %28
  %33 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @platform_get_irq(%struct.platform_device* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %67

38:                                               ; preds = %32
  %39 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %40 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %46, 2
  %48 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %49 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sdiv i32 %50, 2
  %52 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %53 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %7, align 4
  %55 = sdiv i32 %54, 2
  %56 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %57 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  br label %78

58:                                               ; preds = %38
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %65

62:                                               ; preds = %58
  %63 = load i32, i32* @ENXIO, align 4
  %64 = sub nsw i32 0, %63
  br label %65

65:                                               ; preds = %62, %61
  %66 = phi i32 [ %59, %61 ], [ %64, %62 ]
  store i32 %66, i32* %2, align 4
  br label %79

67:                                               ; preds = %32
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %3, align 8
  %70 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32 %68, i32* %74, align 4
  br label %75

75:                                               ; preds = %67
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %28

78:                                               ; preds = %44, %28
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %65
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i64 @phy_interface_mode_is_rgmii(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
