; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.bnx2x = type { i64, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64* }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@T_ETH_INDIRECTION_TABLE_SIZE = common dso_local global i64 0, align 8
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64*, i64)* @bnx2x_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_rxfh(%struct.net_device* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bnx2x*, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %12)
  store %struct.bnx2x* %13, %struct.bnx2x** %10, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20, %4
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %66

27:                                               ; preds = %20, %16
  %28 = load i64*, i64** %7, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %5, align 4
  br label %66

31:                                               ; preds = %27
  store i64 0, i64* %11, align 8
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @T_ETH_INDIRECTION_TABLE_SIZE, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %56

36:                                               ; preds = %32
  %37 = load i64*, i64** %7, align 8
  %38 = load i64, i64* %11, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %42 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %40, %45
  %47 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %48 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i64, i64* %11, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  store i64 %46, i64* %52, align 8
  br label %53

53:                                               ; preds = %36
  %54 = load i64, i64* %11, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %11, align 8
  br label %32

56:                                               ; preds = %32
  %57 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %58 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  %64 = call i32 @bnx2x_config_rss_eth(%struct.bnx2x* %63, i32 0)
  store i32 %64, i32* %5, align 4
  br label %66

65:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %65, %62, %30, %24
  %67 = load i32, i32* %5, align 4
  ret i32 %67
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bnx2x_config_rss_eth(%struct.bnx2x*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
