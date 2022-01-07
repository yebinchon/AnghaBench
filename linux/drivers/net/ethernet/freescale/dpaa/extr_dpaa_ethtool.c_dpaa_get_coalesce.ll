; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_ethtool.c_dpaa_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32 }
%struct.qman_portal = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @dpaa_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.qman_portal*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %8 = call i32 (...) @smp_processor_id()
  %9 = call %struct.qman_portal* @qman_get_affine_portal(i32 %8)
  store %struct.qman_portal* %9, %struct.qman_portal** %5, align 8
  %10 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %11 = call i32 @qman_portal_get_iperiod(%struct.qman_portal* %10, i32* %6)
  %12 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %13 = call i32 @qman_dqrr_get_ithresh(%struct.qman_portal* %12, i32* %7)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %16 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 0
  store i32 0, i32* %21, align 4
  ret i32 0
}

declare dso_local %struct.qman_portal* @qman_get_affine_portal(i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @qman_portal_get_iperiod(%struct.qman_portal*, i32*) #1

declare dso_local i32 @qman_dqrr_get_ithresh(%struct.qman_portal*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
