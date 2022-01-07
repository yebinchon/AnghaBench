; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rss_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rss_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@NFP_NET_CFG_RSS_CAP = common dso_local global i32 0, align 4
@NFP_NET_CFG_RSS_CAP_HFUNC = common dso_local global i32 0, align 4
@NFP_NET_CFG_RSS_TOEPLITZ = common dso_local global i32 0, align 4
@NFP_NET_CFG_RSS_HFUNCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"Bad RSS config, defaulting to Toeplitz hash\0A\00", align 1
@ETH_RSS_HASH_TOP_BIT = common dso_local global i64 0, align 8
@NFP_NET_CFG_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@NFP_NET_CFG_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@NFP_NET_CFG_RSS_HFUNC = common dso_local global i32 0, align 4
@NFP_NET_CFG_RSS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_net_rss_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_rss_init(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %6 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %7 = load i32, i32* @NFP_NET_CFG_RSS_CAP, align 4
  %8 = call i32 @nn_readl(%struct.nfp_net* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @NFP_NET_CFG_RSS_CAP_HFUNC, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @FIELD_GET(i32 %9, i32 %10)
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* %4, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @NFP_NET_CFG_RSS_CAP_HFUNC, align 4
  %16 = load i32, i32* @NFP_NET_CFG_RSS_TOEPLITZ, align 4
  %17 = call i64 @FIELD_GET(i32 %15, i32 %16)
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %14, %1
  %19 = load i64, i64* @NFP_NET_CFG_RSS_HFUNCS, align 8
  %20 = call i64 @find_first_bit(i64* %4, i64 %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @NFP_NET_CFG_RSS_HFUNCS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %18
  %25 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %26 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_warn(i32 %28, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %30 = load i64, i64* @ETH_RSS_HASH_TOP_BIT, align 8
  store i64 %30, i64* %3, align 8
  br label %31

31:                                               ; preds = %24, %18
  %32 = load i64, i64* %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = shl i32 1, %33
  %35 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %36 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %38 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %41 = call i32 @nfp_net_rss_key_sz(%struct.nfp_net* %40)
  %42 = call i32 @netdev_rss_key_fill(i32 %39, i32 %41)
  %43 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %44 = call i32 @nfp_net_rss_init_itbl(%struct.nfp_net* %43)
  %45 = load i32, i32* @NFP_NET_CFG_RSS_IPV4_TCP, align 4
  %46 = load i32, i32* @NFP_NET_CFG_RSS_IPV6_TCP, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @NFP_NET_CFG_RSS_HFUNC, align 4
  %49 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %50 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @FIELD_PREP(i32 %48, i32 %51)
  %53 = or i32 %47, %52
  %54 = load i32, i32* @NFP_NET_CFG_RSS_MASK, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %57 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @nn_readl(%struct.nfp_net*, i32) #1

declare dso_local i64 @FIELD_GET(i32, i32) #1

declare dso_local i64 @find_first_bit(i64*, i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @netdev_rss_key_fill(i32, i32) #1

declare dso_local i32 @nfp_net_rss_key_sz(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_rss_init_itbl(%struct.nfp_net*) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
