; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { i64*, i32, i8*, %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@I40E_HKEY_ARRAY_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@I40E_HLUT_ARRAY_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64*, i64)* @i40e_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_rxfh(%struct.net_device* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40e_netdev_priv*, align 8
  %11 = alloca %struct.i40e_vsi*, align 8
  %12 = alloca %struct.i40e_pf*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.i40e_netdev_priv* %16, %struct.i40e_netdev_priv** %10, align 8
  %17 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %10, align 8
  %18 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %17, i32 0, i32 0
  %19 = load %struct.i40e_vsi*, %struct.i40e_vsi** %18, align 8
  store %struct.i40e_vsi* %19, %struct.i40e_vsi** %11, align 8
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 3
  %22 = load %struct.i40e_pf*, %struct.i40e_pf** %21, align 8
  store %struct.i40e_pf* %22, %struct.i40e_pf** %12, align 8
  store i64* null, i64** %13, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %126

33:                                               ; preds = %26, %4
  %34 = load i64*, i64** %8, align 8
  %35 = icmp ne i64* %34, null
  br i1 %35, label %36, label %66

36:                                               ; preds = %33
  %37 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %38 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %55, label %41

41:                                               ; preds = %36
  %42 = load i64, i64* @I40E_HKEY_ARRAY_SIZE, align 8
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i8* @kzalloc(i64 %42, i32 %43)
  %45 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %46 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %48 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %41
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %5, align 4
  br label %126

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %57 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %56, i32 0, i32 2
  %58 = load i8*, i8** %57, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = load i64, i64* @I40E_HKEY_ARRAY_SIZE, align 8
  %61 = call i32 @memcpy(i8* %58, i64* %59, i64 %60)
  %62 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %63 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %62, i32 0, i32 2
  %64 = load i8*, i8** %63, align 8
  %65 = bitcast i8* %64 to i64*
  store i64* %65, i64** %13, align 8
  br label %66

66:                                               ; preds = %55, %33
  %67 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %68 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = icmp ne i64* %69, null
  br i1 %70, label %86, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %73 = load i32, i32* @GFP_KERNEL, align 4
  %74 = call i8* @kzalloc(i64 %72, i32 %73)
  %75 = bitcast i8* %74 to i64*
  %76 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %77 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %76, i32 0, i32 0
  store i64* %75, i64** %77, align 8
  %78 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %79 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %85, label %82

82:                                               ; preds = %71
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %5, align 4
  br label %126

85:                                               ; preds = %71
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i64*, i64** %7, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  store i64 0, i64* %14, align 8
  br label %90

90:                                               ; preds = %104, %89
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %107

94:                                               ; preds = %90
  %95 = load i64*, i64** %7, align 8
  %96 = load i64, i64* %14, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %100 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %99, i32 0, i32 0
  %101 = load i64*, i64** %100, align 8
  %102 = load i64, i64* %14, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  store i64 %98, i64* %103, align 8
  br label %104

104:                                              ; preds = %94
  %105 = load i64, i64* %14, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %14, align 8
  br label %90

107:                                              ; preds = %90
  br label %118

108:                                              ; preds = %86
  %109 = load %struct.i40e_pf*, %struct.i40e_pf** %12, align 8
  %110 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %111 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %114 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %115 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @i40e_fill_rss_lut(%struct.i40e_pf* %109, i64* %112, i64 %113, i32 %116)
  br label %118

118:                                              ; preds = %108, %107
  %119 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %120 = load i64*, i64** %13, align 8
  %121 = load %struct.i40e_vsi*, %struct.i40e_vsi** %11, align 8
  %122 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i64, i64* @I40E_HLUT_ARRAY_SIZE, align 8
  %125 = call i32 @i40e_config_rss(%struct.i40e_vsi* %119, i64* %120, i64* %123, i64 %124)
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %118, %82, %51, %30
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i64) #1

declare dso_local i32 @i40e_fill_rss_lut(%struct.i40e_pf*, i64*, i64, i32) #1

declare dso_local i32 @i40e_config_rss(%struct.i40e_vsi*, i64*, i64*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
