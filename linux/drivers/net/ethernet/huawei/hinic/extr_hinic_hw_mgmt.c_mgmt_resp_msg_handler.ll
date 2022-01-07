; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_mgmt_resp_msg_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_mgmt.c_mgmt_resp_msg_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_pf_to_mgmt = type { i32 }
%struct.hinic_recv_msg = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_pf_to_mgmt*, %struct.hinic_recv_msg*)* @mgmt_resp_msg_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgmt_resp_msg_handler(%struct.hinic_pf_to_mgmt* %0, %struct.hinic_recv_msg* %1) #0 {
  %3 = alloca %struct.hinic_pf_to_mgmt*, align 8
  %4 = alloca %struct.hinic_recv_msg*, align 8
  store %struct.hinic_pf_to_mgmt* %0, %struct.hinic_pf_to_mgmt** %3, align 8
  store %struct.hinic_recv_msg* %1, %struct.hinic_recv_msg** %4, align 8
  %5 = call i32 (...) @wmb()
  %6 = load %struct.hinic_recv_msg*, %struct.hinic_recv_msg** %4, align 8
  %7 = getelementptr inbounds %struct.hinic_recv_msg, %struct.hinic_recv_msg* %6, i32 0, i32 0
  %8 = call i32 @complete(i32* %7)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
