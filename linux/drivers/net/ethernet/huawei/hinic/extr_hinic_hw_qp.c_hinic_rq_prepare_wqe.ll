; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_prepare_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_rq_prepare_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_rq = type { i32*, %struct.hinic_rq_cqe** }
%struct.hinic_rq_cqe = type { i32 }
%struct.hinic_rq_wqe = type { %struct.hinic_rq_ctrl, %struct.hinic_rq_bufdesc, %struct.hinic_rq_cqe_sect }
%struct.hinic_rq_ctrl = type { i32 }
%struct.hinic_rq_bufdesc = type { i32, i32 }
%struct.hinic_rq_cqe_sect = type { i32 }
%struct.hinic_sge = type { i32, i32 }

@LEN = common dso_local global i32 0, align 4
@COMPLETE_LEN = common dso_local global i32 0, align 4
@BUFDESC_SECT_LEN = common dso_local global i32 0, align 4
@RQ_COMPLETE_SGE = common dso_local global i32 0, align 4
@COMPLETE_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_rq_prepare_wqe(%struct.hinic_rq* %0, i64 %1, %struct.hinic_rq_wqe* %2, %struct.hinic_sge* %3) #0 {
  %5 = alloca %struct.hinic_rq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hinic_rq_wqe*, align 8
  %8 = alloca %struct.hinic_sge*, align 8
  %9 = alloca %struct.hinic_rq_cqe_sect*, align 8
  %10 = alloca %struct.hinic_rq_bufdesc*, align 8
  %11 = alloca %struct.hinic_rq_cqe*, align 8
  %12 = alloca %struct.hinic_rq_ctrl*, align 8
  %13 = alloca i32, align 4
  store %struct.hinic_rq* %0, %struct.hinic_rq** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.hinic_rq_wqe* %2, %struct.hinic_rq_wqe** %7, align 8
  store %struct.hinic_sge* %3, %struct.hinic_sge** %8, align 8
  %14 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %7, align 8
  %15 = getelementptr inbounds %struct.hinic_rq_wqe, %struct.hinic_rq_wqe* %14, i32 0, i32 2
  store %struct.hinic_rq_cqe_sect* %15, %struct.hinic_rq_cqe_sect** %9, align 8
  %16 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %7, align 8
  %17 = getelementptr inbounds %struct.hinic_rq_wqe, %struct.hinic_rq_wqe* %16, i32 0, i32 1
  store %struct.hinic_rq_bufdesc* %17, %struct.hinic_rq_bufdesc** %10, align 8
  %18 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  %19 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %18, i32 0, i32 1
  %20 = load %struct.hinic_rq_cqe**, %struct.hinic_rq_cqe*** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %20, i64 %21
  %23 = load %struct.hinic_rq_cqe*, %struct.hinic_rq_cqe** %22, align 8
  store %struct.hinic_rq_cqe* %23, %struct.hinic_rq_cqe** %11, align 8
  %24 = load %struct.hinic_rq_wqe*, %struct.hinic_rq_wqe** %7, align 8
  %25 = getelementptr inbounds %struct.hinic_rq_wqe, %struct.hinic_rq_wqe* %24, i32 0, i32 0
  store %struct.hinic_rq_ctrl* %25, %struct.hinic_rq_ctrl** %12, align 8
  %26 = load %struct.hinic_rq*, %struct.hinic_rq** %5, align 8
  %27 = getelementptr inbounds %struct.hinic_rq, %struct.hinic_rq* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = call i32 @SIZE_8BYTES(i32 4)
  %33 = load i32, i32* @LEN, align 4
  %34 = call i32 @HINIC_RQ_CTRL_SET(i32 %32, i32 %33)
  %35 = call i32 @SIZE_8BYTES(i32 4)
  %36 = load i32, i32* @COMPLETE_LEN, align 4
  %37 = call i32 @HINIC_RQ_CTRL_SET(i32 %35, i32 %36)
  %38 = or i32 %34, %37
  %39 = call i32 @SIZE_8BYTES(i32 8)
  %40 = load i32, i32* @BUFDESC_SECT_LEN, align 4
  %41 = call i32 @HINIC_RQ_CTRL_SET(i32 %39, i32 %40)
  %42 = or i32 %38, %41
  %43 = load i32, i32* @RQ_COMPLETE_SGE, align 4
  %44 = load i32, i32* @COMPLETE_FORMAT, align 4
  %45 = call i32 @HINIC_RQ_CTRL_SET(i32 %43, i32 %44)
  %46 = or i32 %42, %45
  %47 = load %struct.hinic_rq_ctrl*, %struct.hinic_rq_ctrl** %12, align 8
  %48 = getelementptr inbounds %struct.hinic_rq_ctrl, %struct.hinic_rq_ctrl* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.hinic_rq_cqe_sect*, %struct.hinic_rq_cqe_sect** %9, align 8
  %50 = getelementptr inbounds %struct.hinic_rq_cqe_sect, %struct.hinic_rq_cqe_sect* %49, i32 0, i32 0
  %51 = load i32, i32* %13, align 4
  %52 = call i32 @hinic_set_sge(i32* %50, i32 %51, i32 4)
  %53 = load %struct.hinic_sge*, %struct.hinic_sge** %8, align 8
  %54 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.hinic_rq_bufdesc*, %struct.hinic_rq_bufdesc** %10, align 8
  %57 = getelementptr inbounds %struct.hinic_rq_bufdesc, %struct.hinic_rq_bufdesc* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.hinic_sge*, %struct.hinic_sge** %8, align 8
  %59 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hinic_rq_bufdesc*, %struct.hinic_rq_bufdesc** %10, align 8
  %62 = getelementptr inbounds %struct.hinic_rq_bufdesc, %struct.hinic_rq_bufdesc* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  ret void
}

declare dso_local i32 @HINIC_RQ_CTRL_SET(i32, i32) #1

declare dso_local i32 @SIZE_8BYTES(i32) #1

declare dso_local i32 @hinic_set_sge(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
