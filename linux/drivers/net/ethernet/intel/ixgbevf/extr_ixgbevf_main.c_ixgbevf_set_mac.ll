; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.sockaddr = type { i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @ixgbevf_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ixgbevf_adapter*, align 8
  %7 = alloca %struct.ixgbe_hw*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbevf_adapter* %11, %struct.ixgbevf_adapter** %6, align 8
  %12 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %13 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %12, i32 0, i32 1
  store %struct.ixgbe_hw* %13, %struct.ixgbe_hw** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.sockaddr*
  store %struct.sockaddr* %15, %struct.sockaddr** %8, align 8
  %16 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @is_valid_ether_addr(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EADDRNOTAVAIL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %2
  %25 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %26 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %29 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %31, align 8
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %34 = bitcast %struct.ixgbe_hw* %33 to %struct.ixgbe_hw.0*
  %35 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %36 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 %32(%struct.ixgbe_hw.0* %34, i32 0, i32 %37, i32 0)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %6, align 8
  %40 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %24
  %45 = load i32, i32* @EPERM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %71

47:                                               ; preds = %24
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %53 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ether_addr_copy(i32 %51, i32 %54)
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %7, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %61 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ether_addr_copy(i32 %59, i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %68 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ether_addr_copy(i32 %66, i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %47, %44, %21
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
