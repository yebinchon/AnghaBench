; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_cmd_query_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_cmd_query_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hclge_desc = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"query error cmd failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_desc*, i32, i64)* @hclge_cmd_query_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_cmd_query_error(%struct.hclge_dev* %0, %struct.hclge_desc* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.hclge_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %12 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %13 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %9, align 8
  store i32 1, i32* %10, align 4
  %16 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %17 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %16, i64 0
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %17, i32 %18, i32 1)
  %20 = load i64, i64* %8, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @cpu_to_le16(i64 %23)
  %25 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %26 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %25, i64 0
  %27 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %24
  store i32 %29, i32* %27, align 4
  %30 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %31 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %30, i64 1
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc* %31, i32 %32, i32 1)
  store i32 2, i32* %10, align 4
  br label %34

34:                                               ; preds = %22, %4
  %35 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %35, i32 0, i32 0
  %37 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %38 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %37, i64 0
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @hclge_cmd_send(i32* %36, %struct.hclge_desc* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %9, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %45)
  br label %47

47:                                               ; preds = %43, %34
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @hclge_cmd_setup_basic_desc(%struct.hclge_desc*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i64) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
