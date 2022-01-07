; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-2ph-1-0.c_csiphy_lanes_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-2ph-1-0.c_csiphy_lanes_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { i64, i32 }
%struct.csiphy_config = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.csiphy_lanes_cfg }
%struct.csiphy_lanes_cfg = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@CAMSS_CSI_PHY_GLBL_T_INIT_CFG0 = common dso_local global i64 0, align 8
@CAMSS_CSI_PHY_T_WAKEUP_CFG0 = common dso_local global i64 0, align 8
@CAMSS_CSI_PHY_GLBL_PWR_CFG = common dso_local global i64 0, align 8
@CAMSS_CSI_PHY_GLBL_RESET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csiphy_device*, %struct.csiphy_config*, i32, i32, i32)* @csiphy_lanes_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_lanes_enable(%struct.csiphy_device* %0, %struct.csiphy_config* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.csiphy_device*, align 8
  %7 = alloca %struct.csiphy_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.csiphy_lanes_cfg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.csiphy_device* %0, %struct.csiphy_device** %6, align 8
  store %struct.csiphy_config* %1, %struct.csiphy_config** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %16 = load %struct.csiphy_config*, %struct.csiphy_config** %7, align 8
  %17 = getelementptr inbounds %struct.csiphy_config, %struct.csiphy_config* %16, i32 0, i32 1
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  store %struct.csiphy_lanes_cfg* %19, %struct.csiphy_lanes_cfg** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %23 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %26 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @csiphy_settle_cnt_calc(i32 %20, i32 %21, i32 %24, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %30 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @CAMSS_CSI_PHY_GLBL_T_INIT_CFG0, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 1, i64 %33)
  %35 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %36 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CAMSS_CSI_PHY_T_WAKEUP_CFG0, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @writel_relaxed(i32 1, i64 %39)
  store i32 1, i32* %13, align 4
  %41 = load i32, i32* %10, align 4
  %42 = shl i32 %41, 1
  %43 = load i32, i32* %13, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %47 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @CAMSS_CSI_PHY_GLBL_PWR_CFG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel_relaxed(i32 %45, i64 %50)
  %52 = load %struct.csiphy_config*, %struct.csiphy_config** %7, align 8
  %53 = getelementptr inbounds %struct.csiphy_config, %struct.csiphy_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = shl i32 %54, 4
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %58 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CAMSS_CSI_PHY_GLBL_RESET, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i32 %56, i64 %61)
  store i32 0, i32* %15, align 4
  br label %63

63:                                               ; preds = %119, %5
  %64 = load i32, i32* %15, align 4
  %65 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %66 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sle i32 %64, %67
  br i1 %68, label %69, label %122

69:                                               ; preds = %63
  %70 = load i32, i32* %15, align 4
  %71 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %72 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %69
  %76 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %77 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  store i32 %79, i32* %14, align 4
  br label %89

80:                                               ; preds = %69
  %81 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %11, align 8
  %82 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %81, i32 0, i32 1
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = load i32, i32* %15, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %80, %75
  %90 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %91 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %14, align 4
  %94 = call i64 @CAMSS_CSI_PHY_LNn_CFG2(i32 %93)
  %95 = add nsw i64 %92, %94
  %96 = call i32 @writel_relaxed(i32 16, i64 %95)
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %99 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* %14, align 4
  %102 = call i64 @CAMSS_CSI_PHY_LNn_CFG3(i32 %101)
  %103 = add nsw i64 %100, %102
  %104 = call i32 @writel_relaxed(i32 %97, i64 %103)
  %105 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %106 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = call i64 @CAMSS_CSI_PHY_INTERRUPT_MASKn(i32 %108)
  %110 = add nsw i64 %107, %109
  %111 = call i32 @writel_relaxed(i32 63, i64 %110)
  %112 = load %struct.csiphy_device*, %struct.csiphy_device** %6, align 8
  %113 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = call i64 @CAMSS_CSI_PHY_INTERRUPT_CLEARn(i32 %115)
  %117 = add nsw i64 %114, %116
  %118 = call i32 @writel_relaxed(i32 63, i64 %117)
  br label %119

119:                                              ; preds = %89
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %63

122:                                              ; preds = %63
  ret void
}

declare dso_local i32 @csiphy_settle_cnt_calc(i32, i32, i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @CAMSS_CSI_PHY_LNn_CFG2(i32) #1

declare dso_local i64 @CAMSS_CSI_PHY_LNn_CFG3(i32) #1

declare dso_local i64 @CAMSS_CSI_PHY_INTERRUPT_MASKn(i32) #1

declare dso_local i64 @CAMSS_CSI_PHY_INTERRUPT_CLEARn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
