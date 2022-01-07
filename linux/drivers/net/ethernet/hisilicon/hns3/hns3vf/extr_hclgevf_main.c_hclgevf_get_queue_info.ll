; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_queue_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_queue_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HCLGE_MBX_GET_QINFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"VF request to get tqp info from PF failed %d\00", align 1
@HCLGEVF_TQPS_RSS_INFO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_get_queue_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_queue_info(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca [6 x i32], align 16
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = load i32, i32* @HCLGE_MBX_GET_QINFO, align 4
  %8 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %9 = call i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %6, i32 %7, i32 0, i32* null, i32 0, i32 1, i32* %8, i32 6)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %13, i32 0, i32 3
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %1
  %21 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %21, i32 0, i32 2
  %23 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 0
  %24 = call i32 @memcpy(i32* %22, i32* %23, i32 4)
  %25 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %26 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %25, i32 0, i32 1
  %27 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 2
  %28 = call i32 @memcpy(i32* %26, i32* %27, i32 4)
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds [6 x i32], [6 x i32]* %4, i64 0, i64 4
  %32 = call i32 @memcpy(i32* %30, i32* %31, i32 4)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %20, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev*, i32, i32, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
