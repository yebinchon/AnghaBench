; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { i32, %struct.e1000_hw, %struct.TYPE_3__*, %struct.net_device* }
%struct.e1000_hw = type { %struct.e1000_mac_info, i32 }
%struct.e1000_mac_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"PF still resetting\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igbvf_adapter*)* @igbvf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igbvf_reset(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca %struct.igbvf_adapter*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.e1000_hw*, align 8
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %2, align 8
  %6 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 0
  store %struct.e1000_mac_info* %8, %struct.e1000_mac_info** %3, align 8
  %9 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %12, i32 0, i32 1
  store %struct.e1000_hw* %13, %struct.e1000_hw** %5, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 1
  %16 = call i32 @spin_lock_bh(i32* %15)
  %17 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %18 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %19, align 8
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %22 = bitcast %struct.e1000_hw* %21 to %struct.e1000_hw.1*
  %23 = call i64 %20(%struct.e1000_hw.1* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %26, i32 0, i32 2
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.0*
  %38 = call i32 %35(%struct.e1000_hw.0* %37)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %40 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %39, i32 0, i32 1
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @is_valid_ether_addr(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %74

49:                                               ; preds = %31
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %54 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @memcpy(i32 %52, i32 %57, i32 %60)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @memcpy(i32 %64, i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %49, %31
  %75 = load i32, i32* @jiffies, align 4
  %76 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 8
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i64 @is_valid_ether_addr(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
