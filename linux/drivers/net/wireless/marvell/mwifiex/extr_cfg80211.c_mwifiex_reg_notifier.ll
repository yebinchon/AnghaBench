; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_reg_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_reg_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.regulatory_request = type { i32, i32* }
%struct.mwifiex_adapter = type { i8* }
%struct.mwifiex_private = type { i32 }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"info: cfg80211 regulatory domain callback for %c%c\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"unknown regdom initiator: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiphy*, %struct.regulatory_request*)* @mwifiex_reg_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_reg_notifier(%struct.wiphy* %0, %struct.regulatory_request* %1) #0 {
  %3 = alloca %struct.wiphy*, align 8
  %4 = alloca %struct.regulatory_request*, align 8
  %5 = alloca %struct.mwifiex_adapter*, align 8
  %6 = alloca %struct.mwifiex_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %3, align 8
  store %struct.regulatory_request* %1, %struct.regulatory_request** %4, align 8
  %7 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %8 = call %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy* %7)
  store %struct.mwifiex_adapter* %8, %struct.mwifiex_adapter** %5, align 8
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %10 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %11 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %9, i32 %10)
  store %struct.mwifiex_private* %11, %struct.mwifiex_private** %6, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %13 = load i32, i32* @INFO, align 4
  %14 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %15 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %20 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %12, i32 %13, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23)
  %25 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %26 = call i32 @mwifiex_reg_apply_radar_flags(%struct.wiphy* %25)
  %27 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %28 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  switch i32 %29, label %31 [
    i32 129, label %30
    i32 131, label %30
    i32 128, label %30
    i32 130, label %30
  ]

30:                                               ; preds = %2, %2, %2, %2
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %33 = load i32, i32* @ERROR, align 4
  %34 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %35 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %32, i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %65

38:                                               ; preds = %30
  %39 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %40 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i64 @strncmp(i32* %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 2)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %38
  %45 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %46 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %49 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i64 @strncmp(i32* %47, i8* %50, i32 8)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %55 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = load %struct.regulatory_request*, %struct.regulatory_request** %4, align 8
  %58 = getelementptr inbounds %struct.regulatory_request, %struct.regulatory_request* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @memcpy(i8* %56, i32* %59, i32 8)
  %61 = load %struct.wiphy*, %struct.wiphy** %3, align 8
  %62 = call i32 @mwifiex_send_domain_info_cmd_fw(%struct.wiphy* %61)
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %6, align 8
  %64 = call i32 @mwifiex_dnld_txpwr_table(%struct.mwifiex_private* %63)
  br label %65

65:                                               ; preds = %31, %53, %44, %38
  ret void
}

declare dso_local %struct.mwifiex_adapter* @mwifiex_cfg80211_get_adapter(%struct.wiphy*) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, ...) #1

declare dso_local i32 @mwifiex_reg_apply_radar_flags(%struct.wiphy*) #1

declare dso_local i64 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @mwifiex_send_domain_info_cmd_fw(%struct.wiphy*) #1

declare dso_local i32 @mwifiex_dnld_txpwr_table(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
