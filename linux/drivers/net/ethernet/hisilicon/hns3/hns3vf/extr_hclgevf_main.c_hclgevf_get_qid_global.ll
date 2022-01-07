; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_qid_global.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3vf/extr_hclgevf_main.c_hclgevf_get_qid_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { i32 }
%struct.hclgevf_dev = type { i32 }

@HCLGE_MBX_GET_QID_IN_PF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i32)* @hclgevf_get_qid_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hclgevf_get_qid_global(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hclgevf_dev*, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca [2 x i32], align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %11 = call %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle* %10)
  store %struct.hclgevf_dev* %11, %struct.hclgevf_dev** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %13 = call i32 @memcpy(i32* %12, i32* %4, i32 4)
  %14 = load %struct.hclgevf_dev*, %struct.hclgevf_dev** %5, align 8
  %15 = load i32, i32* @HCLGE_MBX_GET_QID_IN_PF, align 4
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %18 = call i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev* %14, i32 %15, i32 0, i32* %16, i32 8, i32 1, i32* %17, i32 8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  br label %24

24:                                               ; preds = %21, %2
  %25 = load i32, i32* %8, align 4
  ret i32 %25
}

declare dso_local %struct.hclgevf_dev* @hclgevf_ae_get_hdev(%struct.hnae3_handle*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @hclgevf_send_mbx_msg(%struct.hclgevf_dev*, i32, i32, i32*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
