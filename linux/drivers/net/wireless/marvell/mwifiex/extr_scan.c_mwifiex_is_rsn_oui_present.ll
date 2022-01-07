; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_is_rsn_oui_present.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_is_rsn_oui_present.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_bssdescriptor = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ie_body = type { i32 }

@MWIFIEX_OUI_NOT_PRESENT = common dso_local global i64 0, align 8
@WLAN_EID_RSN = common dso_local global i32 0, align 4
@RSN_GTK_OUI_OFFSET = common dso_local global i32 0, align 4
@mwifiex_rsn_oui = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mwifiex_bssdescriptor*, i64)* @mwifiex_is_rsn_oui_present to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mwifiex_is_rsn_oui_present(%struct.mwifiex_bssdescriptor* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mwifiex_bssdescriptor*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ie_body*, align 8
  %8 = alloca i64, align 8
  store %struct.mwifiex_bssdescriptor* %0, %struct.mwifiex_bssdescriptor** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* @MWIFIEX_OUI_NOT_PRESENT, align 8
  store i64 %9, i64* %8, align 8
  %10 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %4, align 8
  %11 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = load i32, i32* @WLAN_EID_RSN, align 4
  %14 = call i64 @has_ieee_hdr(%struct.TYPE_2__* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %40

16:                                               ; preds = %2
  %17 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %4, align 8
  %18 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i64*
  %23 = load i32, i32* @RSN_GTK_OUI_OFFSET, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = bitcast i64* %25 to %struct.ie_body*
  store %struct.ie_body* %26, %struct.ie_body** %7, align 8
  %27 = load i64**, i64*** @mwifiex_rsn_oui, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds i64*, i64** %27, i64 %28
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  store i64* %31, i64** %6, align 8
  %32 = load %struct.ie_body*, %struct.ie_body** %7, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = call i64 @mwifiex_search_oui_in_ie(%struct.ie_body* %32, i64* %33)
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %16
  %38 = load i64, i64* %8, align 8
  store i64 %38, i64* %3, align 8
  br label %42

39:                                               ; preds = %16
  br label %40

40:                                               ; preds = %39, %2
  %41 = load i64, i64* %8, align 8
  store i64 %41, i64* %3, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

declare dso_local i64 @has_ieee_hdr(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @mwifiex_search_oui_in_ie(%struct.ie_body*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
