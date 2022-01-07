; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.nfp_net = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@NFP_NET_MIN_RX_DESCS = common dso_local global i64 0, align 8
@NFP_NET_MAX_RX_DESCS = common dso_local global i64 0, align 8
@NFP_NET_MIN_TX_DESCS = common dso_local global i64 0, align 8
@NFP_NET_MAX_TX_DESCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Change ring size: RxQ %u->%u, TxQ %u->%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @nfp_net_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %9)
  store %struct.nfp_net* %10, %struct.nfp_net** %6, align 8
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15, %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %82

23:                                               ; preds = %15
  %24 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %25 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @roundup_pow_of_two(i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @roundup_pow_of_two(i32 %30)
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @NFP_NET_MIN_RX_DESCS, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %23
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @NFP_NET_MAX_RX_DESCS, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %8, align 8
  %41 = load i64, i64* @NFP_NET_MIN_TX_DESCS, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @NFP_NET_MAX_TX_DESCS, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %39, %35, %23
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %82

50:                                               ; preds = %43
  %51 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %52 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %7, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %50
  %58 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %59 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %82

65:                                               ; preds = %57, %50
  %66 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %67 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %68 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %73 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @nn_dbg(%struct.nfp_net* %66, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %70, i64 %71, i64 %75, i64 %76)
  %78 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %8, align 8
  %81 = call i32 @nfp_net_set_ring_size(%struct.nfp_net* %78, i64 %79, i64 %80)
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %65, %64, %47, %20
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @roundup_pow_of_two(i32) #1

declare dso_local i32 @nn_dbg(%struct.nfp_net*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @nfp_net_set_ring_size(%struct.nfp_net*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
