; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_routing_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_csiphy_routing_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csiphy = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@ISP_PHY_TYPE_3630 = common dso_local global i64 0, align 8
@ISP_PHY_TYPE_3430 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_csiphy*, i32, i32, i32)* @csiphy_routing_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csiphy_routing_cfg(%struct.isp_csiphy* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.isp_csiphy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.isp_csiphy* %0, %struct.isp_csiphy** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.isp_csiphy*, %struct.isp_csiphy** %5, align 8
  %10 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ISP_PHY_TYPE_3630, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.isp_csiphy*, %struct.isp_csiphy** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %8, align 4
  call void @csiphy_routing_cfg_3630(%struct.isp_csiphy* %20, i32 %21, i32 %22)
  br label %36

23:                                               ; preds = %16, %4
  %24 = load %struct.isp_csiphy*, %struct.isp_csiphy** %5, align 8
  %25 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ISP_PHY_TYPE_3430, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load %struct.isp_csiphy*, %struct.isp_csiphy** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %8, align 4
  call void @csiphy_routing_cfg_3430(%struct.isp_csiphy* %32, i32 %33, i32 %34, i32 %35)
  br label %36

36:                                               ; preds = %19, %31, %23
  ret void
}

declare dso_local void @csiphy_routing_cfg_3630(%struct.isp_csiphy*, i32, i32) #1

declare dso_local void @csiphy_routing_cfg_3430(%struct.isp_csiphy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
