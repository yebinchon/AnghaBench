; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_fix_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_fix_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.sky2_port = type { %struct.sky2_hw* }
%struct.sky2_hw = type { i64, i32 }

@ETH_DATA_LEN = common dso_local global i64 0, align 8
@CHIP_ID_YUKON_EC_U = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"checksum offload not possible with jumbo frames\0A\00", align 1
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_CSUM_MASK = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@SKY2_HW_RSS_CHKSUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"receive hashing forces receive checksum\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @sky2_fix_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sky2_fix_features(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sky2_port*, align 8
  %6 = alloca %struct.sky2_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %7)
  store %struct.sky2_port* %8, %struct.sky2_port** %5, align 8
  %9 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %10 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %9, i32 0, i32 0
  %11 = load %struct.sky2_hw*, %struct.sky2_hw** %10, align 8
  store %struct.sky2_hw* %11, %struct.sky2_hw** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @ETH_DATA_LEN, align 8
  %16 = icmp sgt i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.sky2_hw*, %struct.sky2_hw** %6, align 8
  %19 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CHIP_ID_YUKON_EC_U, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @netdev_info(%struct.net_device* %24, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @NETIF_F_TSO, align 4
  %27 = load i32, i32* @NETIF_F_SG, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @NETIF_F_CSUM_MASK, align 4
  %30 = or i32 %28, %29
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %23, %17, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @NETIF_F_RXHASH, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %59

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %39
  %45 = load %struct.sky2_port*, %struct.sky2_port** %5, align 8
  %46 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %45, i32 0, i32 0
  %47 = load %struct.sky2_hw*, %struct.sky2_hw** %46, align 8
  %48 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @SKY2_HW_RSS_CHKSUM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = call i32 @netdev_info(%struct.net_device* %54, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %56 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %57 = load i32, i32* %4, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %53, %44, %39, %34
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
