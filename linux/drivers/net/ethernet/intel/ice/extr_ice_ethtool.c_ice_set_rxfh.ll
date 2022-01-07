; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_set_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ice_netdev_priv = type { %struct.ice_vsi* }
%struct.ice_vsi = type { i32, i64*, i32, i8*, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ICE_FLAG_RSS_ENA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"RSS is not configured on this VSI!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ICE_VSIQF_HKEY_ARRAY_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i64*, i64)* @ice_set_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_set_rxfh(%struct.net_device* %0, i64* %1, i64* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ice_netdev_priv*, align 8
  %11 = alloca %struct.ice_vsi*, align 8
  %12 = alloca %struct.ice_pf*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64* %2, i64** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.net_device*, %struct.net_device** %6, align 8
  %16 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %15)
  store %struct.ice_netdev_priv* %16, %struct.ice_netdev_priv** %10, align 8
  %17 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %10, align 8
  %18 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %17, i32 0, i32 0
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %18, align 8
  store %struct.ice_vsi* %19, %struct.ice_vsi** %11, align 8
  %20 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %21 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %20, i32 0, i32 4
  %22 = load %struct.ice_pf*, %struct.ice_pf** %21, align 8
  store %struct.ice_pf* %22, %struct.ice_pf** %12, align 8
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
  br label %160

33:                                               ; preds = %26, %4
  %34 = load i32, i32* @ICE_FLAG_RSS_ENA, align 4
  %35 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  %36 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @test_bit(i32 %34, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @netdev_warn(%struct.net_device* %41, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %160

45:                                               ; preds = %33
  %46 = load i64*, i64** %8, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %82

48:                                               ; preds = %45
  %49 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %50 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %49, i32 0, i32 3
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  %55 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* @ICE_VSIQF_HKEY_ARRAY_SIZE, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @devm_kzalloc(i32* %57, i32 %58, i32 %59)
  %61 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %62 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %61, i32 0, i32 3
  store i8* %60, i8** %62, align 8
  %63 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %64 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %63, i32 0, i32 3
  %65 = load i8*, i8** %64, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %53
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %5, align 4
  br label %160

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %48
  %72 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %73 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %72, i32 0, i32 3
  %74 = load i8*, i8** %73, align 8
  %75 = load i64*, i64** %8, align 8
  %76 = load i32, i32* @ICE_VSIQF_HKEY_ARRAY_SIZE, align 4
  %77 = call i32 @memcpy(i8* %74, i64* %75, i32 %76)
  %78 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %79 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %78, i32 0, i32 3
  %80 = load i8*, i8** %79, align 8
  %81 = bitcast i8* %80 to i64*
  store i64* %81, i64** %13, align 8
  br label %82

82:                                               ; preds = %71, %45
  %83 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %84 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %83, i32 0, i32 1
  %85 = load i64*, i64** %84, align 8
  %86 = icmp ne i64* %85, null
  br i1 %86, label %108, label %87

87:                                               ; preds = %82
  %88 = load %struct.ice_pf*, %struct.ice_pf** %12, align 8
  %89 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %88, i32 0, i32 0
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %93 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_KERNEL, align 4
  %96 = call i8* @devm_kzalloc(i32* %91, i32 %94, i32 %95)
  %97 = bitcast i8* %96 to i64*
  %98 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %99 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %98, i32 0, i32 1
  store i64* %97, i64** %99, align 8
  %100 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %101 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = icmp ne i64* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %87
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %160

107:                                              ; preds = %87
  br label %108

108:                                              ; preds = %107, %82
  %109 = load i64*, i64** %7, align 8
  %110 = icmp ne i64* %109, null
  br i1 %110, label %111, label %134

111:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  br label %112

112:                                              ; preds = %130, %111
  %113 = load i32, i32* %14, align 4
  %114 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %115 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load i64*, i64** %7, align 8
  %120 = load i32, i32* %14, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %125 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %124, i32 0, i32 1
  %126 = load i64*, i64** %125, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %123, i64* %129, align 8
  br label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %112

133:                                              ; preds = %112
  br label %145

134:                                              ; preds = %108
  %135 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %136 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %135, i32 0, i32 1
  %137 = load i64*, i64** %136, align 8
  %138 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %139 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %142 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @ice_fill_rss_lut(i64* %137, i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %134, %133
  %146 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %147 = load i64*, i64** %13, align 8
  %148 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %149 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %148, i32 0, i32 1
  %150 = load i64*, i64** %149, align 8
  %151 = load %struct.ice_vsi*, %struct.ice_vsi** %11, align 8
  %152 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i64 @ice_set_rss(%struct.ice_vsi* %146, i64* %147, i64* %150, i32 %153)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %145
  %157 = load i32, i32* @EIO, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %5, align 4
  br label %160

159:                                              ; preds = %145
  store i32 0, i32* %5, align 4
  br label %160

160:                                              ; preds = %159, %156, %104, %67, %40, %30
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i8* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i32 @ice_fill_rss_lut(i64*, i32, i32) #1

declare dso_local i64 @ice_set_rss(%struct.ice_vsi*, i64*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
