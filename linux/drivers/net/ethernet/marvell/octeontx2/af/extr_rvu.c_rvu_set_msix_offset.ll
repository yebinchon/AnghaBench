; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_set_msix_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_set_msix_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_pfvf = type { i32*, i32 }
%struct.rvu_block = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.rvu_pfvf*, %struct.rvu_block*, i32)* @rvu_set_msix_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_set_msix_offset(%struct.rvu* %0, %struct.rvu_pfvf* %1, %struct.rvu_block* %2, i32 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.rvu_pfvf*, align 8
  %7 = alloca %struct.rvu_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store %struct.rvu_pfvf* %1, %struct.rvu_pfvf** %6, align 8
  store %struct.rvu_block* %2, %struct.rvu_block** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.rvu*, %struct.rvu** %5, align 8
  %14 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %15 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %18 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %22 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %20, %23
  %25 = or i32 %19, %24
  %26 = call i32 @rvu_read64(%struct.rvu* %13, i32 %16, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = ashr i32 %27, 12
  %29 = and i32 %28, 255
  store i32 %29, i32* %9, align 4
  %30 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %31 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %30, i32 0, i32 1
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @rvu_rsrc_check_contig(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %4
  br label %83

36:                                               ; preds = %4
  %37 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %38 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %37, i32 0, i32 1
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @rvu_alloc_rsrc_contig(i32* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.rvu*, %struct.rvu** %5, align 8
  %42 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %43 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %46 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %50 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %48, %51
  %53 = or i32 %47, %52
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = and i64 %55, -2048
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = or i64 %56, %58
  %60 = trunc i64 %59 to i32
  %61 = call i32 @rvu_write64(%struct.rvu* %41, i32 %44, i32 %53, i32 %60)
  store i32 0, i32* %10, align 4
  br label %62

62:                                               ; preds = %80, %36
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %83

66:                                               ; preds = %62
  %67 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %68 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @MSIX_BLKLF(i32 %69, i32 %70)
  %72 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %73 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 %71, i32* %79, align 4
  br label %80

80:                                               ; preds = %66
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %62

83:                                               ; preds = %35, %62
  ret void
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_rsrc_check_contig(i32*, i32) #1

declare dso_local i32 @rvu_alloc_rsrc_contig(i32*, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @MSIX_BLKLF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
