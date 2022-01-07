; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_set_rxfh_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_ethtool_set_rxfh_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mvpp2_port = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_CRC32 = common dso_local global i64 0, align 8
@ETH_RXFH_CONTEXT_ALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64, i32*, i32)* @mvpp2_ethtool_set_rxfh_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_ethtool_set_rxfh_context(%struct.net_device* %0, i32* %1, i64* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mvpp2_port*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.net_device*, %struct.net_device** %8, align 8
  %17 = call %struct.mvpp2_port* @netdev_priv(%struct.net_device* %16)
  store %struct.mvpp2_port* %17, %struct.mvpp2_port** %14, align 8
  %18 = call i32 (...) @mvpp22_rss_is_supported()
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %68

23:                                               ; preds = %6
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @ETH_RSS_HASH_CRC32, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EOPNOTSUPP, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %68

34:                                               ; preds = %27, %23
  %35 = load i64*, i64** %10, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %68

40:                                               ; preds = %34
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.mvpp2_port*, %struct.mvpp2_port** %14, align 8
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mvpp22_port_rss_ctx_delete(%struct.mvpp2_port* %44, i32 %46)
  store i32 %47, i32* %7, align 4
  br label %68

48:                                               ; preds = %40
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ETH_RXFH_CONTEXT_ALLOC, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.mvpp2_port*, %struct.mvpp2_port** %14, align 8
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @mvpp22_port_rss_ctx_create(%struct.mvpp2_port* %54, i32* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %7, align 4
  br label %68

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %48
  %63 = load %struct.mvpp2_port*, %struct.mvpp2_port** %14, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @mvpp22_port_rss_ctx_indir_set(%struct.mvpp2_port* %63, i32 %65, i32* %66)
  store i32 %67, i32* %7, align 4
  br label %68

68:                                               ; preds = %62, %59, %43, %37, %31, %20
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local %struct.mvpp2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mvpp22_rss_is_supported(...) #1

declare dso_local i32 @mvpp22_port_rss_ctx_delete(%struct.mvpp2_port*, i32) #1

declare dso_local i32 @mvpp22_port_rss_ctx_create(%struct.mvpp2_port*, i32*) #1

declare dso_local i32 @mvpp22_port_rss_ctx_indir_set(%struct.mvpp2_port*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
