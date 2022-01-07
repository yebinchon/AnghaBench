; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_query_over_8bd_err_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_query_over_8bd_err_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_query_ppu_pf_other_int_dfx_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_PPU_PF_OTHER_INT_DFX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32*, i32*)* @hclge_query_over_8bd_err_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_query_over_8bd_err_info(%struct.hclge_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hclge_query_ppu_pf_other_int_dfx_cmd*, align 8
  %9 = alloca %struct.hclge_desc, align 8
  %10 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @HCLGE_OPC_PPU_PF_OTHER_INT_DFX, align 4
  %12 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %9, i32 %11, i32 1)
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 0
  %15 = call i32 @hclge_cmd_send(i32* %14, %struct.hclge_desc* %9, i32 1)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %34

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %9, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.hclge_query_ppu_pf_other_int_dfx_cmd*
  store %struct.hclge_query_ppu_pf_other_int_dfx_cmd* %23, %struct.hclge_query_ppu_pf_other_int_dfx_cmd** %8, align 8
  %24 = load %struct.hclge_query_ppu_pf_other_int_dfx_cmd*, %struct.hclge_query_ppu_pf_other_int_dfx_cmd** %8, align 8
  %25 = getelementptr inbounds %struct.hclge_query_ppu_pf_other_int_dfx_cmd, %struct.hclge_query_ppu_pf_other_int_dfx_cmd* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le16_to_cpu(i32 %26)
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.hclge_query_ppu_pf_other_int_dfx_cmd*, %struct.hclge_query_ppu_pf_other_int_dfx_cmd** %8, align 8
  %30 = getelementptr inbounds %struct.hclge_query_ppu_pf_other_int_dfx_cmd, %struct.hclge_query_ppu_pf_other_int_dfx_cmd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  %33 = load i32*, i32** %7, align 8
  store i32 %32, i32* %33, align 4
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %20, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
