; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_wow.c_ath10k_wow_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.ath10k = type { i32, %struct.TYPE_13__, %struct.TYPE_12__*, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@ATH10K_FW_FEATURE_WOWLAN_SUPPORT = common dso_local global i32 0, align 4
@WMI_SERVICE_WOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ath10k_wowlan_support = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@ATH10K_HW_TXRX_NATIVE_WIFI = common dso_local global i64 0, align 8
@WOW_MAX_REDUCE = common dso_local global i64 0, align 8
@WMI_SERVICE_NLO = common dso_local global i32 0, align 4
@WIPHY_WOWLAN_NET_DETECT = common dso_local global i32 0, align 4
@WMI_PNO_MAX_SUPP_NETWORKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_wow_init(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %4 = load i32, i32* @ATH10K_FW_FEATURE_WOWLAN_SUPPORT, align 4
  %5 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %6 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %5, i32 0, i32 4
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @test_bit(i32 %4, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

14:                                               ; preds = %1
  %15 = load i32, i32* @WMI_SERVICE_WOW, align 4
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i64 @test_bit(i32 %15, i32 %19)
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %102

29:                                               ; preds = %14
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = bitcast %struct.TYPE_14__* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 bitcast (%struct.TYPE_14__* @ath10k_wowlan_support to i8*), i64 20, i1 false)
  %34 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %35 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ATH10K_HW_TXRX_NATIVE_WIFI, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %29
  %41 = load i64, i64* @WOW_MAX_REDUCE, align 8
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %41
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %45, align 4
  %50 = load i64, i64* @WOW_MAX_REDUCE, align 8
  %51 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = sub nsw i64 %56, %50
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %54, align 4
  br label %59

59:                                               ; preds = %40, %29
  %60 = load i32, i32* @WMI_SERVICE_NLO, align 4
  %61 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @test_bit(i32 %60, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %59
  %68 = load i32, i32* @WIPHY_WOWLAN_NET_DETECT, align 4
  %69 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %70 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %68
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @WMI_PNO_MAX_SUPP_NETWORKS, align 4
  %76 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %77 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  store i32 %75, i32* %79, align 4
  br label %80

80:                                               ; preds = %67, %59
  %81 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %82 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %86 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i32 %84, i32* %88, align 4
  %89 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %90 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %93 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %92, i32 0, i32 2
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %97, align 8
  %98 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %99 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @device_set_wakeup_capable(i32 %100, i32 1)
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %80, %26, %13
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @device_set_wakeup_capable(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
