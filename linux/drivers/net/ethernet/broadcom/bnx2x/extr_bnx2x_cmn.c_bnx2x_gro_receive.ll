; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_gro_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_gro_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_fastpath = type { i32, i32 }
%struct.sk_buff = type { i32 }

@bnx2x_gro_ip_csum = common dso_local global i32 0, align 4
@bnx2x_gro_ipv6_csum = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.sk_buff*)* @bnx2x_gro_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_gro_receive(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_fastpath*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %8 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %9 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @skb_record_rx_queue(%struct.sk_buff* %7, i32 %10)
  %12 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %13 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %12, i32 0, i32 0
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = call i32 @napi_gro_receive(i32* %13, %struct.sk_buff* %14)
  ret void
}

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
