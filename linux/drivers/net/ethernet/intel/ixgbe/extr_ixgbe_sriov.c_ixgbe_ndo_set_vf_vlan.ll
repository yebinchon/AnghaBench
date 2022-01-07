; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_sriov.c_ixgbe_ndo_set_vf_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_ndo_set_vf_vlan(%struct.net_device* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.net_device*, %struct.net_device** %7, align 8
  %15 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.ixgbe_adapter* %15, %struct.ixgbe_adapter** %13, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %22, 4095
  br i1 %23, label %27, label %24

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp sgt i32 %25, 7
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %21, %5
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %6, align 4
  br label %75

30:                                               ; preds = %24
  %31 = load i64, i64* %11, align 8
  %32 = load i32, i32* @ETH_P_8021Q, align 4
  %33 = call i64 @htons(i32 %32)
  %34 = icmp ne i64 %31, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EPROTONOSUPPORT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %6, align 4
  br label %75

38:                                               ; preds = %30
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %41, %38
  %45 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %46 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %8, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %44
  %55 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @ixgbe_disable_port_vlan(%struct.ixgbe_adapter* %55, i32 %56)
  store i32 %57, i32* %12, align 4
  br label %58

58:                                               ; preds = %54, %44
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  br label %73

62:                                               ; preds = %58
  %63 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @ixgbe_enable_port_vlan(%struct.ixgbe_adapter* %63, i32 %64, i32 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  br label %72

68:                                               ; preds = %41
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %13, align 8
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ixgbe_disable_port_vlan(%struct.ixgbe_adapter* %69, i32 %70)
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %68, %62
  br label %73

73:                                               ; preds = %72, %61
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %73, %35, %27
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @ixgbe_disable_port_vlan(%struct.ixgbe_adapter*, i32) #1

declare dso_local i32 @ixgbe_enable_port_vlan(%struct.ixgbe_adapter*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
