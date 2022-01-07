; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vf_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_vf_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_vf_rst_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_GBL_RST_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32)* @hclge_set_vf_rst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_vf_rst(%struct.hclge_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.hclge_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hclge_vf_rst_cmd*, align 8
  %8 = alloca %struct.hclge_desc, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hclge_vf_rst_cmd*
  store %struct.hclge_vf_rst_cmd* %11, %struct.hclge_vf_rst_cmd** %7, align 8
  %12 = load i32, i32* @HCLGE_OPC_GBL_RST_STATUS, align 4
  %13 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %8, i32 %12, i32 0)
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.hclge_vf_rst_cmd*, %struct.hclge_vf_rst_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.hclge_vf_rst_cmd, %struct.hclge_vf_rst_cmd* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.hclge_vf_rst_cmd*, %struct.hclge_vf_rst_cmd** %7, align 8
  %21 = getelementptr inbounds %struct.hclge_vf_rst_cmd, %struct.hclge_vf_rst_cmd* %20, i32 0, i32 1
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %19, %3
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %4, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 0
  %25 = call i32 @hclge_cmd_send(i32* %24, %struct.hclge_desc* %8, i32 1)
  ret i32 %25
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
