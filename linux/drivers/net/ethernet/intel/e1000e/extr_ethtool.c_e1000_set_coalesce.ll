; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ethtool_coalesce = type { i32 }
%struct.e1000_adapter = type { i32, i32 }

@E1000_MAX_ITR_USECS = common dso_local global i32 0, align 4
@E1000_MIN_ITR_USECS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @e1000_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.e1000_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.e1000_adapter* %8, %struct.e1000_adapter** %6, align 8
  %9 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @E1000_MAX_ITR_USECS, align 4
  %13 = icmp sgt i32 %11, %12
  br i1 %13, label %30, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sgt i32 %17, 4
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @E1000_MIN_ITR_USECS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %19, %14
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %25, %19, %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %98

33:                                               ; preds = %25
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 4
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %39, i32 0, i32 0
  store i32 4, i32* %40, align 4
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %45 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %73

46:                                               ; preds = %33
  %47 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sle i32 %49, 3
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %53 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %52, i32 0, i32 1
  store i32 20000, i32* %53, align 4
  %54 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %72

59:                                               ; preds = %46
  %60 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = sdiv i32 1000000, %62
  %64 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %65 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %67 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, -4
  %70 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %71 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %59, %51
  br label %73

73:                                               ; preds = %72, %38
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @pm_runtime_get_sync(i32 %77)
  %79 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %80 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %73
  %84 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %85 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %86 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @e1000e_write_itr(%struct.e1000_adapter* %84, i32 %87)
  br label %92

89:                                               ; preds = %73
  %90 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %91 = call i32 @e1000e_write_itr(%struct.e1000_adapter* %90, i32 0)
  br label %92

92:                                               ; preds = %89, %83
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @pm_runtime_put_sync(i32 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %92, %30
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @e1000e_write_itr(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
