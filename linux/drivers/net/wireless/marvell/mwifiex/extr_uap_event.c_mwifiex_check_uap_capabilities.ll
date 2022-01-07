; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_event.c_mwifiex_check_uap_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_uap_event.c_mwifiex_check_uap_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32* }
%struct.mwifiex_ie_types_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ieee_types_wmm_parameter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK = common dso_local global i32 0, align 4
@MWIFIEX_BSS_START_EVT_FIX_SIZE = common dso_local global i32 0, align 4
@EVT_D = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"uap capabilities:\00", align 1
@EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"info: check uap capabilities:\09wmm parameter set count: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, %struct.sk_buff*)* @mwifiex_check_uap_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_check_uap_capabilities(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mwifiex_ie_types_data*, align 8
  %9 = alloca %struct.ieee_types_wmm_parameter*, align 8
  %10 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store %struct.ieee_types_wmm_parameter* null, %struct.ieee_types_wmm_parameter** %9, align 8
  %11 = load i32, i32* @IEEE80211_WMM_IE_AP_QOSINFO_PARAM_SET_CNT_MASK, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = load i32, i32* @MWIFIEX_BSS_START_EVT_FIX_SIZE, align 4
  %16 = call i32 @skb_pull(%struct.sk_buff* %14, i32 %15)
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %6, align 8
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EVT_D, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @mwifiex_dbg_dump(i32 %25, i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* %29, i32 %32)
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = load i32, i32* @MWIFIEX_BSS_START_EVT_FIX_SIZE, align 4
  %36 = call i32 @skb_push(%struct.sk_buff* %34, i32 %35)
  br label %37

37:                                               ; preds = %98, %2
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp uge i64 %39, 8
  br i1 %40, label %41, label %111

41:                                               ; preds = %37
  %42 = load i32*, i32** %6, align 8
  %43 = bitcast i32* %42 to %struct.mwifiex_ie_types_data*
  store %struct.mwifiex_ie_types_data* %43, %struct.mwifiex_ie_types_data** %8, align 8
  %44 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %8, align 8
  %45 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le16_to_cpu(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 8
  %54 = icmp ult i64 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %111

56:                                               ; preds = %41
  %57 = load %struct.mwifiex_ie_types_data*, %struct.mwifiex_ie_types_data** %8, align 8
  %58 = getelementptr inbounds %struct.mwifiex_ie_types_data, %struct.mwifiex_ie_types_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le16_to_cpu(i32 %60)
  switch i32 %61, label %97 [
    i32 130, label %62
    i32 128, label %65
    i32 129, label %68
  ]

62:                                               ; preds = %56
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %64 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %63, i32 0, i32 1
  store i32 1, i32* %64, align 4
  br label %98

65:                                               ; preds = %56
  %66 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %67 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %66, i32 0, i32 2
  store i32 1, i32* %67, align 4
  br label %98

68:                                               ; preds = %56
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 2
  %71 = bitcast i32* %70 to i8*
  %72 = bitcast i8* %71 to %struct.ieee_types_wmm_parameter*
  store %struct.ieee_types_wmm_parameter* %72, %struct.ieee_types_wmm_parameter** %9, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %9, align 8
  %75 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %9, align 8
  %78 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 129, i32* %79, align 4
  %80 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %81 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @EVENT, align 4
  %84 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %9, align 8
  %85 = getelementptr inbounds %struct.ieee_types_wmm_parameter, %struct.ieee_types_wmm_parameter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %10, align 4
  %88 = and i32 %86, %87
  %89 = call i32 @mwifiex_dbg(i32 %82, i32 %83, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  %90 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %91 = call i32 @mwifiex_wmm_setup_ac_downgrade(%struct.mwifiex_private* %90)
  %92 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %93 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %92, i32 0, i32 0
  store i32 1, i32* %93, align 4
  %94 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %95 = load %struct.ieee_types_wmm_parameter*, %struct.ieee_types_wmm_parameter** %9, align 8
  %96 = call i32 @mwifiex_wmm_setup_queue_priorities(%struct.mwifiex_private* %94, %struct.ieee_types_wmm_parameter* %95)
  br label %98

97:                                               ; preds = %56
  br label %98

98:                                               ; preds = %97, %68, %65, %62
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = add i64 %100, 8
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 %101
  store i32* %103, i32** %6, align 8
  %104 = load i32, i32* %7, align 4
  %105 = sext i32 %104 to i64
  %106 = add i64 %105, 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = sub i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %37

111:                                              ; preds = %55, %37
  ret i32 0
}

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @mwifiex_dbg_dump(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @mwifiex_wmm_setup_ac_downgrade(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_wmm_setup_queue_priorities(%struct.mwifiex_private*, %struct.ieee_types_wmm_parameter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
