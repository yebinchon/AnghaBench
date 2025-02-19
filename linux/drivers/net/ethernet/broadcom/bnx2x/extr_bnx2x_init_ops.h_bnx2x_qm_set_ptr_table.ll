; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_qm_set_ptr_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_init_ops.h_bnx2x_qm_set_ptr_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@QM_QUEUES_PER_FUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i64, i64)* @bnx2x_qm_set_ptr_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_qm_set_ptr_table(%struct.bnx2x* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x i64], align 16
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = bitcast [2 x i64]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %39, %4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* @QM_QUEUES_PER_FUNC, align 4
  %15 = mul nsw i32 4, %14
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %12
  %18 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* %9, align 4
  %21 = mul nsw i32 %20, 4
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %19, %22
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %24, 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @QM_QUEUES_PER_FUNC, align 4
  %28 = srem i32 %26, %27
  %29 = mul nsw i32 %25, %28
  %30 = call i32 @REG_WR(%struct.bnx2x* %18, i64 %23, i32 %29)
  %31 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = mul nsw i32 %33, 8
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %32, %35
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %10, i64 0, i64 0
  %38 = call i32 @bnx2x_init_wr_wb(%struct.bnx2x* %31, i64 %36, i64* %37, i32 2)
  br label %39

39:                                               ; preds = %17
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %12

42:                                               ; preds = %12
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #2

declare dso_local i32 @bnx2x_init_wr_wb(%struct.bnx2x*, i64, i64*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
