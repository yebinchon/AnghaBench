; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_default_cls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_set_default_cls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Rx cls not supported by current MC version\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Rx cls disabled in DPNI options\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Rx cls disabled for single queue DPNIs\0A\00", align 1
@DPAA2_ETH_DIST_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*)* @dpaa2_eth_set_default_cls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_set_default_cls(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  %6 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %7 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %13 = call i64 @dpaa2_eth_has_legacy_dist(%struct.dpaa2_eth_priv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %1
  %21 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %22 = call i32 @dpaa2_eth_fs_enabled(%struct.dpaa2_eth_priv* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %57

29:                                               ; preds = %20
  %30 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %31 = call i32 @dpaa2_eth_hash_enabled(%struct.dpaa2_eth_priv* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %29
  %34 = load %struct.device*, %struct.device** %4, align 8
  %35 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %57

38:                                               ; preds = %29
  %39 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %40 = call i32 @dpaa2_eth_fs_mask_enabled(%struct.dpaa2_eth_priv* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  br label %54

43:                                               ; preds = %38
  %44 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %45 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %44, i32 0, i32 1
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* @DPAA2_ETH_DIST_ALL, align 4
  %48 = call i32 @dpaa2_eth_set_cls(%struct.TYPE_4__* %46, i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %57

53:                                               ; preds = %43
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %56 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %51, %33, %24, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @dpaa2_eth_has_legacy_dist(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dpaa2_eth_fs_enabled(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpaa2_eth_hash_enabled(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpaa2_eth_fs_mask_enabled(%struct.dpaa2_eth_priv*) #1

declare dso_local i32 @dpaa2_eth_set_cls(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
