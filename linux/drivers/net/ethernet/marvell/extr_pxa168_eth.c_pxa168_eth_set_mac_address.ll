; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_set_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_eth_set_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.sockaddr = type { i8* }
%struct.pxa168_eth_private = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@MAC_ADDR_HIGH = common dso_local global i32 0, align 4
@MAC_ADDR_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @pxa168_eth_set_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168_eth_set_mac_address(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.pxa168_eth_private*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.sockaddr*
  store %struct.sockaddr* %14, %struct.sockaddr** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.pxa168_eth_private* @netdev_priv(%struct.net_device* %15)
  store %struct.pxa168_eth_private* %16, %struct.pxa168_eth_private** %7, align 8
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %22 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @is_valid_ether_addr(i8* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EADDRNOTAVAIL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = call i32 @memcpy(i8* %20, i8* %32, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %39 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = load i32, i32* @ETH_ALEN, align 4
  %42 = call i32 @memcpy(i8* %37, i8* %40, i32 %41)
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = shl i32 %48, 24
  store i32 %49, i32* %10, align 4
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = shl i32 %55, 16
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 2
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = shl i32 %64, 8
  %66 = load i32, i32* %10, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = getelementptr inbounds %struct.net_device, %struct.net_device* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 3
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 4
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl i32 %81, 8
  store i32 %82, i32* %11, align 4
  %83 = load %struct.net_device*, %struct.net_device** %4, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = getelementptr inbounds i8, i8* %85, i64 5
  %87 = load i8, i8* %86, align 1
  %88 = zext i8 %87 to i32
  %89 = load i32, i32* %11, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %11, align 4
  %91 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %7, align 8
  %92 = load i32, i32* @MAC_ADDR_HIGH, align 4
  %93 = load i32, i32* %10, align 4
  %94 = call i32 @wrl(%struct.pxa168_eth_private* %91, i32 %92, i32 %93)
  %95 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %7, align 8
  %96 = load i32, i32* @MAC_ADDR_LOW, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @wrl(%struct.pxa168_eth_private* %95, i32 %96, i32 %97)
  %99 = load %struct.net_device*, %struct.net_device** %4, align 8
  %100 = call i32 @netif_addr_lock_bh(%struct.net_device* %99)
  %101 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %7, align 8
  %102 = load %struct.net_device*, %struct.net_device** %4, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = bitcast i8* %104 to i32*
  %106 = call i32 @update_hash_table_mac_address(%struct.pxa168_eth_private* %101, i8* %20, i32* %105)
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i32 @netif_addr_unlock_bh(%struct.net_device* %107)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %109

109:                                              ; preds = %29, %26
  %110 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.pxa168_eth_private* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

declare dso_local i32 @netif_addr_lock_bh(%struct.net_device*) #1

declare dso_local i32 @update_hash_table_mac_address(%struct.pxa168_eth_private*, i8*, i32*) #1

declare dso_local i32 @netif_addr_unlock_bh(%struct.net_device*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
