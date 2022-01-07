; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_clear_hw_msix_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_err.c_hclge_clear_hw_msix_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_dev = type { i32 }
%struct.hclge_desc = type { i8*, i8* }

@HCLGE_QUERY_CLEAR_ALL_MPF_MSIX_INT = common dso_local global i32 0, align 4
@HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_NO_INTR = common dso_local global i32 0, align 4
@HCLGE_CMD_FLAG_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hclge_dev*, %struct.hclge_desc*, i32, i32)* @hclge_clear_hw_msix_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclge_clear_hw_msix_error(%struct.hclge_dev* %0, %struct.hclge_desc* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hclge_dev*, align 8
  %6 = alloca %struct.hclge_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hclge_dev* %0, %struct.hclge_dev** %5, align 8
  store %struct.hclge_desc* %1, %struct.hclge_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = load i32, i32* @HCLGE_QUERY_CLEAR_ALL_MPF_MSIX_INT, align 4
  %13 = call i8* @cpu_to_le16(i32 %12)
  %14 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %15 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %14, i64 0
  %16 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %15, i32 0, i32 1
  store i8* %13, i8** %16, align 8
  br label %23

17:                                               ; preds = %4
  %18 = load i32, i32* @HCLGE_QUERY_CLEAR_ALL_PF_MSIX_INT, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %21 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %20, i64 0
  %22 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %21, i32 0, i32 1
  store i8* %19, i8** %22, align 8
  br label %23

23:                                               ; preds = %17, %11
  %24 = load i32, i32* @HCLGE_CMD_FLAG_NO_INTR, align 4
  %25 = load i32, i32* @HCLGE_CMD_FLAG_IN, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %29 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %28, i64 0
  %30 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %29, i32 0, i32 0
  store i8* %27, i8** %30, align 8
  %31 = load %struct.hclge_dev*, %struct.hclge_dev** %5, align 8
  %32 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %31, i32 0, i32 0
  %33 = load %struct.hclge_desc*, %struct.hclge_desc** %6, align 8
  %34 = getelementptr inbounds %struct.hclge_desc, %struct.hclge_desc* %33, i64 0
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @hclge_cmd_send(i32* %32, %struct.hclge_desc* %34, i32 %35)
  ret i32 %36
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @hclge_cmd_send(i32*, %struct.hclge_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
