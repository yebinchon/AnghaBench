; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_count_1g_ports.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_count_1g_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_probe_info = type { i32*, i32** }

@PHY_TYPE_MII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_probe_info*, i32*)* @count_1g_ports to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @count_1g_ports(%struct.phy_probe_info* %0, i32* %1) #0 {
  %3 = alloca %struct.phy_probe_info*, align 8
  %4 = alloca i32*, align 8
  store %struct.phy_probe_info* %0, %struct.phy_probe_info** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load i32*, i32** %4, align 8
  store i32 32, i32* %5, align 4
  %6 = load %struct.phy_probe_info*, %struct.phy_probe_info** %3, align 8
  %7 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i64, i64* @PHY_TYPE_MII, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %2
  %14 = load %struct.phy_probe_info*, %struct.phy_probe_info** %3, align 8
  %15 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %14, i32 0, i32 1
  %16 = load i32**, i32*** %15, align 8
  %17 = load i64, i64* @PHY_TYPE_MII, align 8
  %18 = getelementptr inbounds i32*, i32** %16, i64 %17
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %13, %2
  %24 = load %struct.phy_probe_info*, %struct.phy_probe_info** %3, align 8
  %25 = getelementptr inbounds %struct.phy_probe_info, %struct.phy_probe_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @PHY_TYPE_MII, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
