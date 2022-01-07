; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_ethtool.c_be_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.be_adapter = type { i32, %struct.be_aic_obj* }
%struct.be_aic_obj = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @be_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.be_adapter*, align 8
  %6 = alloca %struct.be_aic_obj*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.be_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.be_adapter* %8, %struct.be_adapter** %5, align 8
  %9 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %9, i32 0, i32 1
  %11 = load %struct.be_aic_obj*, %struct.be_aic_obj** %10, align 8
  %12 = getelementptr inbounds %struct.be_aic_obj, %struct.be_aic_obj* %11, i64 0
  store %struct.be_aic_obj* %12, %struct.be_aic_obj** %6, align 8
  %13 = load %struct.be_aic_obj*, %struct.be_aic_obj** %6, align 8
  %14 = getelementptr inbounds %struct.be_aic_obj, %struct.be_aic_obj* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 7
  store i32 %15, i32* %17, align 4
  %18 = load %struct.be_aic_obj*, %struct.be_aic_obj** %6, align 8
  %19 = getelementptr inbounds %struct.be_aic_obj, %struct.be_aic_obj* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 4
  %23 = load %struct.be_aic_obj*, %struct.be_aic_obj** %6, align 8
  %24 = getelementptr inbounds %struct.be_aic_obj, %struct.be_aic_obj* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 5
  store i32 %25, i32* %27, align 4
  %28 = load %struct.be_aic_obj*, %struct.be_aic_obj** %6, align 8
  %29 = getelementptr inbounds %struct.be_aic_obj, %struct.be_aic_obj* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 4
  %33 = load %struct.be_aic_obj*, %struct.be_aic_obj** %6, align 8
  %34 = getelementptr inbounds %struct.be_aic_obj, %struct.be_aic_obj* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.be_aic_obj*, %struct.be_aic_obj** %6, align 8
  %39 = getelementptr inbounds %struct.be_aic_obj, %struct.be_aic_obj* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 4
  %43 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %44 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.be_adapter*, %struct.be_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  ret i32 0
}

declare dso_local %struct.be_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
