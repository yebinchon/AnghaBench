; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-2ph-1-0.c_csiphy_lanes_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-csiphy-2ph-1-0.c_csiphy_lanes_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csiphy_device = type { i64 }
%struct.csiphy_config = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.csiphy_lanes_cfg }
%struct.csiphy_lanes_cfg = type { i32, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAMSS_CSI_PHY_GLBL_PWR_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csiphy_device*, %struct.csiphy_config*)* @csiphy_lanes_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_lanes_disable(%struct.csiphy_device* %0, %struct.csiphy_config* %1) #0 {
  %3 = alloca %struct.csiphy_device*, align 8
  %4 = alloca %struct.csiphy_config*, align 8
  %5 = alloca %struct.csiphy_lanes_cfg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.csiphy_device* %0, %struct.csiphy_device** %3, align 8
  store %struct.csiphy_config* %1, %struct.csiphy_config** %4, align 8
  %8 = load %struct.csiphy_config*, %struct.csiphy_config** %4, align 8
  %9 = getelementptr inbounds %struct.csiphy_config, %struct.csiphy_config* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.csiphy_lanes_cfg* %11, %struct.csiphy_lanes_cfg** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %46, %2
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %5, align 8
  %15 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sle i32 %13, %16
  br i1 %17, label %18, label %49

18:                                               ; preds = %12
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %19, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %5, align 8
  %26 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %6, align 4
  br label %38

29:                                               ; preds = %18
  %30 = load %struct.csiphy_lanes_cfg*, %struct.csiphy_lanes_cfg** %5, align 8
  %31 = getelementptr inbounds %struct.csiphy_lanes_cfg, %struct.csiphy_lanes_cfg* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %29, %24
  %39 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %40 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @CAMSS_CSI_PHY_LNn_CFG2(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel_relaxed(i32 0, i64 %44)
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %12

49:                                               ; preds = %12
  %50 = load %struct.csiphy_device*, %struct.csiphy_device** %3, align 8
  %51 = getelementptr inbounds %struct.csiphy_device, %struct.csiphy_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CAMSS_CSI_PHY_GLBL_PWR_CFG, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 0, i64 %54)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i64 @CAMSS_CSI_PHY_LNn_CFG2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
