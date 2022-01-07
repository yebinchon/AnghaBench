; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_port_shaper_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_port_shaper_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.hclge_port_shapping_cmd = type { i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_SHAPER_LVL_PORT = common dso_local global i32 0, align 4
@HCLGE_OPC_TM_PORT_SHAPPING = common dso_local global i32 0, align 4
@HCLGE_SHAPER_BS_U_DEF = common dso_local global i32 0, align 4
@HCLGE_SHAPER_BS_S_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_port_shaper_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_port_shaper_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_port_shapping_cmd*, align 8
  %5 = alloca %struct.hclge_desc, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @HCLGE_SHAPER_LVL_PORT, align 4
  %17 = call i32 @hclge_shaper_para_calc(i32 %15, i32 %16, i32* %7, i32* %6, i32* %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %2, align 4
  br label %41

22:                                               ; preds = %1
  %23 = load i32, i32* @HCLGE_OPC_TM_PORT_SHAPPING, align 4
  %24 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %5, i32 %23, i32 0)
  %25 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %5, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.hclge_port_shapping_cmd*
  store %struct.hclge_port_shapping_cmd* %27, %struct.hclge_port_shapping_cmd** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @HCLGE_SHAPER_BS_U_DEF, align 4
  %32 = load i32, i32* @HCLGE_SHAPER_BS_S_DEF, align 4
  %33 = call i32 @hclge_tm_get_shapping_para(i32 %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.hclge_port_shapping_cmd*, %struct.hclge_port_shapping_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.hclge_port_shapping_cmd, %struct.hclge_port_shapping_cmd* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %39 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %38, i32 0, i32 0
  %40 = call i32 @hclge_cmd_send(%struct.TYPE_4__* %39, %struct.hclge_desc* %5, i32 1)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %22, %20
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @hclge_shaper_para_calc(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_tm_get_shapping_para(i32, i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @hclge_cmd_send(%struct.TYPE_4__*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
