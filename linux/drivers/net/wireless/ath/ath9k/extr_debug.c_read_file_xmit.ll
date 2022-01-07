; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_read_file_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_debug.c_read_file_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.ieee80211_hw = type { %struct.ath_softc* }
%struct.ath_softc = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"%30s %10s%10s%10s\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"BK\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"VI\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"VO\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"MPDUs Queued:    \00", align 1
@queued = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [18 x i8] c"MPDUs Completed: \00", align 1
@completed = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [18 x i8] c"MPDUs XRetried:  \00", align 1
@xretries = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [18 x i8] c"Aggregates:      \00", align 1
@a_aggr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [18 x i8] c"AMPDUs Queued HW:\00", align 1
@a_queued_hw = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"AMPDUs Completed:\00", align 1
@a_completed = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c"AMPDUs Retried:  \00", align 1
@a_retries = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"AMPDUs XRetried: \00", align 1
@a_xretries = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"TXERR Filtered:  \00", align 1
@txerr_filtered = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [18 x i8] c"FIFO Underrun:   \00", align 1
@fifo_underrun = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c"TXOP Exceeded:   \00", align 1
@xtxop = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [18 x i8] c"TXTIMER Expiry:  \00", align 1
@timer_exp = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c"DESC CFG Error:  \00", align 1
@desc_cfg_err = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [18 x i8] c"DATA Underrun:   \00", align 1
@data_underrun = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [18 x i8] c"DELIM Underrun:  \00", align 1
@delim_underrun = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [18 x i8] c"TX-Pkts-All:     \00", align 1
@tx_pkts_all = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [18 x i8] c"TX-Bytes-All:    \00", align 1
@tx_bytes_all = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"HW-put-tx-buf:   \00", align 1
@puttxbuf = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [18 x i8] c"HW-tx-start:     \00", align 1
@txstart = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [18 x i8] c"HW-tx-proc-desc: \00", align 1
@txprocdesc = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [18 x i8] c"TX-Failed:       \00", align 1
@txfailed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @read_file_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file_xmit(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ath_softc*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.ieee80211_hw* @dev_get_drvdata(i32 %9)
  store %struct.ieee80211_hw* %10, %struct.ieee80211_hw** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  %13 = load %struct.ath_softc*, %struct.ath_softc** %12, align 8
  store %struct.ath_softc* %13, %struct.ath_softc** %6, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %15 = call i32 @seq_printf(%struct.seq_file* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %16 = load i32, i32* @queued, align 4
  %17 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @completed, align 4
  %19 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* @xretries, align 4
  %21 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @a_aggr, align 4
  %23 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @a_queued_hw, align 4
  %25 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @a_completed, align 4
  %27 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @a_retries, align 4
  %29 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i32 %28)
  %30 = load i32, i32* @a_xretries, align 4
  %31 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.12, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @txerr_filtered, align 4
  %33 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @fifo_underrun, align 4
  %35 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @xtxop, align 4
  %37 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @timer_exp, align 4
  %39 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.16, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @desc_cfg_err, align 4
  %41 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @data_underrun, align 4
  %43 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @delim_underrun, align 4
  %45 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.19, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* @tx_pkts_all, align 4
  %47 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @tx_bytes_all, align 4
  %49 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @puttxbuf, align 4
  %51 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* @txstart, align 4
  %53 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.23, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @txprocdesc, align 4
  %55 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.24, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @txfailed, align 4
  %57 = call i32 @PR(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i32 %56)
  ret i32 0
}

declare dso_local %struct.ieee80211_hw* @dev_get_drvdata(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @PR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
