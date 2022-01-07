; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_idle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@tx_t = common dso_local global i32 0, align 4
@TX_OFF = common dso_local global i32 0, align 4
@t_dwait = common dso_local global i32 0, align 4
@TXS_WAIT = common dso_local global i32 0, align 4
@scc = common dso_local global %struct.scc_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @t_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_idle(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.scc_channel*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %5 = ptrtoint %struct.scc_channel* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* @tx_t, align 4
  %8 = call %struct.scc_channel* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.scc_channel* %8, %struct.scc_channel** %3, align 8
  %9 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %10 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %9, i32 0, i32 2
  %11 = call i32 @del_timer(i32* %10)
  %12 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %13 = load i32, i32* @TX_OFF, align 4
  %14 = call i32 @scc_key_trx(%struct.scc_channel* %12, i32 %13)
  %15 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %16 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %22 = load i32, i32* @t_dwait, align 4
  %23 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %24 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %26, 100
  %28 = call i32 @scc_start_tx_timer(%struct.scc_channel* %21, i32 %22, i32 %27)
  br label %29

29:                                               ; preds = %20, %1
  %30 = load i32, i32* @TXS_WAIT, align 4
  %31 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %32 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  ret void
}

declare dso_local %struct.scc_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @scc_key_trx(%struct.scc_channel*, i32) #1

declare dso_local i32 @scc_start_tx_timer(%struct.scc_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
