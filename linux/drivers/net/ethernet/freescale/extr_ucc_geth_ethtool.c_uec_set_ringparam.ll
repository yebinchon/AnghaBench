; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth_ethtool.c_uec_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth_ethtool.c_uec_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32 }
%struct.ucc_geth_private = type { %struct.ucc_geth_info* }
%struct.ucc_geth_info = type { i32*, i32* }

@UCC_GETH_RX_BD_RING_SIZE_MIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"RxBD ring size must be no smaller than %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UCC_GETH_RX_BD_RING_SIZE_ALIGNMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"RxBD ring size must be multiple of %d\0A\00", align 1
@UCC_GETH_TX_BD_RING_SIZE_MIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"TxBD ring size must be no smaller than %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @uec_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uec_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.ucc_geth_private*, align 8
  %7 = alloca %struct.ucc_geth_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ucc_geth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.ucc_geth_private* %11, %struct.ucc_geth_private** %6, align 8
  %12 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %6, align 8
  %13 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %12, i32 0, i32 0
  %14 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %13, align 8
  store %struct.ucc_geth_info* %14, %struct.ucc_geth_info** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UCC_GETH_RX_BD_RING_SIZE_MIN, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = load i32, i32* @UCC_GETH_RX_BD_RING_SIZE_MIN, align 4
  %23 = call i32 @netdev_info(%struct.net_device* %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %78

26:                                               ; preds = %2
  %27 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %28 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UCC_GETH_RX_BD_RING_SIZE_ALIGNMENT, align 4
  %31 = srem i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load %struct.net_device*, %struct.net_device** %4, align 8
  %35 = load i32, i32* @UCC_GETH_RX_BD_RING_SIZE_ALIGNMENT, align 4
  %36 = call i32 @netdev_info(%struct.net_device* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %78

39:                                               ; preds = %26
  %40 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @UCC_GETH_TX_BD_RING_SIZE_MIN, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = load i32, i32* @UCC_GETH_TX_BD_RING_SIZE_MIN, align 4
  %48 = call i32 @netdev_info(%struct.net_device* %46, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %39
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = call i64 @netif_running(%struct.net_device* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %51
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %78

58:                                               ; preds = %51
  %59 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %7, align 8
  %63 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ucc_geth_info*, %struct.ucc_geth_info** %7, align 8
  %72 = getelementptr inbounds %struct.ucc_geth_info, %struct.ucc_geth_info* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %58, %55, %45, %33, %20
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.ucc_geth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
