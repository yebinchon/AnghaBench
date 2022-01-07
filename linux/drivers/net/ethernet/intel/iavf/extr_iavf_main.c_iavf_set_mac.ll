; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i32, i32, %struct.iavf_hw }
%struct.iavf_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iavf_mac_filter = type { i32 }
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@IAVF_FLAG_AQ_DEL_MAC_FILTER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @iavf_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.iavf_adapter*, align 8
  %7 = alloca %struct.iavf_hw*, align 8
  %8 = alloca %struct.iavf_mac_filter*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.iavf_adapter* %11, %struct.iavf_adapter** %6, align 8
  %12 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %12, i32 0, i32 2
  store %struct.iavf_hw* %13, %struct.iavf_hw** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.sockaddr*
  store %struct.sockaddr* %15, %struct.sockaddr** %9, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @is_valid_ether_addr(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EADDRNOTAVAIL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %83

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %29 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ether_addr_equal(i32 %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %83

34:                                               ; preds = %24
  %35 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %36 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %35, i32 0, i32 0
  %37 = call i32 @spin_lock_bh(i32* %36)
  %38 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %39 = load %struct.iavf_hw*, %struct.iavf_hw** %7, align 8
  %40 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.iavf_mac_filter* @iavf_find_filter(%struct.iavf_adapter* %38, i32 %42)
  store %struct.iavf_mac_filter* %43, %struct.iavf_mac_filter** %8, align 8
  %44 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %8, align 8
  %45 = icmp ne %struct.iavf_mac_filter* %44, null
  br i1 %45, label %46, label %54

46:                                               ; preds = %34
  %47 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %8, align 8
  %48 = getelementptr inbounds %struct.iavf_mac_filter, %struct.iavf_mac_filter* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @IAVF_FLAG_AQ_DEL_MAC_FILTER, align 4
  %50 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %51 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %46, %34
  %55 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %56 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %57 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.iavf_mac_filter* @iavf_add_filter(%struct.iavf_adapter* %55, i32 %58)
  store %struct.iavf_mac_filter* %59, %struct.iavf_mac_filter** %8, align 8
  %60 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %61 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %60, i32 0, i32 0
  %62 = call i32 @spin_unlock_bh(i32* %61)
  %63 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %8, align 8
  %64 = icmp ne %struct.iavf_mac_filter* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %54
  %66 = load %struct.iavf_hw*, %struct.iavf_hw** %7, align 8
  %67 = getelementptr inbounds %struct.iavf_hw, %struct.iavf_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %71 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ether_addr_copy(i32 %69, i32 %72)
  br label %74

74:                                               ; preds = %65, %54
  %75 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %8, align 8
  %76 = icmp eq %struct.iavf_mac_filter* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  br label %81

80:                                               ; preds = %74
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi i32 [ %79, %77 ], [ 0, %80 ]
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %81, %33, %21
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.iavf_mac_filter* @iavf_find_filter(%struct.iavf_adapter*, i32) #1

declare dso_local %struct.iavf_mac_filter* @iavf_add_filter(%struct.iavf_adapter*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
