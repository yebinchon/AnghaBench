; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_pf_media_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_pf_media_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclgevf_dev = type { %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }

@HCLGE_MBX_GET_MEDIA_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"VF request to get the pf port media type failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclgevf_dev*)* @hclgevf_get_pf_media_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_pf_media_type(%struct.hclgevf_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hclgevf_dev*, align 8
  %4 = alloca [2 x i8*], align 16
  %5 = alloca i32, align 4
  store %struct.hclgevf_dev* %0, %struct.hclgevf_dev** %3, align 8
  %6 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %7 = load i32, i32* @HCLGE_MBX_GET_MEDIA_TYPE, align 4
  %8 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %9 = call i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %6, i32 %7, i32 0, i32* null, i32 0, i32 1, i8** %8, i32 16)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %33

20:                                               ; preds = %1
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 0
  %22 = load i8*, i8** %21, align 16
  %23 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %24 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i8* %22, i8** %26, align 8
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %4, i64 0, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %3, align 8
  %30 = getelementptr inbounds %struct.hclgevf_dev, %struct.hclgevf_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %28, i8** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %20, %12
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev*, i32, i32, i32*, i32, i32, i8**, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
