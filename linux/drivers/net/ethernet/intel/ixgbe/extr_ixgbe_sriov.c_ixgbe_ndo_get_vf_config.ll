; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_info = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.ixgbe_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_ndo_get_vf_config(%struct.net_device* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %9)
  store %struct.ixgbe_adapter* %10, %struct.ixgbe_adapter** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %97

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %22 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %24 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %23, i32 0, i32 8
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i32* %24, i32 %32, i32 %33)
  %35 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %36 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %44 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %46 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %48 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %56 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %55, i32 0, i32 5
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %58 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %66 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %65, i32 0, i32 4
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %68 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %76 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %75, i32 0, i32 3
  store i32 %74, i32* %76, align 4
  %77 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %78 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %86 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %8, align 8
  %88 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %96 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %95, i32 0, i32 1
  store i32 %94, i32* %96, align 4
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %19, %16
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
