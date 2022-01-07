; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_push_vf_port_base_vlan_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_push_vf_port_base_vlan_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i32 }

@HCLGE_MBX_PUSH_VLAN_INFO = common dso_local global i32 0, align 4
@MSG_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_push_vf_port_base_vlan_info(%struct.hclge_vport* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.hclge_vport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  store %struct.hclge_vport* %0, %struct.hclge_vport** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %15 = call i32 @memcpy(i32* %14, i32* %9, i32 4)
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 2
  %17 = call i32 @memcpy(i32* %16, i32* %12, i32 4)
  %18 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 4
  %19 = call i32 @memcpy(i32* %18, i32* %11, i32 4)
  %20 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 6
  %21 = call i32 @memcpy(i32* %20, i32* %10, i32 4)
  %22 = load %struct.hclge_vport*, %struct.hclge_vport** %7, align 8
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %24 = load i32, i32* @HCLGE_MBX_PUSH_VLAN_INFO, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @hclge_send_mbx_msg(%struct.hclge_vport* %22, i32* %23, i32 32, i32 %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hclge_send_mbx_msg(%struct.hclge_vport*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
