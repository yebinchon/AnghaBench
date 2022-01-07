; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_active_scan_req_for_passive_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_scan.c_mwifiex_active_scan_req_for_passive_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_adapter*, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.mwifiex_adapter = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.mwifiex_user_scan_cfg = type { i32, i32, i32, i32* }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"No BSS with hidden SSID found on DFS channels\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MWIFIEX_USER_SCAN_CHAN_MAX = common dso_local global i64 0, align 8
@NL80211_SCAN_FLAG_RANDOM_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"scan failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*)* @mwifiex_active_scan_req_for_passive_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_active_scan_req_for_passive_chan(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mwifiex_user_scan_cfg*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %8, i32 0, i32 0
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %9, align 8
  store %struct.mwifiex_adapter* %10, %struct.mwifiex_adapter** %5, align 8
  store i64 0, i64* %6, align 8
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %12 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %17 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %16, i32 0, i32 2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %22 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %15, %1
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 0
  store i32 0, i32* %27, align 4
  store i32 0, i32* %2, align 4
  br label %134

28:                                               ; preds = %20
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %30 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %28
  %37 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %38 = load i32, i32* @INFO, align 4
  %39 = call i32 @mwifiex_dbg(%struct.mwifiex_adapter* %37, i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %134

40:                                               ; preds = %28
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.mwifiex_user_scan_cfg* @kzalloc(i32 24, i32 %41)
  store %struct.mwifiex_user_scan_cfg* %42, %struct.mwifiex_user_scan_cfg** %7, align 8
  %43 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %7, align 8
  %44 = icmp ne %struct.mwifiex_user_scan_cfg* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %134

48:                                               ; preds = %40
  store i64 0, i64* %6, align 8
  br label %49

49:                                               ; preds = %75, %48
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @MWIFIEX_USER_SCAN_CHAN_MAX, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %55 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %54, i32 0, i32 1
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  br label %78

63:                                               ; preds = %53
  %64 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %7, align 8
  %65 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %70 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = load i64, i64* %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %72
  %74 = call i32 @memcpy(i32* %68, %struct.TYPE_5__* %73, i32 4)
  br label %75

75:                                               ; preds = %63
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %6, align 8
  br label %49

78:                                               ; preds = %62, %49
  %79 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %5, align 8
  %80 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %79, i32 0, i32 0
  store i32 1, i32* %80, align 4
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %82 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %81, i32 0, i32 2
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NL80211_SCAN_FLAG_RANDOM_ADDR, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %78
  %90 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %7, align 8
  %91 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %94 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @ether_addr_copy(i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %89, %78
  %100 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %101 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %100, i32 0, i32 2
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %7, align 8
  %106 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %105, i32 0, i32 1
  store i32 %104, i32* %106, align 4
  %107 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %108 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %107, i32 0, i32 2
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %7, align 8
  %113 = getelementptr inbounds %struct.mwifiex_user_scan_cfg, %struct.mwifiex_user_scan_cfg* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %115 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %7, align 8
  %116 = call i32 @mwifiex_scan_networks(%struct.mwifiex_private* %114, %struct.mwifiex_user_scan_cfg* %115)
  store i32 %116, i32* %4, align 4
  %117 = load %struct.mwifiex_user_scan_cfg*, %struct.mwifiex_user_scan_cfg** %7, align 8
  %118 = call i32 @kfree(%struct.mwifiex_user_scan_cfg* %117)
  %119 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %120 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %119, i32 0, i32 1
  %121 = call i32 @memset(%struct.TYPE_5__** %120, i32 0, i32 8)
  %122 = load i32, i32* %4, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %99
  %125 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %126 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %125, i32 0, i32 0
  %127 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %126, align 8
  %128 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 @dev_err(i32 %129, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %124, %45, %36, %25
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*) #1

declare dso_local %struct.mwifiex_user_scan_cfg* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i32 @mwifiex_scan_networks(%struct.mwifiex_private*, %struct.mwifiex_user_scan_cfg*) #1

declare dso_local i32 @kfree(%struct.mwifiex_user_scan_cfg*) #1

declare dso_local i32 @memset(%struct.TYPE_5__**, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
