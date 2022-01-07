; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_query_firmware_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_cmd.c_hclge_cmd_query_firmware_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_hw = type { i32 }
%struct.hclge_query_version_cmd = type { i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_QUERY_FW_VER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_hw*, i32*)* @hclge_cmd_query_firmware_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_cmd_query_firmware_version(%struct.hclge_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.hclge_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.hclge_query_version_cmd*, align 8
  %6 = alloca %struct.hclge_desc, align 8
  %7 = alloca i32, align 4
  store %struct.hclge_hw* %0, %struct.hclge_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32, i32* @HCLGE_OPC_QUERY_FW_VER, align 4
  %9 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %6, i32 %8, i32 1)
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %6, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hclge_query_version_cmd*
  store %struct.hclge_query_version_cmd* %12, %struct.hclge_query_version_cmd** %5, align 8
  %13 = load %struct.hclge_hw*, %struct.hclge_hw** %3, align 8
  %14 = call i32 @hclge_cmd_send(%struct.hclge_hw* %13, %struct.hclge_desc* %6, i32 1)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.hclge_query_version_cmd*, %struct.hclge_query_version_cmd** %5, align 8
  %19 = getelementptr inbounds %struct.hclge_query_version_cmd, %struct.hclge_query_version_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32_to_cpu(i32 %20)
  %22 = load i32*, i32** %4, align 8
  store i32 %21, i32* %22, align 4
  br label %23

23:                                               ; preds = %17, %2
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(%struct.hclge_hw*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
