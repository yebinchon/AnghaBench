; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_query_function_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_query_function_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hclge_func_status_cmd = type { i64 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_QUERY_FUNC_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"query function status failed %d.\0A\00", align 1
@HCLGE_QUERY_MAX_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_query_function_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_query_function_status(%struct.hclge_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca %struct.hclge_func_status_cmd*, align 8
  %5 = alloca %struct.hclge_desc, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32, i32* @HCLGE_OPC_QUERY_FUNC_STATUS, align 4
  %9 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %5, i32 %8, i32 1)
  %10 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %5, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hclge_func_status_cmd*
  store %struct.hclge_func_status_cmd* %12, %struct.hclge_func_status_cmd** %4, align 8
  br label %13

13:                                               ; preds = %35, %1
  %14 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %15 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %14, i32 0, i32 1
  %16 = call i32 @hclge_cmd_send(i32* %15, %struct.hclge_desc* %5, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %44

27:                                               ; preds = %13
  %28 = load %struct.hclge_func_status_cmd*, %struct.hclge_func_status_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.hclge_func_status_cmd, %struct.hclge_func_status_cmd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %39

33:                                               ; preds = %27
  %34 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %35

35:                                               ; preds = %33
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  %38 = icmp slt i32 %36, 5
  br i1 %38, label %13, label %39

39:                                               ; preds = %35, %32
  %40 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %41 = load %struct.hclge_func_status_cmd*, %struct.hclge_func_status_cmd** %4, align 8
  %42 = call i32 @hclge_parse_func_status(%struct.hclge_dev* %40, %struct.hclge_func_status_cmd* %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %39, %19
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @hclge_parse_func_status(%struct.hclge_dev*, %struct.hclge_func_status_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
