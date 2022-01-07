; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_ethtool.c_aq_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i64, i64 }
%struct.aq_nic_s = type { i64, i32* }
%struct.aq_nic_cfg_s = type { i64, i8*, i8*, %struct.aq_hw_caps_s* }
%struct.aq_hw_caps_s = type { i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@AQ_HW_RXD_MULTIPLE = common dso_local global i32 0, align 4
@AQ_HW_TXD_MULTIPLE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @aq_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.aq_nic_s*, align 8
  %8 = alloca %struct.aq_nic_cfg_s*, align 8
  %9 = alloca %struct.aq_hw_caps_s*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call %struct.aq_nic_s* @netdev_priv(%struct.net_device* %10)
  store %struct.aq_nic_s* %11, %struct.aq_nic_s** %7, align 8
  %12 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %13 = call %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s* %12)
  store %struct.aq_nic_cfg_s* %13, %struct.aq_nic_cfg_s** %8, align 8
  %14 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %15 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %14, i32 0, i32 3
  %16 = load %struct.aq_hw_caps_s*, %struct.aq_hw_caps_s** %15, align 8
  store %struct.aq_hw_caps_s* %16, %struct.aq_hw_caps_s** %9, align 8
  %17 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %2
  %22 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21, %2
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %142

29:                                               ; preds = %21
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i64 @netif_running(%struct.net_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  store i32 1, i32* %6, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i32 @dev_close(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %38 = call i32 @aq_nic_free_vectors(%struct.aq_nic_s* %37)
  %39 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.aq_hw_caps_s*, %struct.aq_hw_caps_s** %9, align 8
  %43 = getelementptr inbounds %struct.aq_hw_caps_s, %struct.aq_hw_caps_s* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @max(i32 %41, i32 %44)
  %46 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %47 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %46, i32 0, i32 2
  store i8* %45, i8** %47, align 8
  %48 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %49 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.aq_hw_caps_s*, %struct.aq_hw_caps_s** %9, align 8
  %52 = getelementptr inbounds %struct.aq_hw_caps_s, %struct.aq_hw_caps_s* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @min(i8* %50, i32 %53)
  %55 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %56 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  %57 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %58 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %57, i32 0, i32 2
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* @AQ_HW_RXD_MULTIPLE, align 4
  %61 = call i8* @ALIGN(i8* %59, i32 %60)
  %62 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %63 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %65 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.aq_hw_caps_s*, %struct.aq_hw_caps_s** %9, align 8
  %68 = getelementptr inbounds %struct.aq_hw_caps_s, %struct.aq_hw_caps_s* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @max(i32 %66, i32 %69)
  %71 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %72 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %71, i32 0, i32 1
  store i8* %70, i8** %72, align 8
  %73 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %74 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.aq_hw_caps_s*, %struct.aq_hw_caps_s** %9, align 8
  %77 = getelementptr inbounds %struct.aq_hw_caps_s, %struct.aq_hw_caps_s* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @min(i8* %75, i32 %78)
  %80 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %81 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %83 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* @AQ_HW_TXD_MULTIPLE, align 4
  %86 = call i8* @ALIGN(i8* %84, i32 %85)
  %87 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %88 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %87, i32 0, i32 1
  store i8* %86, i8** %88, align 8
  %89 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %90 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  br label %91

91:                                               ; preds = %130, %36
  %92 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %93 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %96 = getelementptr inbounds %struct.aq_nic_cfg_s, %struct.aq_nic_cfg_s* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ult i64 %94, %97
  br i1 %98, label %99, label %135

99:                                               ; preds = %91
  %100 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %101 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %102 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.aq_nic_cfg_s*, %struct.aq_nic_cfg_s** %8, align 8
  %105 = call i32 @aq_vec_alloc(%struct.aq_nic_s* %100, i64 %103, %struct.aq_nic_cfg_s* %104)
  %106 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %107 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %110 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %105, i32* %112, align 4
  %113 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %114 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %117 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %115, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = call i64 @unlikely(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %99
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %5, align 4
  br label %142

129:                                              ; preds = %99
  br label %130

130:                                              ; preds = %129
  %131 = load %struct.aq_nic_s*, %struct.aq_nic_s** %7, align 8
  %132 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %132, align 8
  br label %91

135:                                              ; preds = %91
  %136 = load i32, i32* %6, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = call i32 @dev_open(%struct.net_device* %139, i32* null)
  store i32 %140, i32* %5, align 4
  br label %141

141:                                              ; preds = %138, %135
  br label %142

142:                                              ; preds = %141, %126, %26
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local %struct.aq_nic_s* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.aq_nic_cfg_s* @aq_nic_get_cfg(%struct.aq_nic_s*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @dev_close(%struct.net_device*) #1

declare dso_local i32 @aq_nic_free_vectors(%struct.aq_nic_s*) #1

declare dso_local i8* @max(i32, i32) #1

declare dso_local i8* @min(i8*, i32) #1

declare dso_local i8* @ALIGN(i8*, i32) #1

declare dso_local i32 @aq_vec_alloc(%struct.aq_nic_s*, i64, %struct.aq_nic_cfg_s*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_open(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
