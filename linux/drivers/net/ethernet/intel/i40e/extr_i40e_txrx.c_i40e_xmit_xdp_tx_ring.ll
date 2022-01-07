; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_xmit_xdp_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_xmit_xdp_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_buff = type { i32 }
%struct.i40e_ring = type { i32 }
%struct.xdp_frame = type { i32 }

@I40E_XDP_CONSUMED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_xmit_xdp_tx_ring(%struct.xdp_buff* %0, %struct.i40e_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdp_buff*, align 8
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca %struct.xdp_frame*, align 8
  store %struct.xdp_buff* %0, %struct.xdp_buff** %4, align 8
  store %struct.i40e_ring* %1, %struct.i40e_ring** %5, align 8
  %7 = load %struct.xdp_buff*, %struct.xdp_buff** %4, align 8
  %8 = call %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff* %7)
  store %struct.xdp_frame* %8, %struct.xdp_frame** %6, align 8
  %9 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %10 = icmp ne %struct.xdp_frame* %9, null
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @I40E_XDP_CONSUMED, align 4
  store i32 %16, i32* %3, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.xdp_frame*, %struct.xdp_frame** %6, align 8
  %19 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %20 = call i32 @i40e_xmit_xdp_ring(%struct.xdp_frame* %18, %struct.i40e_ring* %19)
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %17, %15
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local %struct.xdp_frame* @convert_to_xdp_frame(%struct.xdp_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @i40e_xmit_xdp_ring(%struct.xdp_frame*, %struct.i40e_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
