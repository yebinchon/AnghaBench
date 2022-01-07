; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_adhoc_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_adhoc_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_7__, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.mwifiex_bssdescriptor = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"info: adhoc join: curr_bss ssid =%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"info: adhoc join: curr_bss ssid_len =%u\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"info: adhoc join: ssid =%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"info: adhoc join: ssid_len =%u\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [86 x i8] c"info: ADHOC_J_CMD: new ad-hoc SSID\09is the same as current; not attempting to re-join\0A\00", align 1
@BAND_AAC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"info: curr_bss_params.channel = %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"info: curr_bss_params.band = %c\0A\00", align 1
@HostCmd_CMD_802_11_AD_HOC_JOIN = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_adhoc_join(%struct.mwifiex_private* %0, %struct.mwifiex_bssdescriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_bssdescriptor*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_bssdescriptor* %1, %struct.mwifiex_bssdescriptor** %5, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %7 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %6, i32 0, i32 1
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = load i32, i32* @INFO, align 4
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %8, i32 %9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %18 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = load i32, i32* @INFO, align 4
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %19, i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %26)
  %28 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %29 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %28, i32 0, i32 1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %31 = load i32, i32* @INFO, align 4
  %32 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %33 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %30, i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %35)
  %37 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %38 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %37, i32 0, i32 1
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* @INFO, align 4
  %41 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %42 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %39, i32 %40, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i64 %44)
  %46 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %47 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %2
  %54 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %55 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %54, i32 0, i32 2
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %57 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = call i32 @mwifiex_ssid_cmp(%struct.TYPE_8__* %55, %struct.TYPE_9__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %53
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %62
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load i32, i32* @INFO, align 4
  %75 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %73, i32 %74, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %134

76:                                               ; preds = %62, %53, %2
  %77 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %78 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ISSUPP_11ACENABLED(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %76
  %85 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %86 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %106, label %89

89:                                               ; preds = %84
  %90 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %91 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %89
  %95 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %96 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @BAND_AAC, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %94
  %104 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %105 = call i32 @mwifiex_set_11ac_ba_params(%struct.mwifiex_private* %104)
  br label %109

106:                                              ; preds = %94, %89, %84, %76
  %107 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %108 = call i32 @mwifiex_set_ba_params(%struct.mwifiex_private* %107)
  br label %109

109:                                              ; preds = %106, %103
  %110 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %111 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load i32, i32* @INFO, align 4
  %114 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %115 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %112, i32 %113, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %118)
  %120 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %121 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %120, i32 0, i32 1
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i32, i32* @INFO, align 4
  %124 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %125 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = call i32 (%struct.TYPE_10__*, i32, i8*, ...) @mwifiex_dbg(%struct.TYPE_10__* %122, i32 %123, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %127)
  %129 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %130 = load i32, i32* @HostCmd_CMD_802_11_AD_HOC_JOIN, align 4
  %131 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %132 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %133 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %129, i32 %130, i32 %131, i32 0, %struct.mwifiex_bssdescriptor* %132, i32 1)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %109, %70
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @mwifiex_dbg(%struct.TYPE_10__*, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_ssid_cmp(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @ISSUPP_11ACENABLED(i32) #1

declare dso_local i32 @mwifiex_set_11ac_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_set_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_bssdescriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
