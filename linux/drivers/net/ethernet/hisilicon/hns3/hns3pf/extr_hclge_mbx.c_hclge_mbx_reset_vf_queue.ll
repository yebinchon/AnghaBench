; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_mbx_reset_vf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_mbx_reset_vf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*)* @hclge_mbx_reset_vf_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_mbx_reset_vf_queue(%struct.hclge_vport* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1) #0 {
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %5 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %6 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %7 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 2
  %10 = call i32 @memcpy(i32* %5, i32* %9, i32 4)
  %11 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @hclge_reset_vf_queue(%struct.hclge_vport* %11, i32 %12)
  %14 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %15 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %16 = call i32 @hclge_gen_resp_to_vf(%struct.hclge_vport* %14, %struct.hclge_mbx_vf_to_pf_cmd* %15, i32 0, i32* null, i32 0)
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hclge_reset_vf_queue(%struct.hclge_vport*, i32) #1

declare dso_local i32 @hclge_gen_resp_to_vf(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
