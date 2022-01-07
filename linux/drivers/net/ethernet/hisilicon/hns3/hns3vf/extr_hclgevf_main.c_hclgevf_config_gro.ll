; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_config_gro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_config_gro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclgevf_cfg_gro_status_cmd = type { i32 }
%struct.hclgevf_desc = type { i64 }

@HCLGEVF_OPC_GRO_GENERIC_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"VF GRO hardware config cmd failed, ret = %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*, i32)* @hclgevf_config_gro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_config_gro(%struct.hclgevf_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hclgevf_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclgevf_cfg_gro_status_cmd*, align 8
  %7 = alloca %struct.hclgevf_desc, align 8
  %8 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %4, align 8
  %10 = call i32 @hnae3_dev_gro_supported(%struct.hclgevf_dev* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* @HCLGEVF_OPC_GRO_GENERIC_CONFIG, align 4
  %15 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %7, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %7, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hclgevf_cfg_gro_status_cmd*
  store %struct.hclgevf_cfg_gro_status_cmd* %18, %struct.hclgevf_cfg_gro_status_cmd** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = call i32 @cpu_to_le16(i32 %22)
  %24 = load %struct.hclgevf_cfg_gro_status_cmd*, %struct.hclgevf_cfg_gro_status_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.hclgevf_cfg_gro_status_cmd, %struct.hclgevf_cfg_gro_status_cmd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %4, align 8
  %27 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %26, i32 0, i32 1
  %28 = call i32 @hclgevf_cmd_send(i32* %27, %struct.hclgevf_desc* %7, i32 1)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %13
  %32 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %4, align 8
  %33 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %31, %13
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %38, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @hnae3_dev_gro_supported(%struct.hclgevf_dev*) #1

declare dso_local i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hclgevf_cmd_send(i32*, %struct.hclgevf_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
