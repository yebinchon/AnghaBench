; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_dwait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_dwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32*, %struct.TYPE_4__, i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.timer_list = type { i32 }

@tx_t = common dso_local global i32 0, align 4
@TXS_WAIT = common dso_local global i64 0, align 8
@TXS_IDLE = common dso_local global i64 0, align 8
@TXS_BUSY = common dso_local global i64 0, align 8
@KISS_DUPLEX_HALF = common dso_local global i64 0, align 8
@Rand = common dso_local global i32 0, align 4
@R5 = common dso_local global i64 0, align 8
@RTS = common dso_local global i32 0, align 4
@TX_ON = common dso_local global i32 0, align 4
@scc = common dso_local global %struct.scc_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @t_dwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_dwait(%struct.timer_list* %0) #0 {
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
  %10 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TXS_WAIT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %17 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %16, i32 0, i32 5
  %18 = call i64 @skb_queue_empty(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load i64, i64* @TXS_IDLE, align 8
  %22 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %23 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i64 %21, i64* %24, align 8
  %25 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %26 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @netif_wake_queue(i32 %27)
  br label %99

29:                                               ; preds = %15
  %30 = load i64, i64* @TXS_BUSY, align 8
  %31 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %32 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %1
  %35 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %36 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @KISS_DUPLEX_HALF, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %76

41:                                               ; preds = %34
  %42 = load i32, i32* @Rand, align 4
  %43 = mul nsw i32 %42, 17
  %44 = add nsw i32 %43, 31
  store i32 %44, i32* @Rand, align 4
  %45 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %46 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %41
  %50 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %51 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @Rand, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %66, label %56

56:                                               ; preds = %49
  %57 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %58 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %56
  %63 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %64 = call i64 @is_grouped(%struct.scc_channel* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %62, %49, %41
  %67 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %68 = call i32 @scc_start_defer(%struct.scc_channel* %67)
  %69 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %70 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %71 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @scc_start_tx_timer(%struct.scc_channel* %69, void (%struct.timer_list*)* @t_dwait, i32 %73)
  br label %99

75:                                               ; preds = %62, %56
  br label %76

76:                                               ; preds = %75, %34
  %77 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %78 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @R5, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @RTS, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %96, label %86

86:                                               ; preds = %76
  %87 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %88 = load i32, i32* @TX_ON, align 4
  %89 = call i32 @scc_key_trx(%struct.scc_channel* %87, i32 %88)
  %90 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %91 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %92 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @scc_start_tx_timer(%struct.scc_channel* %90, void (%struct.timer_list*)* @t_txdelay, i32 %94)
  br label %99

96:                                               ; preds = %76
  %97 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %98 = call i32 @scc_start_tx_timer(%struct.scc_channel* %97, void (%struct.timer_list*)* @t_txdelay, i32 0)
  br label %99

99:                                               ; preds = %20, %66, %96, %86
  ret void
}

declare dso_local %struct.scc_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @skb_queue_empty(i32*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i64 @is_grouped(%struct.scc_channel*) #1

declare dso_local i32 @scc_start_defer(%struct.scc_channel*) #1

declare dso_local i32 @scc_start_tx_timer(%struct.scc_channel*, void (%struct.timer_list*)*, i32) #1

declare dso_local i32 @scc_key_trx(%struct.scc_channel*, i32) #1

declare dso_local void @t_txdelay(%struct.timer_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
