; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_send_packet_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_send_packet_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.htc_endpoint* }
%struct.htc_endpoint = type { i32 }
%struct.htc_packet = type { i64, i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_packet*)* @send_packet_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_packet_completion(%struct.htc_target* %0, %struct.htc_packet* %1) #0 {
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
  %14 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %15 = call i32 @restore_tx_packet(%struct.htc_packet* %14)
  %16 = call i32 @INIT_LIST_HEAD(%struct.list_head* %6)
  %17 = load %struct.htc_packet*, %struct.htc_packet** %4, align 8
  %18 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %17, i32 0, i32 1
  %19 = call i32 @list_add_tail(i32* %18, %struct.list_head* %6)
  %20 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %21 = call i32 @do_send_completion(%struct.htc_endpoint* %20, %struct.list_head* %6)
  ret void
}

declare dso_local i32 @restore_tx_packet(%struct.htc_packet*) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @do_send_completion(%struct.htc_endpoint*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
