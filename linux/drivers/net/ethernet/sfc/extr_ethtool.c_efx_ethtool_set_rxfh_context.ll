; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_set_rxfh_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_set_rxfh_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.efx_nic = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.efx_nic*, %struct.efx_rss_context*, i32*, i64*)* }
%struct.efx_rss_context = type { i64*, i32, i32*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ETH_RSS_HASH_NO_CHANGE = common dso_local global i64 0, align 8
@ETH_RSS_HASH_TOP = common dso_local global i64 0, align 8
@ETH_RXFH_CONTEXT_ALLOC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_EF10_RSS_CONTEXT_INVALID = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i64*, i64, i32*, i32)* @efx_ethtool_set_rxfh_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_set_rxfh_context(%struct.net_device* %0, i32* %1, i64* %2, i64 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.efx_nic*, align 8
  %15 = alloca %struct.efx_rss_context*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %8, align 8
  store i32* %1, i32** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.net_device*, %struct.net_device** %8, align 8
  %19 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %18)
  store %struct.efx_nic* %19, %struct.efx_nic** %14, align 8
  store i32 0, i32* %16, align 4
  %20 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.efx_nic*, %struct.efx_rss_context*, i32*, i64*)*, i32 (%struct.efx_nic*, %struct.efx_rss_context*, i32*, i64*)** %23, align 8
  %25 = icmp ne i32 (%struct.efx_nic*, %struct.efx_rss_context*, i32*, i64*)* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %6
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %7, align 4
  br label %146

29:                                               ; preds = %6
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @ETH_RSS_HASH_NO_CHANGE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @ETH_RSS_HASH_TOP, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %146

40:                                               ; preds = %33, %29
  %41 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %42 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i32*, i32** %12, align 8
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @ETH_RXFH_CONTEXT_ALLOC, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %73

48:                                               ; preds = %40
  %49 = load i32, i32* %13, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %17, align 4
  br label %141

54:                                               ; preds = %48
  %55 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %56 = call %struct.efx_rss_context* @efx_alloc_rss_context_entry(%struct.efx_nic* %55)
  store %struct.efx_rss_context* %56, %struct.efx_rss_context** %15, align 8
  %57 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %58 = icmp ne %struct.efx_rss_context* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %17, align 4
  br label %141

62:                                               ; preds = %54
  %63 = load i32, i32* @EFX_EF10_RSS_CONTEXT_INVALID, align 4
  %64 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %65 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %67 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %68 = call i32 @efx_set_default_rx_indir_table(%struct.efx_nic* %66, %struct.efx_rss_context* %67)
  %69 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %70 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = call i32 @netdev_rss_key_fill(i64* %71, i32 8)
  store i32 1, i32* %16, align 4
  br label %84

73:                                               ; preds = %40
  %74 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = load i32, i32* %75, align 4
  %77 = call %struct.efx_rss_context* @efx_find_rss_context_entry(%struct.efx_nic* %74, i32 %76)
  store %struct.efx_rss_context* %77, %struct.efx_rss_context** %15, align 8
  %78 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %79 = icmp ne %struct.efx_rss_context* %78, null
  br i1 %79, label %83, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* @ENOENT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %17, align 4
  br label %141

83:                                               ; preds = %73
  br label %84

84:                                               ; preds = %83, %62
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %84
  %88 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %89 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %88, i32 0, i32 1
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32 (%struct.efx_nic*, %struct.efx_rss_context*, i32*, i64*)*, i32 (%struct.efx_nic*, %struct.efx_rss_context*, i32*, i64*)** %91, align 8
  %93 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %94 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %95 = call i32 %92(%struct.efx_nic* %93, %struct.efx_rss_context* %94, i32* null, i64* null)
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %17, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %87
  %99 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %100 = call i32 @efx_free_rss_context_entry(%struct.efx_rss_context* %99)
  br label %101

101:                                              ; preds = %98, %87
  br label %141

102:                                              ; preds = %84
  %103 = load i64*, i64** %10, align 8
  %104 = icmp ne i64* %103, null
  br i1 %104, label %109, label %105

105:                                              ; preds = %102
  %106 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %107 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  store i64* %108, i64** %10, align 8
  br label %109

109:                                              ; preds = %105, %102
  %110 = load i32*, i32** %9, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %109
  %113 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %114 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  store i32* %115, i32** %9, align 8
  br label %116

116:                                              ; preds = %112, %109
  %117 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %118 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %117, i32 0, i32 1
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i32 (%struct.efx_nic*, %struct.efx_rss_context*, i32*, i64*)*, i32 (%struct.efx_nic*, %struct.efx_rss_context*, i32*, i64*)** %120, align 8
  %122 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %123 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %124 = load i32*, i32** %9, align 8
  %125 = load i64*, i64** %10, align 8
  %126 = call i32 %121(%struct.efx_nic* %122, %struct.efx_rss_context* %123, i32* %124, i64* %125)
  store i32 %126, i32* %17, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %116
  %130 = load i32, i32* %16, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %129
  %133 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %134 = call i32 @efx_free_rss_context_entry(%struct.efx_rss_context* %133)
  br label %140

135:                                              ; preds = %129, %116
  %136 = load %struct.efx_rss_context*, %struct.efx_rss_context** %15, align 8
  %137 = getelementptr inbounds %struct.efx_rss_context, %struct.efx_rss_context* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load i32*, i32** %12, align 8
  store i32 %138, i32* %139, align 4
  br label %140

140:                                              ; preds = %135, %132
  br label %141

141:                                              ; preds = %140, %101, %80, %59, %51
  %142 = load %struct.efx_nic*, %struct.efx_nic** %14, align 8
  %143 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %142, i32 0, i32 0
  %144 = call i32 @mutex_unlock(i32* %143)
  %145 = load i32, i32* %17, align 4
  store i32 %145, i32* %7, align 4
  br label %146

146:                                              ; preds = %141, %37, %26
  %147 = load i32, i32* %7, align 4
  ret i32 %147
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.efx_rss_context* @efx_alloc_rss_context_entry(%struct.efx_nic*) #1

declare dso_local i32 @efx_set_default_rx_indir_table(%struct.efx_nic*, %struct.efx_rss_context*) #1

declare dso_local i32 @netdev_rss_key_fill(i64*, i32) #1

declare dso_local %struct.efx_rss_context* @efx_find_rss_context_entry(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_free_rss_context_entry(%struct.efx_rss_context*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
