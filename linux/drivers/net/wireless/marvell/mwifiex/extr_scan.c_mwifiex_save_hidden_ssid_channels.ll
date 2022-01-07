; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_save_hidden_ssid_channels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_save_hidden_ssid_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }
%struct.cfg80211_bss = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mwifiex_bssdescriptor = type { %struct.mwifiex_bssdescriptor*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"found hidden SSID\0A\00", align 1
@MWIFIEX_USER_SCAN_CHAN_MAX = common dso_local global i32 0, align 4
@MWIFIEX_SCAN_TYPE_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.cfg80211_bss*)* @mwifiex_save_hidden_ssid_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_save_hidden_ssid_channels(%struct.mwifiex_private* %0, %struct.cfg80211_bss* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.cfg80211_bss*, align 8
  %6 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.cfg80211_bss* %1, %struct.cfg80211_bss** %5, align 8
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mwifiex_bssdescriptor* @kzalloc(i32 16, i32 %9)
  store %struct.mwifiex_bssdescriptor* %10, %struct.mwifiex_bssdescriptor** %6, align 8
  %11 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %12 = icmp ne %struct.mwifiex_bssdescriptor* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %111

16:                                               ; preds = %2
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %18 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %19 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %20 = call i32 @mwifiex_fill_new_bss_desc(%struct.mwifiex_private* %17, %struct.cfg80211_bss* %18, %struct.mwifiex_bssdescriptor* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  br label %104

24:                                               ; preds = %16
  %25 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %25, i32 0, i32 1
  %27 = call i64 @mwifiex_is_hidden_ssid(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %103

29:                                               ; preds = %24
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @INFO, align 4
  %34 = call i32 @mwifiex_dbg(i32 %32, i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %35

35:                                               ; preds = %99, %29
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @MWIFIEX_USER_SCAN_CHAN_MAX, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %102

39:                                               ; preds = %35
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %41 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %49 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %47, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %39
  br label %102

55:                                               ; preds = %39
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %57 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %55
  %66 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %67 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %72 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i64 %70, i64* %77, align 8
  %78 = load %struct.cfg80211_bss*, %struct.cfg80211_bss** %5, align 8
  %79 = getelementptr inbounds %struct.cfg80211_bss, %struct.cfg80211_bss* %78, i32 0, i32 0
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %84 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 2
  store i32 %82, i32* %89, align 4
  %90 = load i32, i32* @MWIFIEX_SCAN_TYPE_ACTIVE, align 4
  %91 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %92 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = load i32, i32* %8, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %90, i32* %97, align 8
  br label %102

98:                                               ; preds = %55
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %8, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %8, align 4
  br label %35

102:                                              ; preds = %65, %54, %35
  br label %103

103:                                              ; preds = %102, %24
  br label %104

104:                                              ; preds = %103, %23
  %105 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %106 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %105, i32 0, i32 0
  %107 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %106, align 8
  %108 = call i32 @kfree(%struct.mwifiex_bssdescriptor* %107)
  %109 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %6, align 8
  %110 = call i32 @kfree(%struct.mwifiex_bssdescriptor* %109)
  store i32 0, i32* %3, align 4
  br label %111

111:                                              ; preds = %104, %13
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.mwifiex_bssdescriptor* @kzalloc(i32, i32) #1

declare dso_local i32 @mwifiex_fill_new_bss_desc(%struct.mwifiex_private*, %struct.cfg80211_bss*, %struct.mwifiex_bssdescriptor*) #1

declare dso_local i64 @mwifiex_is_hidden_ssid(i32*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*) #1

declare dso_local i32 @kfree(%struct.mwifiex_bssdescriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
