; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_get_imm_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_sge.c_get_imm_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.rsp_desc = type { i32 }

@IMMED_PKT_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.rsp_desc*)* @get_imm_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @get_imm_packet(%struct.rsp_desc* %0) #0 {
  %2 = alloca %struct.rsp_desc*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  store %struct.rsp_desc* %0, %struct.rsp_desc** %2, align 8
  %4 = load i32, i32* @IMMED_PKT_SIZE, align 4
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.sk_buff* @alloc_skb(i32 %4, i32 %5)
  store %struct.sk_buff* %6, %struct.sk_buff** %3, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = icmp ne %struct.sk_buff* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = load i32, i32* @IMMED_PKT_SIZE, align 4
  %12 = call i32 @__skb_put(%struct.sk_buff* %10, i32 %11)
  %13 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %14 = load %struct.rsp_desc*, %struct.rsp_desc** %2, align 8
  %15 = getelementptr inbounds %struct.rsp_desc, %struct.rsp_desc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @IMMED_PKT_SIZE, align 4
  %18 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %13, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %20
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
