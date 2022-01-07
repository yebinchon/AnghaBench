; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_flush_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n_rxreorder.c_mwifiex_flush_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reorder_tmr_cnxt = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"info: flush data %d\0A\00", align 1
@MAX_TID_VALUE = common dso_local global i32 0, align 4
@ctx = common dso_local global %struct.reorder_tmr_cnxt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mwifiex_flush_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_flush_data(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.reorder_tmr_cnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.reorder_tmr_cnxt*, %struct.reorder_tmr_cnxt** %3, align 8
  %7 = ptrtoint %struct.reorder_tmr_cnxt* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @timer, align 4
  %10 = call %struct.reorder_tmr_cnxt* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.reorder_tmr_cnxt* %10, %struct.reorder_tmr_cnxt** %3, align 8
  %11 = load %struct.reorder_tmr_cnxt*, %struct.reorder_tmr_cnxt** %3, align 8
  %12 = getelementptr inbounds %struct.reorder_tmr_cnxt, %struct.reorder_tmr_cnxt* %11, i32 0, i32 0
  store i32 0, i32* %12, align 8
  %13 = load %struct.reorder_tmr_cnxt*, %struct.reorder_tmr_cnxt** %3, align 8
  %14 = call i32 @mwifiex_11n_find_last_seq_num(%struct.reorder_tmr_cnxt* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %46

18:                                               ; preds = %1
  %19 = load %struct.reorder_tmr_cnxt*, %struct.reorder_tmr_cnxt** %3, align 8
  %20 = getelementptr inbounds %struct.reorder_tmr_cnxt, %struct.reorder_tmr_cnxt* %19, i32 0, i32 2
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @INFO, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mwifiex_dbg(i32 %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.reorder_tmr_cnxt*, %struct.reorder_tmr_cnxt** %3, align 8
  %28 = getelementptr inbounds %struct.reorder_tmr_cnxt, %struct.reorder_tmr_cnxt* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = add nsw i32 %33, 1
  %35 = load i32, i32* @MAX_TID_VALUE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = and i32 %34, %36
  store i32 %37, i32* %4, align 4
  %38 = load %struct.reorder_tmr_cnxt*, %struct.reorder_tmr_cnxt** %3, align 8
  %39 = getelementptr inbounds %struct.reorder_tmr_cnxt, %struct.reorder_tmr_cnxt* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.reorder_tmr_cnxt*, %struct.reorder_tmr_cnxt** %3, align 8
  %42 = getelementptr inbounds %struct.reorder_tmr_cnxt, %struct.reorder_tmr_cnxt* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @mwifiex_11n_dispatch_pkt_until_start_win(%struct.TYPE_3__* %40, %struct.TYPE_4__* %43, i32 %44)
  br label %46

46:                                               ; preds = %18, %17
  ret void
}

declare dso_local %struct.reorder_tmr_cnxt* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @mwifiex_11n_find_last_seq_num(%struct.reorder_tmr_cnxt*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, i32) #1

declare dso_local i32 @mwifiex_11n_dispatch_pkt_until_start_win(%struct.TYPE_3__*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
