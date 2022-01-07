; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_tx_comp_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_mbox.c_htc_tx_comp_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.htc_endpoint* }
%struct.htc_endpoint = type { i32 }
%struct.htc_packet = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.list_head = type { i32 }

@ATH6KL_DBG_HTC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"htc tx complete seqno %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_packet*)* @htc_tx_comp_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @htc_tx_comp_handler(%struct.htc_target* %0, %struct.htc_packet* %1) #0 {
  %3 = alloca %struct.htc_target*, align 8
  %4 = alloca %struct.htc_packet*, align 8
  %5 = alloca %struct.htc_endpoint*, align 8
  %6 = alloca %struct.list_head, align 4
  store %struct.htc_target* %0, %struct.htc_target** %3, align 8
  store %struct.htc_packet* %1, %struct.htc_packet** %4, align 8
  %7 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %8 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %7, i32 0, i32 0
  %9 = load %struct.htc_endpoint*, %struct.htc_endpoint** %8, align 8
  %10 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %11 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.htc_endpoint, %struct.htc_endpoint* %9, i64 %12
  store %struct.htc_endpoint* %13, %struct.htc_endpoint** %5, align 8
  %14 = load i32, i32* @ATH6KL_DBG_HTC, align 4
  %15 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %16 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ath6kl_dbg(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.htc_target*, %struct.htc_target** %3, align 8
  %22 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %23 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %24 = call i32 @htc_tx_comp_update(%struct.htc_target* %21, %struct.htc_endpoint* %22, %struct.htc_packet* %23)
  %25 = call i32 @INIT_LIST_HEAD(%struct.list_head* %6)
  %26 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %27 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %27, %struct.list_head* %6)
  %29 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %30 = call i32 @htc_tx_complete(%struct.htc_endpoint* %29, %struct.list_head* %6)
  ret void
}

declare dso_local i32 @ath6kl_dbg(i32, i8*, i32) #1

declare dso_local i32 @htc_tx_comp_update(%struct.htc_target*, %struct.htc_endpoint*, %struct.htc_packet*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @htc_tx_complete(%struct.htc_endpoint*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
