; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_get_vf_queue_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_get_vf_queue_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.TYPE_4__, i32, %struct.hclge_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_dev = type { i32 }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32 }

@HCLGE_TQPS_RSS_INFO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32)* @hclge_get_vf_queue_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_vf_queue_info(%struct.hclge_vport* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.hclge_vport*, align 8
  %5 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x i32], align 16
  %8 = alloca %struct.hclge_dev*, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %4, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %10 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %9, i32 0, i32 2
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %10, align 8
  store %struct.hclge_dev* %11, %struct.hclge_dev** %8, align 8
  %12 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %13 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %14 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %13, i32 0, i32 1
  %15 = call i32 @memcpy(i32* %12, i32* %14, i32 4)
  %16 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 2
  %17 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %18 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @memcpy(i32* %16, i32* %20, i32 4)
  %22 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 4
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 0
  %25 = call i32 @memcpy(i32* %22, i32* %24, i32 4)
  %26 = load %struct.hclge_vport*, %struct.hclge_vport** %4, align 8
  %27 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %5, align 8
  %28 = getelementptr inbounds [6 x i32], [6 x i32]* %7, i64 0, i64 0
  %29 = call i32 @hclge_gen_resp_to_vf(%struct.hclge_vport* %26, %struct.hclge_mbx_vf_to_pf_cmd* %27, i32 0, i32* %28, i32 6)
  ret i32 %29
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hclge_gen_resp_to_vf(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
