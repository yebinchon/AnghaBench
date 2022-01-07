; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_sq_prepare_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_qp.c_hinic_sq_prepare_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_sq = type { i32 }
%struct.hinic_sq_wqe = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { %struct.hinic_sge }
%struct.hinic_sge = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_sq_prepare_wqe(%struct.hinic_sq* %0, i32 %1, %struct.hinic_sq_wqe* %2, %struct.hinic_sge* %3, i32 %4) #0 {
  %6 = alloca %struct.hinic_sq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hinic_sq_wqe*, align 8
  %9 = alloca %struct.hinic_sge*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.hinic_sq* %0, %struct.hinic_sq** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hinic_sq_wqe* %2, %struct.hinic_sq_wqe** %8, align 8
  store %struct.hinic_sge* %3, %struct.hinic_sge** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.hinic_sq_wqe*, %struct.hinic_sq_wqe** %8, align 8
  %13 = getelementptr inbounds %struct.hinic_sq_wqe, %struct.hinic_sq_wqe* %12, i32 0, i32 2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 @sq_prepare_ctrl(i32* %13, i32 %14, i32 %15)
  %17 = load %struct.hinic_sq_wqe*, %struct.hinic_sq_wqe** %8, align 8
  %18 = getelementptr inbounds %struct.hinic_sq_wqe, %struct.hinic_sq_wqe* %17, i32 0, i32 1
  %19 = call i32 @sq_prepare_task(i32* %18)
  store i32 0, i32* %11, align 4
  br label %20

20:                                               ; preds = %38, %5
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %41

24:                                               ; preds = %20
  %25 = load %struct.hinic_sq_wqe*, %struct.hinic_sq_wqe** %8, align 8
  %26 = getelementptr inbounds %struct.hinic_sq_wqe, %struct.hinic_sq_wqe* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.hinic_sge*, %struct.hinic_sge** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.hinic_sge, %struct.hinic_sge* %32, i64 %34
  %36 = bitcast %struct.hinic_sge* %31 to i8*
  %37 = bitcast %struct.hinic_sge* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 4, i1 false)
  br label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %20

41:                                               ; preds = %20
  ret void
}

declare dso_local i32 @sq_prepare_ctrl(i32*, i32, i32) #1

declare dso_local i32 @sq_prepare_task(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
