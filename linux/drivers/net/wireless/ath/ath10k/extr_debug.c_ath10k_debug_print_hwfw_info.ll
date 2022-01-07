; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debug.c_ath10k_debug_print_hwfw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_debug.c_ath10k_debug_print_hwfw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.firmware* }
%struct.firmware = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s target 0x%08x chip_id 0x%08x sub %04x:%04x\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"kconfig debug %d debugfs %d tracing %d dfs %d testmode %d\0A\00", align 1
@CONFIG_ATH10K_DEBUG = common dso_local global i32 0, align 4
@CONFIG_ATH10K_DEBUGFS = common dso_local global i32 0, align 4
@CONFIG_ATH10K_TRACING = common dso_local global i32 0, align 4
@CONFIG_ATH10K_DFS_CERTIFIED = common dso_local global i32 0, align 4
@CONFIG_NL80211_TESTMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"firmware ver %s api %d features %s crc32 %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_debug_print_hwfw_info(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca [128 x i8], align 16
  %5 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %6 = bitcast [128 x i8]* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %6, i8 0, i64 128, i1 false)
  store i32 0, i32* %5, align 4
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %9 = call i32 @ath10k_core_get_fw_features_str(%struct.ath10k* %7, i8* %8, i32 128)
  %10 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %11 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = inttoptr i64 %22 to i8*
  %24 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.ath10k*, i8*, i32, i32, i8*, i32, ...) @ath10k_info(%struct.ath10k* %10, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i8* %23, i32 %27, i32 %31)
  %33 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %34 = load i32, i32* @CONFIG_ATH10K_DEBUG, align 4
  %35 = call i32 @IS_ENABLED(i32 %34)
  %36 = load i32, i32* @CONFIG_ATH10K_DEBUGFS, align 4
  %37 = call i32 @IS_ENABLED(i32 %36)
  %38 = load i32, i32* @CONFIG_ATH10K_TRACING, align 4
  %39 = call i32 @IS_ENABLED(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = load i32, i32* @CONFIG_ATH10K_DFS_CERTIFIED, align 4
  %43 = call i32 @IS_ENABLED(i32 %42)
  %44 = load i32, i32* @CONFIG_NL80211_TESTMODE, align 4
  %45 = call i32 @IS_ENABLED(i32 %44)
  %46 = call i32 (%struct.ath10k*, i8*, i32, i32, i8*, i32, ...) @ath10k_info(%struct.ath10k* %33, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %37, i8* %41, i32 %43, i32 %45)
  %47 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.firmware*, %struct.firmware** %50, align 8
  store %struct.firmware* %51, %struct.firmware** %3, align 8
  %52 = load %struct.firmware*, %struct.firmware** %3, align 8
  %53 = icmp ne %struct.firmware* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %1
  %55 = load %struct.firmware*, %struct.firmware** %3, align 8
  %56 = getelementptr inbounds %struct.firmware, %struct.firmware* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.firmware*, %struct.firmware** %3, align 8
  %59 = getelementptr inbounds %struct.firmware, %struct.firmware* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @crc32_le(i32 0, i32 %57, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %54, %1
  %63 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %64 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %65 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %64, i32 0, i32 1
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %72 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %4, i64 0, i64 0
  %75 = load i32, i32* %5, align 4
  %76 = call i32 (%struct.ath10k*, i8*, i32, i32, i8*, i32, ...) @ath10k_info(%struct.ath10k* %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73, i8* %74, i32 %75)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ath10k_core_get_fw_features_str(%struct.ath10k*, i8*, i32) #2

declare dso_local i32 @ath10k_info(%struct.ath10k*, i8*, i32, i32, i8*, i32, ...) #2

declare dso_local i32 @IS_ENABLED(i32) #2

declare dso_local i32 @crc32_le(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
