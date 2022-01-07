; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.igbvf_adapter = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@__IGBVF_RESETTING = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"changing MTU from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @igbvf_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igbvf_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.igbvf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.igbvf_adapter* %8, %struct.igbvf_adapter** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ETH_HLEN, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @ETH_FCS_LEN, align 4
  %13 = add nsw i32 %11, %12
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %20, %2
  %15 = load i32, i32* @__IGBVF_RESETTING, align 4
  %16 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %16, i32 0, i32 2
  %18 = call i64 @test_and_set_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %14

22:                                               ; preds = %14
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %25 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i64 @netif_running(%struct.net_device* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %31 = call i32 @igbvf_down(%struct.igbvf_adapter* %30)
  br label %32

32:                                               ; preds = %29, %22
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 1024
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %37 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %36, i32 0, i32 1
  store i32 1024, i32* %37, align 4
  br label %50

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = icmp sle i32 %39, 2048
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %43 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %42, i32 0, i32 1
  store i32 2048, i32* %43, align 4
  br label %49

44:                                               ; preds = %38
  %45 = load i32, i32* @PAGE_SIZE, align 4
  %46 = sdiv i32 %45, 2
  %47 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %44, %41
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ETH_FRAME_LEN, align 4
  %53 = load i32, i32* @ETH_FCS_LEN, align 4
  %54 = add nsw i32 %52, %53
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %64, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ETH_FRAME_LEN, align 4
  %59 = load i32, i32* @VLAN_HLEN, align 4
  %60 = add nsw i32 %58, %59
  %61 = load i32, i32* @ETH_FCS_LEN, align 4
  %62 = add nsw i32 %60, %61
  %63 = icmp eq i32 %57, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %56, %50
  %65 = load i32, i32* @ETH_FRAME_LEN, align 4
  %66 = load i32, i32* @VLAN_HLEN, align 4
  %67 = add nsw i32 %65, %66
  %68 = load i32, i32* @ETH_FCS_LEN, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %71 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %56
  %73 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %74 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %73, i32 0, i32 3
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @dev_info(i32* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* %4, align 4
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load %struct.net_device*, %struct.net_device** %3, align 8
  %86 = call i64 @netif_running(%struct.net_device* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %72
  %89 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %90 = call i32 @igbvf_up(%struct.igbvf_adapter* %89)
  br label %94

91:                                               ; preds = %72
  %92 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %93 = call i32 @igbvf_reset(%struct.igbvf_adapter* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* @__IGBVF_RESETTING, align 4
  %96 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %5, align 8
  %97 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %96, i32 0, i32 2
  %98 = call i32 @clear_bit(i32 %95, i32* %97)
  ret i32 0
}

declare dso_local %struct.igbvf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @igbvf_down(%struct.igbvf_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @igbvf_up(%struct.igbvf_adapter*) #1

declare dso_local i32 @igbvf_reset(%struct.igbvf_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
