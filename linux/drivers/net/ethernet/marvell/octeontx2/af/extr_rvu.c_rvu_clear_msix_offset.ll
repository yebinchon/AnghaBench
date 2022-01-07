; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_clear_msix_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_clear_msix_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_pfvf = type { i32, i64* }
%struct.rvu_block = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.rvu_pfvf*, %struct.rvu_block*, i32)* @rvu_clear_msix_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_clear_msix_offset(%struct.rvu* %0, %struct.rvu_pfvf* %1, %struct.rvu_block* %2, i32 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca %struct.rvu_pfvf*, align 8
  %7 = alloca %struct.rvu_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
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
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %9, align 8
  %31 = load %struct.rvu*, %struct.rvu** %5, align 8
  %32 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %33 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %36 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %40 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = shl i32 %38, %41
  %43 = or i32 %37, %42
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = and i64 %45, -2048
  %47 = trunc i64 %46 to i32
  %48 = call i32 @rvu_write64(%struct.rvu* %31, i32 %34, i32 %43, i32 %47)
  %49 = load %struct.rvu*, %struct.rvu** %5, align 8
  %50 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %51 = load %struct.rvu_block*, %struct.rvu_block** %7, align 8
  %52 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i64 @rvu_get_msix_offset(%struct.rvu* %49, %struct.rvu_pfvf* %50, i32 %53, i32 %54)
  store i64 %55, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %56

56:                                               ; preds = %68, %4
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %62 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* %10, align 8
  %66 = add i64 %64, %65
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %60
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %10, align 8
  br label %56

71:                                               ; preds = %56
  %72 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %6, align 8
  %73 = getelementptr inbounds %struct.rvu_pfvf, %struct.rvu_pfvf* %72, i32 0, i32 0
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %11, align 8
  %76 = call i32 @rvu_free_rsrc_contig(i32* %73, i64 %74, i64 %75)
  ret void
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i64 @rvu_get_msix_offset(%struct.rvu*, %struct.rvu_pfvf*, i32, i32) #1

declare dso_local i32 @rvu_free_rsrc_contig(i32*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
