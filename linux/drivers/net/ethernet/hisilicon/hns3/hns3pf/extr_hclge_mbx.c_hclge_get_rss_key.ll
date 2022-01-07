; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_get_rss_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_get_rss_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { %struct.hclge_dev* }
%struct.hclge_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }
%struct.hclge_mbx_vf_to_pf_cmd = type { i32* }

@HCLGE_RSS_MBX_RESP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*)* @hclge_get_rss_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_get_rss_key(%struct.hclge_vport* %0, %struct.hclge_mbx_vf_to_pf_cmd* %1) #0 {
  %3 = alloca %struct.hclge_vport*, align 8
  %4 = alloca %struct.hclge_mbx_vf_to_pf_cmd*, align 8
  %5 = alloca [8 x i32], align 16
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.hclge_vport* %0, %struct.hclge_vport** %3, align 8
  store %struct.hclge_mbx_vf_to_pf_cmd* %1, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %8 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %9 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %8, i32 0, i32 0
  %10 = load %struct.hclge_dev*, %struct.hclge_dev** %9, align 8
  store %struct.hclge_dev* %10, %struct.hclge_dev** %6, align 8
  %11 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %12 = getelementptr inbounds %struct.hclge_mbx_vf_to_pf_cmd, %struct.hclge_mbx_vf_to_pf_cmd* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 2
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %17 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %18 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = mul nsw i32 %23, 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = call i32 @memcpy(i32* %16, i32* %26, i32 8)
  %28 = load %struct.hclge_vport*, %struct.hclge_vport** %3, align 8
  %29 = load %struct.hclge_mbx_vf_to_pf_cmd*, %struct.hclge_mbx_vf_to_pf_cmd** %4, align 8
  %30 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %31 = call i32 @hclge_gen_resp_to_vf(%struct.hclge_vport* %28, %struct.hclge_mbx_vf_to_pf_cmd* %29, i32 0, i32* %30, i32 8)
  ret i32 %31
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hclge_gen_resp_to_vf(%struct.hclge_vport*, %struct.hclge_mbx_vf_to_pf_cmd*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
