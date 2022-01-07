; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_map_tqps_to_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_map_tqps_to_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_tqp_map_cmd = type { i32, i8*, i32, i8* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_SET_TQP_MAP = common dso_local global i32 0, align 4
@HCLGE_TQP_MAP_EN_B = common dso_local global i32 0, align 4
@HCLGE_TQP_MAP_TYPE_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TQP map failed %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, i32, i32, i32, i32)* @hclge_map_tqps_to_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_map_tqps_to_func(%struct.hclge_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.hclge_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.hclge_tqp_map_cmd*, align 8
  %12 = alloca %struct.hclge_desc, align 8
  %13 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @HCLGE_OPC_SET_TQP_MAP, align 4
  %15 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %12, i32 %14, i32 0)
  %16 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %12, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.hclge_tqp_map_cmd*
  store %struct.hclge_tqp_map_cmd* %18, %struct.hclge_tqp_map_cmd** %11, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.hclge_tqp_map_cmd*, %struct.hclge_tqp_map_cmd** %11, align 8
  %22 = getelementptr inbounds %struct.hclge_tqp_map_cmd, %struct.hclge_tqp_map_cmd* %21, i32 0, i32 3
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.hclge_tqp_map_cmd*, %struct.hclge_tqp_map_cmd** %11, align 8
  %25 = getelementptr inbounds %struct.hclge_tqp_map_cmd, %struct.hclge_tqp_map_cmd* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @HCLGE_TQP_MAP_EN_B, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.hclge_tqp_map_cmd*, %struct.hclge_tqp_map_cmd** %11, align 8
  %29 = getelementptr inbounds %struct.hclge_tqp_map_cmd, %struct.hclge_tqp_map_cmd* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %5
  %33 = load i32, i32* @HCLGE_TQP_MAP_TYPE_B, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.hclge_tqp_map_cmd*, %struct.hclge_tqp_map_cmd** %11, align 8
  %36 = getelementptr inbounds %struct.hclge_tqp_map_cmd, %struct.hclge_tqp_map_cmd* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %5
  %40 = load i32, i32* %9, align 4
  %41 = call i8* @cpu_to_le16(i32 %40)
  %42 = load %struct.hclge_tqp_map_cmd*, %struct.hclge_tqp_map_cmd** %11, align 8
  %43 = getelementptr inbounds %struct.hclge_tqp_map_cmd, %struct.hclge_tqp_map_cmd* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %45 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %44, i32 0, i32 1
  %46 = call i32 @hclge_cmd_send(i32* %45, %struct.hclge_desc* %12, i32 1)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %39
  %50 = load %struct.hclge_dev*, %struct.hclge_dev** %6, align 8
  %51 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @dev_err(i32* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %49, %39
  %57 = load i32, i32* %13, align 4
  ret i32 %57
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
