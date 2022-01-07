; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c__ath10k_ce_completed_recv_next_nolock_64.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c__ath10k_ce_completed_recv_next_nolock_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_ce_pipe = type { i32, %struct.ath10k_ce_ring* }
%struct.ath10k_ce_ring = type { i32, i32, i32**, %struct.ce_desc_64* }
%struct.ce_desc_64 = type { i64 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k_ce_pipe*, i8**, i32*)* @_ath10k_ce_completed_recv_next_nolock_64 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_ath10k_ce_completed_recv_next_nolock_64(%struct.ath10k_ce_pipe* %0, i8** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_ce_pipe*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ath10k_ce_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ce_desc_64*, align 8
  %12 = alloca %struct.ce_desc_64*, align 8
  %13 = alloca %struct.ce_desc_64, align 8
  %14 = alloca i32, align 4
  store %struct.ath10k_ce_pipe* %0, %struct.ath10k_ce_pipe** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %16 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %15, i32 0, i32 1
  %17 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %16, align 8
  store %struct.ath10k_ce_ring* %17, %struct.ath10k_ce_ring** %8, align 8
  %18 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %19 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %22 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %10, align 4
  %24 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %25 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %24, i32 0, i32 3
  %26 = load %struct.ce_desc_64*, %struct.ce_desc_64** %25, align 8
  store %struct.ce_desc_64* %26, %struct.ce_desc_64** %11, align 8
  %27 = load %struct.ce_desc_64*, %struct.ce_desc_64** %11, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call %struct.ce_desc_64* @CE_DEST_RING_TO_DESC_64(%struct.ce_desc_64* %27, i32 %28)
  store %struct.ce_desc_64* %29, %struct.ce_desc_64** %12, align 8
  %30 = load %struct.ce_desc_64*, %struct.ce_desc_64** %12, align 8
  %31 = bitcast %struct.ce_desc_64* %13 to i8*
  %32 = bitcast %struct.ce_desc_64* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = getelementptr inbounds %struct.ce_desc_64, %struct.ce_desc_64* %13, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @__le16_to_cpu(i64 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %3
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %77

41:                                               ; preds = %3
  %42 = load %struct.ce_desc_64*, %struct.ce_desc_64** %12, align 8
  %43 = getelementptr inbounds %struct.ce_desc_64, %struct.ce_desc_64* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i8**, i8*** %6, align 8
  %47 = icmp ne i8** %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %41
  %49 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %50 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %49, i32 0, i32 2
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  %55 = load i32*, i32** %54, align 8
  %56 = bitcast i32* %55 to i8*
  %57 = load i8**, i8*** %6, align 8
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %48, %41
  %59 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %5, align 8
  %60 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 5
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %65 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %64, i32 0, i32 2
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @CE_RING_IDX_INCR(i32 %71, i32 %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.ath10k_ce_ring*, %struct.ath10k_ce_ring** %8, align 8
  %76 = getelementptr inbounds %struct.ath10k_ce_ring, %struct.ath10k_ce_ring* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %70, %38
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local %struct.ce_desc_64* @CE_DEST_RING_TO_DESC_64(%struct.ce_desc_64*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__le16_to_cpu(i64) #1

declare dso_local i32 @CE_RING_IDX_INCR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
