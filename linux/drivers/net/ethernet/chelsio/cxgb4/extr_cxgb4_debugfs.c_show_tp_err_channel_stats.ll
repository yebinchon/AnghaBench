; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_show_tp_err_channel_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_show_tp_err_channel_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.tp_err_stats = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"tp_mac_in_errs:\00", align 1
@mac_in_errs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"tp_hdr_in_errs:\00", align 1
@hdr_in_errs = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"tp_tcp_in_errs:\00", align 1
@tcp_in_errs = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"tp_tcp6_in_errs:\00", align 1
@tcp6_in_errs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"tp_tnl_cong_drops:\00", align 1
@tnl_cong_drops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"tp_tnl_tx_drops:\00", align 1
@tnl_tx_drops = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"tp_ofld_vlan_drops:\00", align 1
@ofld_vlan_drops = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"tp_ofld_chan_drops:\00", align 1
@ofld_chan_drops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @show_tp_err_channel_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_tp_err_channel_stats(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.tp_err_stats, align 4
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = call i32 @t4_tp_get_err_stats(%struct.adapter* %12, %struct.tp_err_stats* %4, i32 0)
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock(i32* %15)
  %17 = load i32, i32* @mac_in_errs, align 4
  %18 = call i32 @PRINT_CH_STATS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* @hdr_in_errs, align 4
  %20 = call i32 @PRINT_CH_STATS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @tcp_in_errs, align 4
  %22 = call i32 @PRINT_CH_STATS(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @tcp6_in_errs, align 4
  %24 = call i32 @PRINT_CH_STATS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @tnl_cong_drops, align 4
  %26 = call i32 @PRINT_CH_STATS(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @tnl_tx_drops, align 4
  %28 = call i32 @PRINT_CH_STATS(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @ofld_vlan_drops, align 4
  %30 = call i32 @PRINT_CH_STATS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @ofld_chan_drops, align 4
  %32 = call i32 @PRINT_CH_STATS(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0), i32 %31)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @t4_tp_get_err_stats(%struct.adapter*, %struct.tp_err_stats*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @PRINT_CH_STATS(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
