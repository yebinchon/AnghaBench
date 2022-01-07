; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_bt_coex_wlan_param_update_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_sta_event.c_mwifiex_bt_coex_wlan_param_update_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter* }
%struct.mwifiex_adapter = type { i32, i32, i32, i8*, i32, i32, i8* }
%struct.sk_buff = type { i32, i32* }
%struct.mwifiex_ie_types_header = type { i32, i32 }
%struct.mwifiex_ie_types_btcoex_aggr_win_size = type { i32, i32, i32 }
%struct.mwifiex_ie_types_btcoex_scan_time = type { i32, i32, i32 }

@.str = private unnamed_addr constant [59 x i8] c"coex_scan=%d min_scan=%d coex_win=%d, tx_win=%d rx_win=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_bt_coex_wlan_param_update_event(%struct.mwifiex_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mwifiex_adapter*, align 8
  %6 = alloca %struct.mwifiex_ie_types_header*, align 8
  %7 = alloca %struct.mwifiex_ie_types_btcoex_aggr_win_size*, align 8
  %8 = alloca %struct.mwifiex_ie_types_btcoex_scan_time*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %14, align 8
  store %struct.mwifiex_adapter* %15, %struct.mwifiex_adapter** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = sub i64 %19, 4
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  store i32* %25, i32** %10, align 8
  br label %26

26:                                               ; preds = %95, %2
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp uge i64 %28, 8
  br i1 %29, label %30, label %108

30:                                               ; preds = %26
  %31 = load i32*, i32** %10, align 8
  %32 = bitcast i32* %31 to %struct.mwifiex_ie_types_header*
  store %struct.mwifiex_ie_types_header* %32, %struct.mwifiex_ie_types_header** %6, align 8
  %33 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %6, align 8
  %34 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @le16_to_cpu(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %6, align 8
  %39 = getelementptr inbounds %struct.mwifiex_ie_types_header, %struct.mwifiex_ie_types_header* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le16_to_cpu(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = add i64 %44, 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = icmp ugt i64 %45, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %30
  br label %108

50:                                               ; preds = %30
  %51 = load i32, i32* %11, align 4
  switch i32 %51, label %94 [
    i32 129, label %52
    i32 128, label %74
  ]

52:                                               ; preds = %50
  %53 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %6, align 8
  %54 = bitcast %struct.mwifiex_ie_types_header* %53 to %struct.mwifiex_ie_types_btcoex_aggr_win_size*
  store %struct.mwifiex_ie_types_btcoex_aggr_win_size* %54, %struct.mwifiex_ie_types_btcoex_aggr_win_size** %7, align 8
  %55 = load %struct.mwifiex_ie_types_btcoex_aggr_win_size*, %struct.mwifiex_ie_types_btcoex_aggr_win_size** %7, align 8
  %56 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, %struct.mwifiex_ie_types_btcoex_aggr_win_size* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %59 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load %struct.mwifiex_ie_types_btcoex_aggr_win_size*, %struct.mwifiex_ie_types_btcoex_aggr_win_size** %7, align 8
  %61 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, %struct.mwifiex_ie_types_btcoex_aggr_win_size* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %64 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.mwifiex_ie_types_btcoex_aggr_win_size*, %struct.mwifiex_ie_types_btcoex_aggr_win_size** %7, align 8
  %66 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_aggr_win_size, %struct.mwifiex_ie_types_btcoex_aggr_win_size* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %69 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %71 = call i32 @mwifiex_coex_ampdu_rxwinsize(%struct.mwifiex_adapter* %70)
  %72 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %73 = call i32 @mwifiex_update_ampdu_txwinsize(%struct.mwifiex_adapter* %72)
  br label %95

74:                                               ; preds = %50
  %75 = load %struct.mwifiex_ie_types_header*, %struct.mwifiex_ie_types_header** %6, align 8
  %76 = bitcast %struct.mwifiex_ie_types_header* %75 to %struct.mwifiex_ie_types_btcoex_scan_time*
  store %struct.mwifiex_ie_types_btcoex_scan_time* %76, %struct.mwifiex_ie_types_btcoex_scan_time** %8, align 8
  %77 = load %struct.mwifiex_ie_types_btcoex_scan_time*, %struct.mwifiex_ie_types_btcoex_scan_time** %8, align 8
  %78 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, %struct.mwifiex_ie_types_btcoex_scan_time* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %81 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load %struct.mwifiex_ie_types_btcoex_scan_time*, %struct.mwifiex_ie_types_btcoex_scan_time** %8, align 8
  %83 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, %struct.mwifiex_ie_types_btcoex_scan_time* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le16_to_cpu(i32 %84)
  %86 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %87 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %86, i32 0, i32 3
  store i8* %85, i8** %87, align 8
  %88 = load %struct.mwifiex_ie_types_btcoex_scan_time*, %struct.mwifiex_ie_types_btcoex_scan_time** %8, align 8
  %89 = getelementptr inbounds %struct.mwifiex_ie_types_btcoex_scan_time, %struct.mwifiex_ie_types_btcoex_scan_time* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @le16_to_cpu(i32 %90)
  %92 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %93 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %92, i32 0, i32 6
  store i8* %91, i8** %93, align 8
  br label %95

94:                                               ; preds = %50
  br label %95

95:                                               ; preds = %94, %74, %52
  %96 = load i32, i32* %12, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = sub i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = add i64 %104, 8
  %106 = load i32*, i32** %10, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 %105
  store i32* %107, i32** %10, align 8
  br label %26

108:                                              ; preds = %49, %26
  %109 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %110 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %113 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %116 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %115, i32 0, i32 3
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %119 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %122 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %125 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @dev_dbg(i32 %111, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %114, i8* %117, i32 %120, i32 %123, i32 %126)
  ret void
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_coex_ampdu_rxwinsize(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_update_ampdu_txwinsize(%struct.mwifiex_adapter*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
