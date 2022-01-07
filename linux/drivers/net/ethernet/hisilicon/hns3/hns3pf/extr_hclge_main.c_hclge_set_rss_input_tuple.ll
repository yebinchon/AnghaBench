; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss_input_tuple.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_main.c_hclge_set_rss_input_tuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { %struct.TYPE_5__*, i32, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hclge_rss_input_tuple_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hclge_desc = type { i64 }

@HCLGE_OPC_RSS_INPUT_TUPLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Configure rss input fail, status = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*)* @hclge_set_rss_input_tuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_set_rss_input_tuple(%struct.hclge_dev* %0) #0 {
  %2 = alloca %struct.hclge_dev*, align 8
  %3 = alloca %struct.hclge_rss_input_tuple_cmd*, align 8
  %4 = alloca %struct.hclge_desc, align 8
  %5 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %2, align 8
  %6 = load i32, i32* @HCLGE_OPC_RSS_INPUT_TUPLE, align 4
  %7 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %4, i32 %6, i32 0)
  %8 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.hclge_rss_input_tuple_cmd*
  store %struct.hclge_rss_input_tuple_cmd* %10, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %11 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %12 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %19 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 4
  %20 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %21 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %28 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %30 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %37 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %39 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %38, i32 0, i32 2
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i64 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %46 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %48 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %55 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %57 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %64 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 4
  %65 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %66 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %65, i32 0, i32 2
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %73 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %75 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %74, i32 0, i32 2
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.hclge_rss_input_tuple_cmd*, %struct.hclge_rss_input_tuple_cmd** %3, align 8
  %82 = getelementptr inbounds %struct.hclge_rss_input_tuple_cmd, %struct.hclge_rss_input_tuple_cmd* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %84 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %83, i32 0, i32 2
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i64 0
  %87 = call i32 @hclge_get_rss_type(%struct.TYPE_6__* %86)
  %88 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %89 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %88, i32 0, i32 1
  %90 = call i32 @hclge_cmd_send(i32* %89, %struct.hclge_desc* %4, i32 1)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %1
  %94 = load %struct.hclge_dev*, %struct.hclge_dev** %2, align 8
  %95 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %93, %1
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @hclge_get_rss_type(%struct.TYPE_6__*) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
