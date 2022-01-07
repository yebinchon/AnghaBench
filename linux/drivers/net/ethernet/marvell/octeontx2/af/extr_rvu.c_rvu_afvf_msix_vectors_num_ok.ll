; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_afvf_msix_vectors_num_ok.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_afvf_msix_vectors_num_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_pfvf* }
%struct.rvu_pfvf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@BLKADDR_RVUM = common dso_local global i32 0, align 4
@RVU_AF_INT_VEC_CNT = common dso_local global i64 0, align 8
@RVU_PF_INT_VEC_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*)* @rvu_afvf_msix_vectors_num_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_afvf_msix_vectors_num_ok(%struct.rvu* %0) #0 {
  %2 = alloca %struct.rvu*, align 8
  %3 = alloca %struct.rvu_pfvf*, align 8
  %4 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %2, align 8
  %5 = load %struct.rvu*, %struct.rvu** %2, align 8
  %6 = getelementptr inbounds %struct.rvu, %struct.rvu* %5, i32 0, i32 0
  %7 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %8 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %7, i64 0
  store %struct.rvu_pfvf* %8, %struct.rvu_pfvf** %3, align 8
  %9 = load %struct.rvu*, %struct.rvu** %2, align 8
  %10 = getelementptr inbounds %struct.rvu, %struct.rvu* %9, i32 0, i32 0
  %11 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %10, align 8
  %12 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %11, i64 0
  store %struct.rvu_pfvf* %12, %struct.rvu_pfvf** %3, align 8
  %13 = load %struct.rvu*, %struct.rvu** %2, align 8
  %14 = load i32, i32* @BLKADDR_RVUM, align 4
  %15 = call i32 @RVU_PRIV_PFX_INT_CFG(i32 0)
  %16 = call i32 @rvu_read64(%struct.rvu* %13, i32 %14, i32 %15)
  %17 = and i32 %16, 1023
  store i32 %17, i32* %4, align 4
  %18 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %3, align 8
  %19 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @RVU_AF_INT_VEC_CNT, align 8
  %23 = load i64, i64* @RVU_PF_INT_VEC_CNT, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp sge i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %26, %1
  %30 = phi i1 [ false, %1 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  ret i32 %31
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @RVU_PRIV_PFX_INT_CFG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
