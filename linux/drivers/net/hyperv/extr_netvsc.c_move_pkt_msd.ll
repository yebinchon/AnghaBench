; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_move_pkt_msd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_move_pkt_msd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_netvsc_packet = type { i32 }
%struct.sk_buff = type { i32 }
%struct.multi_send_data = type { i64, %struct.hv_netvsc_packet*, %struct.sk_buff* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hv_netvsc_packet**, %struct.sk_buff**, %struct.multi_send_data*)* @move_pkt_msd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @move_pkt_msd(%struct.hv_netvsc_packet** %0, %struct.sk_buff** %1, %struct.multi_send_data* %2) #0 {
  %4 = alloca %struct.hv_netvsc_packet**, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.multi_send_data*, align 8
  store %struct.hv_netvsc_packet** %0, %struct.hv_netvsc_packet*** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  store %struct.multi_send_data* %2, %struct.multi_send_data** %6, align 8
  %7 = load %struct.multi_send_data*, %struct.multi_send_data** %6, align 8
  %8 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %7, i32 0, i32 2
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %10 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %10, align 8
  %11 = load %struct.multi_send_data*, %struct.multi_send_data** %6, align 8
  %12 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %11, i32 0, i32 1
  %13 = load %struct.hv_netvsc_packet*, %struct.hv_netvsc_packet** %12, align 8
  %14 = load %struct.hv_netvsc_packet**, %struct.hv_netvsc_packet*** %4, align 8
  store %struct.hv_netvsc_packet* %13, %struct.hv_netvsc_packet** %14, align 8
  %15 = load %struct.multi_send_data*, %struct.multi_send_data** %6, align 8
  %16 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %15, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %16, align 8
  %17 = load %struct.multi_send_data*, %struct.multi_send_data** %6, align 8
  %18 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %17, i32 0, i32 1
  store %struct.hv_netvsc_packet* null, %struct.hv_netvsc_packet** %18, align 8
  %19 = load %struct.multi_send_data*, %struct.multi_send_data** %6, align 8
  %20 = getelementptr inbounds %struct.multi_send_data, %struct.multi_send_data* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
