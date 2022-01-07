; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_recv_packet_completion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc_pipe.c_recv_packet_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { i32 }
%struct.htc_endpoint = type { i32 }
%struct.htc_packet = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.htc_target*, %struct.htc_endpoint*, %struct.htc_packet*)* @recv_packet_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_packet_completion(%struct.htc_target* %0, %struct.htc_endpoint* %1, %struct.htc_packet* %2) #0 {
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca %struct.htc_endpoint*, align 8
  %6 = alloca %struct.htc_packet*, align 8
  %7 = alloca %struct.list_head, align 4
  store %struct.htc_target* %0, %struct.htc_target** %4, align 8
  store %struct.htc_endpoint* %1, %struct.htc_endpoint** %5, align 8
  store %struct.htc_packet* %2, %struct.htc_packet** %6, align 8
  %8 = call i32 @INIT_LIST_HEAD(%struct.list_head* %7)
  %9 = load %struct.htc_packet*, %struct.htc_packet** %6, align 8
  %10 = getelementptr inbounds %struct.htc_packet, %struct.htc_packet* %9, i32 0, i32 0
  %11 = call i32 @list_add_tail(i32* %10, %struct.list_head* %7)
  %12 = load %struct.htc_endpoint*, %struct.htc_endpoint** %5, align 8
  %13 = call i32 @do_recv_completion(%struct.htc_endpoint* %12, %struct.list_head* %7)
  ret void
}

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @do_recv_completion(%struct.htc_endpoint*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
