; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss_input_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_set_rss_input_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.hclgevf_rss_cfg = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hclgevf_rss_input_tuple_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hclgevf_desc = type { i64 }

@HCLGEVF_OPC_RSS_INPUT_TUPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Configure rss input fail, status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*, %struct.hclgevf_rss_cfg*)* @hclgevf_set_rss_input_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_set_rss_input_tuple(%struct.hclgevf_dev* %0, %struct.hclgevf_rss_cfg* %1) #0 {
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca %struct.hclgevf_rss_cfg*, align 8
  %5 = alloca %struct.hclgevf_rss_input_tuple_cmd*, align 8
  %6 = alloca %struct.hclgevf_desc, align 8
  %7 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  store %struct.hclgevf_rss_cfg* %1, %struct.hclgevf_rss_cfg** %4, align 8
  %8 = load i32, i32* @HCLGEVF_OPC_RSS_INPUT_TUPLE, align 4
  %9 = call i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc* %6, i32 %8, i32 0)
  %10 = getelementptr inbounds %struct.hclgevf_desc, %struct.hclgevf_desc* %6, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.hclgevf_rss_input_tuple_cmd*
  store %struct.hclgevf_rss_input_tuple_cmd* %12, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %13 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %14 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %17, i32 0, i32 7
  store i32 %16, i32* %18, align 4
  %19 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %20 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %23, i32 0, i32 6
  store i32 %22, i32* %24, align 4
  %25 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %30 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %29, i32 0, i32 5
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %32 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %36 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %38 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %44 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %48 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %50 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.hclgevf_rss_cfg*, %struct.hclgevf_rss_cfg** %4, align 8
  %56 = getelementptr inbounds %struct.hclgevf_rss_cfg, %struct.hclgevf_rss_cfg* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hclgevf_rss_input_tuple_cmd*, %struct.hclgevf_rss_input_tuple_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.hclgevf_rss_input_tuple_cmd, %struct.hclgevf_rss_input_tuple_cmd* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %62 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %61, i32 0, i32 1
  %63 = call i32 @hclgevf_cmd_send(i32* %62, %struct.hclgevf_desc* %6, i32 1)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %2
  %67 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %68 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %71)
  br label %73

73:                                               ; preds = %66, %2
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @hclgevf_cmd_setup_basic_desc(%struct.hclgevf_desc*, i32, i32) #1

declare dso_local i32 @hclgevf_cmd_send(i32*, %struct.hclgevf_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
