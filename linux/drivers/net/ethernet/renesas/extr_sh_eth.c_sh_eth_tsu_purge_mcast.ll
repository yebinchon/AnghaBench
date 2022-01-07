; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_purge_mcast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_purge_mcast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TSU_ADRH0 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SH_ETH_TSU_CAM_ENTRIES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sh_eth_tsu_purge_mcast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_tsu_purge_mcast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %9)
  store %struct.sh_eth_private* %10, %struct.sh_eth_private** %3, align 8
  %11 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %12 = load i32, i32* @TSU_ADRH0, align 4
  %13 = call i32 @sh_eth_tsu_get_offset(%struct.sh_eth_private* %11, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* @ETH_ALEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  %18 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %19 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %46

25:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %40, %25
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SH_ETH_TSU_CAM_ENTRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @sh_eth_tsu_read_entry(%struct.net_device* %31, i32 %32, i32* %17)
  %34 = call i64 @is_multicast_ether_addr(i32* %17)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = call i32 @sh_eth_tsu_del_entry(%struct.net_device* %37, i32* %17)
  br label %39

39:                                               ; preds = %36, %30
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %7, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 8
  store i32 %44, i32* %4, align 4
  br label %26

45:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %46

46:                                               ; preds = %45, %24
  %47 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %47)
  %48 = load i32, i32* %8, align 4
  switch i32 %48, label %50 [
    i32 0, label %49
    i32 1, label %49
  ]

49:                                               ; preds = %46, %46
  ret void

50:                                               ; preds = %46
  unreachable
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_tsu_get_offset(%struct.sh_eth_private*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sh_eth_tsu_read_entry(%struct.net_device*, i32, i32*) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i32 @sh_eth_tsu_del_entry(%struct.net_device*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
