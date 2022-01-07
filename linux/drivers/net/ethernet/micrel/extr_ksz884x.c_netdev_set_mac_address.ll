; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_netdev_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dev_priv = type { %struct.TYPE_2__, %struct.dev_info* }
%struct.TYPE_2__ = type { i64 }
%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32, i32 }
%struct.sockaddr = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @netdev_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dev_priv*, align 8
  %6 = alloca %struct.dev_info*, align 8
  %7 = alloca %struct.ksz_hw*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.dev_priv* %11, %struct.dev_priv** %5, align 8
  %12 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %13 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %12, i32 0, i32 1
  %14 = load %struct.dev_info*, %struct.dev_info** %13, align 8
  store %struct.dev_info* %14, %struct.dev_info** %6, align 8
  %15 = load %struct.dev_info*, %struct.dev_info** %6, align 8
  %16 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %15, i32 0, i32 0
  store %struct.ksz_hw* %16, %struct.ksz_hw** %7, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.sockaddr*
  store %struct.sockaddr* %18, %struct.sockaddr** %8, align 8
  %19 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %20 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hw_del_addr(%struct.ksz_hw* %25, i32 %28)
  br label %41

30:                                               ; preds = %2
  %31 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %32 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  %33 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %34 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = call i32 @memcpy(i32 %35, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %30, %24
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %46 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcpy(i32 %44, i32 %47, i32 %48)
  %50 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %51 = call i32 @hw_block_intr(%struct.ksz_hw* %50)
  store i32 %51, i32* %9, align 4
  %52 = load %struct.dev_priv*, %struct.dev_priv** %5, align 8
  %53 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %41
  %58 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hw_add_addr(%struct.ksz_hw* %58, i32 %61)
  br label %66

63:                                               ; preds = %41
  %64 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %65 = call i32 @hw_set_addr(%struct.ksz_hw* %64)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load %struct.ksz_hw*, %struct.ksz_hw** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @hw_restore_intr(%struct.ksz_hw* %67, i32 %68)
  ret i32 0
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hw_del_addr(%struct.ksz_hw*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @hw_block_intr(%struct.ksz_hw*) #1

declare dso_local i32 @hw_add_addr(%struct.ksz_hw*, i32) #1

declare dso_local i32 @hw_set_addr(%struct.ksz_hw*) #1

declare dso_local i32 @hw_restore_intr(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
