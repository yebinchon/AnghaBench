; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_handle_link_change_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_handle_link_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32* }

@HCLGE_STATE_SERVICE_SCHED = common dso_local global i32 0, align 4
@LINK_FAIL_CODE_OFFSET = common dso_local global i64 0, align 8
@LINK_STATUS_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hclge_dev*, %struct.hclge_mbx_vf_to_pf_cmd*)* @hclge_handle_link_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hclge_handle_link_change_event(%struct.hclge_dev* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %5 = load i32, i32* @HCLGE_STATE_SERVICE_SCHED, align 4
  %6 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %7 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %6, i32 0, i32 0
  %8 = call i32 @clear_bit(i32 %5, i32* %7)
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %10 = call i32 @hclge_task_schedule(%struct.hclge_dev* %9, i32 0)
  %11 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %2
  %18 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %19 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %20 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @hclge_link_fail_parse(%struct.hclge_dev* %18, i32 %23)
  br label %25

25:                                               ; preds = %17, %2
  ret void
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @hclge_task_schedule(%struct.hclge_dev*, i32) #1

declare dso_local i32 @hclge_link_fail_parse(%struct.hclge_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
