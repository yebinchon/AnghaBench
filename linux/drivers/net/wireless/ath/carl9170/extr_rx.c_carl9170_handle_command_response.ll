; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_handle_command_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_rx.c_carl9170_handle_command_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.carl9170_rsp = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_vif = type { i32 }

@CARL9170_RSP_FLAG = common dso_local global i32 0, align 4
@CARL9170_CMD_ASYNC_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"FW: received over-/undersized event %x (%d, but should be %d).\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"dump:\00", align 1
@DUMP_PREFIX_NONE = common dso_local global i32 0, align 4
@CARL9170_RR_WATCHDOG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"FW: HD %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"FW:\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"FW: RADAR! Please report this incident to linux-wireless@vger.kernel.org !\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"FW: received unhandled event %x\0A\00", align 1
@AR9170_GPIO_PORT_WPS_BUTTON_PRESSED = common dso_local global i32 0, align 4
@KEY_WPS_BUTTON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @carl9170_handle_command_response(%struct.ar9170* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.carl9170_rsp*, align 8
  %8 = alloca %struct.ieee80211_vif*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.carl9170_rsp*
  store %struct.carl9170_rsp* %10, %struct.carl9170_rsp** %7, align 8
  %11 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %12 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @CARL9170_RSP_FLAG, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @CARL9170_RSP_FLAG, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %21 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @CARL9170_CMD_ASYNC_FLAG, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = call i32 @carl9170_cmd_callback(%struct.ar9170* %28, i64 %29, i8* %30)
  br label %32

32:                                               ; preds = %27, %19
  br label %159

33:                                               ; preds = %3
  %34 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %35 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub nsw i64 %38, 4
  %40 = icmp ne i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %69

44:                                               ; preds = %33
  %45 = call i64 (...) @net_ratelimit()
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %68

47:                                               ; preds = %44
  %48 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %49 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %54 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %58 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = sub nsw i64 %61, 4
  %63 = call i32 (i32, i8*, i32, ...) @wiphy_err(i32 %52, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %56, i64 %60, i64 %62)
  %64 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %64, i8* %65, i64 %66)
  br label %68

68:                                               ; preds = %47, %44
  br label %159

69:                                               ; preds = %33
  %70 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %71 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  switch i32 %73, label %144 [
    i32 136, label %74
    i32 133, label %96
    i32 140, label %100
    i32 141, label %101
    i32 132, label %102
    i32 134, label %106
    i32 137, label %113
    i32 135, label %128
    i32 138, label %139
    i32 139, label %140
  ]

74:                                               ; preds = %69
  %75 = call i32 (...) @rcu_read_lock()
  %76 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %77 = call %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170* %76)
  store %struct.ieee80211_vif* %77, %struct.ieee80211_vif** %8, align 8
  %78 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %79 = icmp ne %struct.ieee80211_vif* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %74
  %81 = call i32 (...) @rcu_read_unlock()
  br label %159

82:                                               ; preds = %74
  %83 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %8, align 8
  %84 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %93 [
    i32 128, label %86
    i32 130, label %90
    i32 131, label %90
    i32 129, label %90
  ]

86:                                               ; preds = %82
  %87 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %88 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %89 = call i32 @carl9170_handle_ps(%struct.ar9170* %87, %struct.carl9170_rsp* %88)
  br label %94

90:                                               ; preds = %82, %82, %82
  %91 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %92 = call i32 @carl9170_update_beacon(%struct.ar9170* %91, i32 1)
  br label %94

93:                                               ; preds = %82
  br label %94

94:                                               ; preds = %93, %90, %86
  %95 = call i32 (...) @rcu_read_unlock()
  br label %159

96:                                               ; preds = %69
  %97 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %98 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %99 = call i32 @carl9170_tx_process_status(%struct.ar9170* %97, %struct.carl9170_rsp* %98)
  br label %159

100:                                              ; preds = %69
  br label %159

101:                                              ; preds = %69
  br label %159

102:                                              ; preds = %69
  %103 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %104 = load i32, i32* @CARL9170_RR_WATCHDOG, align 4
  %105 = call i32 @carl9170_restart(%struct.ar9170* %103, i32 %104)
  br label %159

106:                                              ; preds = %69
  %107 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = getelementptr inbounds i8, i8* %108, i64 4
  %110 = load i64, i64* %6, align 8
  %111 = sub nsw i64 %110, 4
  %112 = call i32 @carl9170_dbg_message(%struct.ar9170* %107, i8* %109, i64 %111)
  br label %159

113:                                              ; preds = %69
  %114 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %115 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %114, i32 0, i32 0
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %6, align 8
  %120 = sub nsw i64 %119, 4
  %121 = call i32 @wiphy_dbg(i32 %118, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %120)
  %122 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 4
  %125 = load i64, i64* %6, align 8
  %126 = sub nsw i64 %125, 4
  %127 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %122, i8* %124, i64 %126)
  br label %159

128:                                              ; preds = %69
  %129 = call i64 (...) @net_ratelimit()
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %132, label %131

131:                                              ; preds = %128
  br label %159

132:                                              ; preds = %128
  %133 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %134 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @wiphy_info(i32 %137, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0))
  br label %159

139:                                              ; preds = %69
  br label %159

140:                                              ; preds = %69
  %141 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %142 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %141, i32 0, i32 1
  %143 = call i32 @complete(i32* %142)
  br label %159

144:                                              ; preds = %69
  %145 = load %struct.ar9170*, %struct.ar9170** %4, align 8
  %146 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %145, i32 0, i32 0
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.carl9170_rsp*, %struct.carl9170_rsp** %7, align 8
  %151 = getelementptr inbounds %struct.carl9170_rsp, %struct.carl9170_rsp* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 (i32, i8*, i32, ...) @wiphy_err(i32 %149, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %153)
  %155 = load i32, i32* @DUMP_PREFIX_NONE, align 4
  %156 = load i8*, i8** %5, align 8
  %157 = load i64, i64* %6, align 8
  %158 = call i32 @print_hex_dump_bytes(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %155, i8* %156, i64 %157)
  br label %159

159:                                              ; preds = %32, %68, %144, %140, %139, %132, %131, %113, %106, %102, %101, %100, %96, %94, %80
  ret void
}

declare dso_local i32 @carl9170_cmd_callback(%struct.ar9170*, i64, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32, ...) #1

declare dso_local i32 @print_hex_dump_bytes(i8*, i32, i8*, i64) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_vif* @carl9170_get_main_vif(%struct.ar9170*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @carl9170_handle_ps(%struct.ar9170*, %struct.carl9170_rsp*) #1

declare dso_local i32 @carl9170_update_beacon(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_tx_process_status(%struct.ar9170*, %struct.carl9170_rsp*) #1

declare dso_local i32 @carl9170_restart(%struct.ar9170*, i32) #1

declare dso_local i32 @carl9170_dbg_message(%struct.ar9170*, i8*, i64) #1

declare dso_local i32 @wiphy_dbg(i32, i8*, i64) #1

declare dso_local i32 @wiphy_info(i32, i8*) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
