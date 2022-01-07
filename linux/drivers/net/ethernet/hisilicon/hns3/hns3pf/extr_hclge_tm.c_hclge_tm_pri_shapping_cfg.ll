; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_shapping_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_pri_shapping_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_pri_shapping_cmd = type { i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_TM_PRI_P_SHAPPING = common dso_local global i32 0, align 4
@HCLGE_OPC_TM_PRI_C_SHAPPING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32, i32)* @hclge_tm_pri_shapping_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_pri_shapping_cfg(%struct.hclge_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hclge_pri_shapping_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.hclge_desc, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32, i32* @HCLGE_OPC_TM_PRI_P_SHAPPING, align 4
  br label %18

16:                                               ; preds = %4
  %17 = load i32, i32* @HCLGE_OPC_TM_PRI_C_SHAPPING, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %11, i32 %20, i32 0)
  %22 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %11, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.hclge_pri_shapping_cmd*
  store %struct.hclge_pri_shapping_cmd* %24, %struct.hclge_pri_shapping_cmd** %9, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.hclge_pri_shapping_cmd*, %struct.hclge_pri_shapping_cmd** %9, align 8
  %27 = getelementptr inbounds %struct.hclge_pri_shapping_cmd, %struct.hclge_pri_shapping_cmd* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @cpu_to_le32(i32 %28)
  %30 = load %struct.hclge_pri_shapping_cmd*, %struct.hclge_pri_shapping_cmd** %9, align 8
  %31 = getelementptr inbounds %struct.hclge_pri_shapping_cmd, %struct.hclge_pri_shapping_cmd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 0
  %34 = call i32 @hclge_cmd_send(i32* %33, %struct.hclge_desc* %11, i32 1)
  ret i32 %34
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
