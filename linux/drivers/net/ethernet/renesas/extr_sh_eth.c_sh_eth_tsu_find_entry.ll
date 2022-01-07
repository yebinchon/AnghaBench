; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tsu_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32 }

@TSU_ADRH0 = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@SH_ETH_TSU_CAM_ENTRIES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @sh_eth_tsu_find_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_tsu_find_entry(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.sh_eth_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %12)
  store %struct.sh_eth_private* %13, %struct.sh_eth_private** %6, align 8
  %14 = load %struct.sh_eth_private*, %struct.sh_eth_private** %6, align 8
  %15 = load i32, i32* @TSU_ADRH0, align 4
  %16 = call i32 @sh_eth_tsu_get_offset(%struct.sh_eth_private* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @ETH_ALEN, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %35, %2
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SH_ETH_TSU_CAM_ENTRIES, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %21
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @sh_eth_tsu_read_entry(%struct.net_device* %26, i32 %27, i32* %20)
  %29 = load i32*, i32** %5, align 8
  %30 = call i64 @ether_addr_equal(i32* %29, i32* %20)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

34:                                               ; preds = %25
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 8
  store i32 %39, i32* %7, align 4
  br label %21

40:                                               ; preds = %21
  %41 = load i32, i32* @ENOENT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %43

43:                                               ; preds = %40, %32
  %44 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %44)
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @sh_eth_tsu_get_offset(%struct.sh_eth_private*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @sh_eth_tsu_read_entry(%struct.net_device*, i32, i32*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
