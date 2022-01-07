; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i32 }

@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@I40E_HLUT_ARRAY_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64*, i64*)* @i40e_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_get_rxfh(%struct.net_device* %0, i64* %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.i40e_netdev_priv*, align 8
  %11 = alloca %struct.i40e_vsi*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.i40e_netdev_priv* %17, %struct.i40e_netdev_priv** %10, align 8
  %18 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %10, align 8
  %19 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %18, i32 0, i32 0
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %19, align 8
  store %struct.i40e_vsi* %20, %struct.i40e_vsi** %11, align 8
  store i64* null, i64** %13, align 8
  %21 = load i64*, i64** %9, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  br label %26

26:                                               ; preds = %23, %4
  %27 = load i64*, i64** %7, align 8
  %28 = icmp ne i64* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %70

30:                                               ; preds = %26
  %31 = load i64*, i64** %8, align 8
  store i64* %31, i64** %13, align 8
  %32 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i64* @kzalloc(i64 %32, i32 %33)
  store i64* %34, i64** %12, align 8
  %35 = load i64*, i64** %12, align 8
  %36 = icmp ne i64* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %70

40:                                               ; preds = %30
  %41 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %42 = load i64*, i64** %13, align 8
  %43 = load i64*, i64** %12, align 8
  %44 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %45 = call i32 @i40e_get_rss(%struct.i40e_vsi* %41, i64* %42, i64* %43, i64 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %66

49:                                               ; preds = %40
  store i64 0, i64* %15, align 8
  br label %50

50:                                               ; preds = %62, %49
  %51 = load i64, i64* %15, align 8
  %52 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %55 = load i64*, i64** %12, align 8
  %56 = load i64, i64* %15, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %7, align 8
  %60 = load i64, i64* %15, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %54
  %63 = load i64, i64* %15, align 8
  %64 = add i64 %63, 1
  store i64 %64, i64* %15, align 8
  br label %50

65:                                               ; preds = %50
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i64*, i64** %12, align 8
  %68 = call i32 @kfree(i64* %67)
  %69 = load i32, i32* %14, align 4
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %66, %37, %29
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64* @kzalloc(i64, i32) #1

declare dso_local i32 @i40e_get_rss(%struct.i40e_vsi*, i64*, i64*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
