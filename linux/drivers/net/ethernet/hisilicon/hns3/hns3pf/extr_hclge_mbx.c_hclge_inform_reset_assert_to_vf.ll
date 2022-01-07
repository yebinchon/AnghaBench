; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_inform_reset_assert_to_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/hns3pf/extr_hclge_mbx.c_hclge_inform_reset_assert_to_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hclge_vport = type { i64, %struct.hclge_dev* }
%struct.hclge_dev = type { i64 }

@HNAE3_FUNC_RESET = common dso_local global i64 0, align 8
@HNAE3_VF_PF_FUNC_RESET = common dso_local global i32 0, align 4
@HNAE3_FLR_RESET = common dso_local global i64 0, align 8
@HNAE3_VF_FULL_RESET = common dso_local global i32 0, align 4
@HNAE3_VF_FUNC_RESET = common dso_local global i32 0, align 4
@HCLGE_MBX_ASSERTING_RESET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hclge_inform_reset_assert_to_vf(%struct.hclge_vport* %0) #0 {
  %2 = alloca %struct.hclge_vport*, align 8
  %3 = alloca %struct.hclge_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i64], align 16
  %6 = alloca i64, align 8
  store %struct.hclge_vport* %0, %struct.hclge_vport** %2, align 8
  %7 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %8 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %7, i32 0, i32 1
  %9 = load %struct.hclge_dev*, %struct.hclge_dev** %8, align 8
  store %struct.hclge_dev* %9, %struct.hclge_dev** %3, align 8
  %10 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %11 = getelementptr inbounds %struct.hclge_vport, %struct.hclge_vport* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %6, align 8
  %13 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %14 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @HNAE3_FUNC_RESET, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @HNAE3_VF_PF_FUNC_RESET, align 4
  store i32 %19, i32* %4, align 4
  br label %31

20:                                               ; preds = %1
  %21 = load %struct.hclge_dev*, %struct.hclge_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hclge_dev, %struct.hclge_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HNAE3_FLR_RESET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @HNAE3_VF_FULL_RESET, align 4
  store i32 %27, i32* %4, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @HNAE3_VF_FUNC_RESET, align 4
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %31

31:                                               ; preds = %30, %18
  %32 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %33 = call i32 @memcpy(i64* %32, i32* %4, i32 4)
  %34 = load %struct.hclge_vport*, %struct.hclge_vport** %2, align 8
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %5, i64 0, i64 0
  %36 = load i32, i32* @HCLGE_MBX_ASSERTING_RESET, align 4
  %37 = load i64, i64* %6, align 8
  %38 = call i32 @hclge_send_mbx_msg(%struct.hclge_vport* %34, i64* %35, i32 16, i32 %36, i64 %37)
  ret i32 %38
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @hclge_send_mbx_msg(%struct.hclge_vport*, i64*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
