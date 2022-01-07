; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_set_rts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_set_rts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }

@MWIFIEX_RTS_MIN_VALUE = common dso_local global i64 0, align 8
@MWIFIEX_RTS_MAX_VALUE = common dso_local global i64 0, align 8
@HostCmd_CMD_802_11_SNMP_MIB = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@RTS_THRESH_I = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_private*, i64)* @mwifiex_set_rts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_set_rts(%struct.mwifiex_private* %0, i64 %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i64, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MWIFIEX_RTS_MIN_VALUE, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @MWIFIEX_RTS_MAX_VALUE, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %8, %2
  %13 = load i64, i64* @MWIFIEX_RTS_MAX_VALUE, align 8
  store i64 %13, i64* %4, align 8
  br label %14

14:                                               ; preds = %12, %8
  %15 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %16 = load i32, i32* @HostCmd_CMD_802_11_SNMP_MIB, align 4
  %17 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %18 = load i32, i32* @RTS_THRESH_I, align 4
  %19 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %15, i32 %16, i32 %17, i32 %18, i64* %4, i32 1)
  ret i32 %19
}

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
