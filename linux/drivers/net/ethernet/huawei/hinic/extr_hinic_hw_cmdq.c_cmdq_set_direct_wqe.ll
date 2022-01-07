; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_set_direct_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_cmdq.c_cmdq_set_direct_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_cmdq_wqe = type { %struct.hinic_cmdq_direct_wqe }
%struct.hinic_cmdq_direct_wqe = type { %struct.hinic_cmdq_wqe_scmd }
%struct.hinic_cmdq_wqe_scmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.hinic_cmdq_buf = type { i32 }

@COMPLETE_SGE = common dso_local global i32 0, align 4
@COMPLETE_DIRECT = common dso_local global i32 0, align 4
@DATA_DIRECT = common dso_local global i32 0, align 4
@BUFDESC_SCMD_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hinic_cmdq_wqe*, i32, i8*, i32, %struct.hinic_cmdq_buf*, i32, i32, i32, i32, i32)* @cmdq_set_direct_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cmdq_set_direct_wqe(%struct.hinic_cmdq_wqe* %0, i32 %1, i8* %2, i32 %3, %struct.hinic_cmdq_buf* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca %struct.hinic_cmdq_wqe*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.hinic_cmdq_buf*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.hinic_cmdq_direct_wqe*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.hinic_cmdq_wqe_scmd*, align 8
  store %struct.hinic_cmdq_wqe* %0, %struct.hinic_cmdq_wqe** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i32 %3, i32* %14, align 4
  store %struct.hinic_cmdq_buf* %4, %struct.hinic_cmdq_buf** %15, align 8
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %24 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %11, align 8
  %25 = getelementptr inbounds %struct.hinic_cmdq_wqe, %struct.hinic_cmdq_wqe* %24, i32 0, i32 0
  store %struct.hinic_cmdq_direct_wqe* %25, %struct.hinic_cmdq_direct_wqe** %21, align 8
  %26 = load %struct.hinic_cmdq_direct_wqe*, %struct.hinic_cmdq_direct_wqe** %21, align 8
  %27 = getelementptr inbounds %struct.hinic_cmdq_direct_wqe, %struct.hinic_cmdq_direct_wqe* %26, i32 0, i32 0
  store %struct.hinic_cmdq_wqe_scmd* %27, %struct.hinic_cmdq_wqe_scmd** %23, align 8
  %28 = load i32, i32* %12, align 4
  switch i32 %28, label %40 [
    i32 128, label %29
    i32 129, label %35
  ]

29:                                               ; preds = %10
  %30 = load i32, i32* @COMPLETE_SGE, align 4
  store i32 %30, i32* %22, align 4
  %31 = load %struct.hinic_cmdq_wqe_scmd*, %struct.hinic_cmdq_wqe_scmd** %23, align 8
  %32 = getelementptr inbounds %struct.hinic_cmdq_wqe_scmd, %struct.hinic_cmdq_wqe_scmd* %31, i32 0, i32 0
  %33 = load %struct.hinic_cmdq_buf*, %struct.hinic_cmdq_buf** %15, align 8
  %34 = call i32 @cmdq_set_sge_completion(%struct.TYPE_2__* %32, %struct.hinic_cmdq_buf* %33)
  br label %40

35:                                               ; preds = %10
  %36 = load i32, i32* @COMPLETE_DIRECT, align 4
  store i32 %36, i32* %22, align 4
  %37 = load %struct.hinic_cmdq_wqe_scmd*, %struct.hinic_cmdq_wqe_scmd** %23, align 8
  %38 = getelementptr inbounds %struct.hinic_cmdq_wqe_scmd, %struct.hinic_cmdq_wqe_scmd* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %10, %35, %29
  %41 = load %struct.hinic_cmdq_wqe*, %struct.hinic_cmdq_wqe** %11, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %18, align 4
  %45 = load i32, i32* %19, align 4
  %46 = load i32, i32* %20, align 4
  %47 = load i32, i32* %22, align 4
  %48 = load i32, i32* @DATA_DIRECT, align 4
  %49 = load i32, i32* @BUFDESC_SCMD_LEN, align 4
  %50 = call i32 @cmdq_prepare_wqe_ctrl(%struct.hinic_cmdq_wqe* %41, i32 %42, i32 %43, i32 %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.hinic_cmdq_direct_wqe*, %struct.hinic_cmdq_direct_wqe** %21, align 8
  %52 = load i8*, i8** %13, align 8
  %53 = load i32, i32* %14, align 4
  %54 = call i32 @cmdq_set_direct_wqe_data(%struct.hinic_cmdq_direct_wqe* %51, i8* %52, i32 %53)
  ret void
}

declare dso_local i32 @cmdq_set_sge_completion(%struct.TYPE_2__*, %struct.hinic_cmdq_buf*) #1

declare dso_local i32 @cmdq_prepare_wqe_ctrl(%struct.hinic_cmdq_wqe*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @cmdq_set_direct_wqe_data(%struct.hinic_cmdq_direct_wqe*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
