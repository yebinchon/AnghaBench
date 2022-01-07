; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nixlf_rss_ctx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu_nix.c_nixlf_rss_ctx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_pfvf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MAX_RSS_INDIR_TBL_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rvu*, i32, %struct.rvu_pfvf*, i32, i32, i32, i32)* @nixlf_rss_ctx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nixlf_rss_ctx_init(%struct.rvu* %0, i32 %1, %struct.rvu_pfvf* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.rvu*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rvu_pfvf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.rvu_pfvf* %2, %struct.rvu_pfvf** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %86

22:                                               ; preds = %7
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %18, align 4
  %26 = load %struct.rvu*, %struct.rvu** %9, align 8
  %27 = getelementptr inbounds %struct.rvu, %struct.rvu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %11, align 8
  %30 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %29, i32 0, i32 0
  %31 = load i32, i32* %18, align 4
  %32 = load i32, i32* %15, align 4
  %33 = call i32 @qmem_alloc(i32 %28, %struct.TYPE_2__** %30, i32 %31, i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %8, align 4
  br label %86

38:                                               ; preds = %22
  %39 = load %struct.rvu*, %struct.rvu** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @NIX_AF_LFX_RSS_BASE(i32 %41)
  %43 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %11, align 8
  %44 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = trunc i64 %47 to i32
  %49 = call i32 @rvu_write64(%struct.rvu* %39, i32 %40, i32 %42, i32 %48)
  %50 = load %struct.rvu*, %struct.rvu** %9, align 8
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @NIX_AF_LFX_RSS_CFG(i32 %52)
  %54 = call i32 @BIT_ULL(i32 36)
  %55 = call i32 @BIT_ULL(i32 4)
  %56 = or i32 %54, %55
  %57 = load i32, i32* %18, align 4
  %58 = load i32, i32* @MAX_RSS_INDIR_TBL_SIZE, align 4
  %59 = sdiv i32 %57, %58
  %60 = call i32 @ilog2(i32 %59)
  %61 = or i32 %56, %60
  %62 = call i32 @rvu_write64(%struct.rvu* %50, i32 %51, i32 %53, i32 %61)
  store i32 0, i32* %17, align 4
  br label %63

63:                                               ; preds = %82, %38
  %64 = load i32, i32* %17, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %63
  %68 = load %struct.rvu*, %struct.rvu** %9, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %17, align 4
  %72 = call i32 @NIX_AF_LFX_RSS_GRPX(i32 %70, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @ilog2(i32 %73)
  %75 = sub nsw i32 %74, 1
  %76 = shl i32 %75, 16
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %17, align 4
  %79 = mul nsw i32 %77, %78
  %80 = or i32 %76, %79
  %81 = call i32 @rvu_write64(%struct.rvu* %68, i32 %69, i32 %72, i32 %80)
  br label %82

82:                                               ; preds = %67
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %17, align 4
  br label %63

85:                                               ; preds = %63
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %36, %21
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @qmem_alloc(i32, %struct.TYPE_2__**, i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @NIX_AF_LFX_RSS_BASE(i32) #1

declare dso_local i32 @NIX_AF_LFX_RSS_CFG(i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @NIX_AF_LFX_RSS_GRPX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
