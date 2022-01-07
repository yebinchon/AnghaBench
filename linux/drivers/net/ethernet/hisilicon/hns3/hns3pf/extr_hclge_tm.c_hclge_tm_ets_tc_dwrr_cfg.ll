; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_ets_tc_dwrr_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_tm.c_hclge_tm_ets_tc_dwrr_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, %struct.hclge_pg_info* }
%struct.TYPE_3__ = type { i64 }
%struct.hclge_pg_info = type { i32* }
%struct.hclge_ets_tc_weight_cmd = type { i32, i32* }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_ETS_TC_WEIGHT = common dso_local global i32 0, align 4
@HNAE3_MAX_TC = common dso_local global i32 0, align 4
@DEFAULT_TC_OFFSET = common dso_local global i32 0, align 4
@DEFAULT_TC_WEIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_tm_ets_tc_dwrr_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_tm_ets_tc_dwrr_cfg(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_ets_tc_weight_cmd*, align 8
  %4 = alloca %struct.hclge_desc, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hclge_pg_info*, align 8
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %7 = load i32, i32* @HCLGE_OPC_ETS_TC_WEIGHT, align 4
  %8 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %4, i32 %7, i32 0)
  %9 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %4, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.hclge_ets_tc_weight_cmd*
  store %struct.hclge_ets_tc_weight_cmd* %11, %struct.hclge_ets_tc_weight_cmd** %3, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %59, %1
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @HNAE3_MAX_TC, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %62

16:                                               ; preds = %12
  %17 = load %struct.hclge_ets_tc_weight_cmd*, %struct.hclge_ets_tc_weight_cmd** %3, align 8
  %18 = getelementptr inbounds %struct.hclge_ets_tc_weight_cmd, %struct.hclge_ets_tc_weight_cmd* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  store i32 1, i32* %22, align 4
  %23 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %24 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  br label %59

31:                                               ; preds = %16
  %32 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %33 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load %struct.hclge_pg_info*, %struct.hclge_pg_info** %34, align 8
  %36 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %37 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.hclge_pg_info, %struct.hclge_pg_info* %35, i64 %44
  store %struct.hclge_pg_info* %45, %struct.hclge_pg_info** %6, align 8
  %46 = load %struct.hclge_pg_info*, %struct.hclge_pg_info** %6, align 8
  %47 = getelementptr inbounds %struct.hclge_pg_info, %struct.hclge_pg_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hclge_ets_tc_weight_cmd*, %struct.hclge_ets_tc_weight_cmd** %3, align 8
  %54 = getelementptr inbounds %struct.hclge_ets_tc_weight_cmd, %struct.hclge_ets_tc_weight_cmd* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %5, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  br label %59

59:                                               ; preds = %31, %30
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %12

62:                                               ; preds = %12
  %63 = load %struct.hclge_ets_tc_weight_cmd*, %struct.hclge_ets_tc_weight_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.hclge_ets_tc_weight_cmd, %struct.hclge_ets_tc_weight_cmd* %63, i32 0, i32 0
  store i32 14, i32* %64, align 8
  %65 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %66 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %65, i32 0, i32 1
  %67 = call i32 @hclge_cmd_send(i32* %66, %struct.hclge_desc* %4, i32 1)
  ret i32 %67
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
