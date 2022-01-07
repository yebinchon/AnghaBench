; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_func_reset_sync_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_func_reset_sync_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_pf_rst_sync_cmd = type { i64 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_QUERY_VF_RST_RDY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HCLGE_RESET_SYNC_TIME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"sync with VF fail %d!\0A\00", align 1
@HCLGE_PF_RESET_SYNC_TIME = common dso_local global i32 0, align 4
@HCLGE_PF_RESET_SYNC_CNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"sync with VF timeout!\0A\00", align 1
@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_func_reset_sync_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_func_reset_sync_vf(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_pf_rst_sync_cmd*, align 8
  %5 = alloca %struct.hclge_desc, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %5, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hclge_pf_rst_sync_cmd*
  store %struct.hclge_pf_rst_sync_cmd* %10, %struct.hclge_pf_rst_sync_cmd** %4, align 8
  %11 = load i32, i32* @HCLGE_OPC_QUERY_VF_RST_RDY, align 4
  %12 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %5, i32 %11, i32 1)
  br label %13

13:                                               ; preds = %47, %1
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 1
  %16 = call i32 @hclge_cmd_send(i32* %15, %struct.hclge_desc* %5, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13
  %22 = load i32, i32* @HCLGE_RESET_SYNC_TIME, align 4
  %23 = call i32 @msleep(i32 %22)
  store i32 0, i32* %2, align 4
  br label %60

24:                                               ; preds = %13
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %29 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %7, align 4
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %60

35:                                               ; preds = %24
  %36 = load %struct.hclge_pf_rst_sync_cmd*, %struct.hclge_pf_rst_sync_cmd** %4, align 8
  %37 = getelementptr inbounds %struct.hclge_pf_rst_sync_cmd, %struct.hclge_pf_rst_sync_cmd* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %60

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* @HCLGE_PF_RESET_SYNC_TIME, align 4
  %45 = call i32 @msleep(i32 %44)
  %46 = call i32 @hclge_cmd_reuse_desc(%struct.hclge_desc* %5, i32 1)
  br label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* @HCLGE_PF_RESET_SYNC_CNT, align 4
  %51 = icmp slt i32 %48, %50
  br i1 %51, label %13, label %52

52:                                               ; preds = %47
  %53 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %54 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = call i32 (i32*, i8*, ...) @dev_err(i32* %56, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @ETIME, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %52, %40, %27, %21
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @hclge_cmd_reuse_desc(%struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
