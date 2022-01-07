; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_query_bd_num_cmd_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_query_bd_num_cmd_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_desc = type { i32 }

@HCLGE_OPC_DFX_BD_NUM = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NEXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_query_bd_num_cmd_send(%struct.hclge_dev* %0, %struct.hclge_desc* %1) #0 {
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_desc*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %4, align 8
  %5 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %6 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %5, i64 0
  %7 = load i32, i32* @HCLGE_OPC_DFX_BD_NUM, align 4
  %8 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %7, i32 1)
  %9 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %10 = call i32 @cpu_to_le16(i32 %9)
  %11 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %12 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i64 0
  %13 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %10
  store i32 %15, i32* %13, align 4
  %16 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %17 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %16, i64 1
  %18 = load i32, i32* @HCLGE_OPC_DFX_BD_NUM, align 4
  %19 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %17, i32 %18, i32 1)
  %20 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %21 = call i32 @cpu_to_le16(i32 %20)
  %22 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %23 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %22, i64 1
  %24 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %28 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %27, i64 2
  %29 = load i32, i32* @HCLGE_OPC_DFX_BD_NUM, align 4
  %30 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %28, i32 %29, i32 1)
  %31 = load i32, i32* @HCLGE_CMD_FLAG_NEXT, align 4
  %32 = call i32 @cpu_to_le16(i32 %31)
  %33 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %34 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %33, i64 2
  %35 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %32
  store i32 %37, i32* %35, align 4
  %38 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %39 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %38, i64 3
  %40 = load i32, i32* @HCLGE_OPC_DFX_BD_NUM, align 4
  %41 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %39, i32 %40, i32 1)
  %42 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %43 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %42, i32 0, i32 0
  %44 = load %struct.hclge_desc*, %struct.hclge_desc** %4, align 8
  %45 = call i32 @hclge_cmd_send(i32* %43, %struct.hclge_desc* %44, i32 4)
  ret i32 %45
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
