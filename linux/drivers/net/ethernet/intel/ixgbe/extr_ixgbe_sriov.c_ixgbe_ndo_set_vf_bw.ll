; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_bw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_bw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_ndo_set_vf_bw(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ixgbe_adapter*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.ixgbe_adapter* %13, %struct.ixgbe_adapter** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %72

22:                                               ; preds = %4
  %23 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %24 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %72

30:                                               ; preds = %22
  %31 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %32 = call i32 @ixgbe_link_mbps(%struct.ixgbe_adapter* %31)
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = icmp ne i32 %33, 10000
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %72

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %72

44:                                               ; preds = %38
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp sle i32 %48, 10
  br i1 %49, label %54, label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* %11, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %47
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %5, align 4
  br label %72

57:                                               ; preds = %50, %44
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %60 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %61, i32* %68, align 4
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @ixgbe_set_vf_rate_limit(%struct.ixgbe_adapter* %69, i32 %70)
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %57, %54, %41, %35, %27, %19
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_link_mbps(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_set_vf_rate_limit(%struct.ixgbe_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
