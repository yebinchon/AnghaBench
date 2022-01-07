; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_qp_prepare_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_qp_prepare_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_qp_ctxt_header = type { i32, i32, i32 }

@HINIC_QP_CTXT_TYPE_SQ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_qp_prepare_header(%struct.hinic_qp_ctxt_header* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hinic_qp_ctxt_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hinic_qp_ctxt_header* %0, %struct.hinic_qp_ctxt_header** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.hinic_qp_ctxt_header*, %struct.hinic_qp_ctxt_header** %5, align 8
  %15 = getelementptr inbounds %struct.hinic_qp_ctxt_header, %struct.hinic_qp_ctxt_header* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.hinic_qp_ctxt_header*, %struct.hinic_qp_ctxt_header** %5, align 8
  %18 = getelementptr inbounds %struct.hinic_qp_ctxt_header, %struct.hinic_qp_ctxt_header* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @HINIC_QP_CTXT_TYPE_SQ, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @SQ_CTXT_OFFSET(i32 %23, i32 %24, i32 0)
  %26 = load %struct.hinic_qp_ctxt_header*, %struct.hinic_qp_ctxt_header** %5, align 8
  %27 = getelementptr inbounds %struct.hinic_qp_ctxt_header, %struct.hinic_qp_ctxt_header* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %34

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @RQ_CTXT_OFFSET(i32 %29, i32 %30, i32 0)
  %32 = load %struct.hinic_qp_ctxt_header*, %struct.hinic_qp_ctxt_header** %5, align 8
  %33 = getelementptr inbounds %struct.hinic_qp_ctxt_header, %struct.hinic_qp_ctxt_header* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.hinic_qp_ctxt_header*, %struct.hinic_qp_ctxt_header** %5, align 8
  %36 = getelementptr inbounds %struct.hinic_qp_ctxt_header, %struct.hinic_qp_ctxt_header* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SIZE_16BYTES(i32 %37)
  %39 = load %struct.hinic_qp_ctxt_header*, %struct.hinic_qp_ctxt_header** %5, align 8
  %40 = getelementptr inbounds %struct.hinic_qp_ctxt_header, %struct.hinic_qp_ctxt_header* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.hinic_qp_ctxt_header*, %struct.hinic_qp_ctxt_header** %5, align 8
  %42 = call i32 @hinic_cpu_to_be32(%struct.hinic_qp_ctxt_header* %41, i32 12)
  ret void
}

declare dso_local i32 @SQ_CTXT_OFFSET(i32, i32, i32) #1

declare dso_local i32 @RQ_CTXT_OFFSET(i32, i32, i32) #1

declare dso_local i32 @SIZE_16BYTES(i32) #1

declare dso_local i32 @hinic_cpu_to_be32(%struct.hinic_qp_ctxt_header*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
