; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_detach_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_detach_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i32, i32, i32, i32 }
%struct.rvu_pfvf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, i32)* @rvu_detach_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_detach_block(%struct.rvu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rvu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rvu_pfvf*, align 8
  %8 = alloca %struct.rvu_hwinfo*, align 8
  %9 = alloca %struct.rvu_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.rvu*, %struct.rvu** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %14, i32 %15)
  store %struct.rvu_pfvf* %16, %struct.rvu_pfvf** %7, align 8
  %17 = load %struct.rvu*, %struct.rvu** %4, align 8
  %18 = getelementptr inbounds %struct.rvu, %struct.rvu* %17, i32 0, i32 0
  %19 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %18, align 8
  store %struct.rvu_hwinfo* %19, %struct.rvu_hwinfo** %8, align 8
  %20 = load %struct.rvu*, %struct.rvu** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rvu_get_blkaddr(%struct.rvu* %20, i32 %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %87

27:                                               ; preds = %3
  %28 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %8, align 8
  %29 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %28, i32 0, i32 0
  %30 = load %struct.rvu_block*, %struct.rvu_block** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %30, i64 %32
  store %struct.rvu_block* %33, %struct.rvu_block** %9, align 8
  %34 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %7, align 8
  %35 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %36 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf* %34, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %27
  br label %87

42:                                               ; preds = %27
  store i32 0, i32* %10, align 4
  br label %43

43:                                               ; preds = %84, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = load %struct.rvu*, %struct.rvu** %4, align 8
  %49 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @rvu_lookup_rsrc(%struct.rvu* %48, %struct.rvu_block* %49, i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  br label %84

56:                                               ; preds = %47
  %57 = load %struct.rvu*, %struct.rvu** %4, align 8
  %58 = load i32, i32* %13, align 4
  %59 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %60 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %64 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %62, %65
  %67 = or i32 %61, %66
  %68 = call i32 @rvu_write64(%struct.rvu* %57, i32 %58, i32 %67, i32 0)
  %69 = load %struct.rvu*, %struct.rvu** %4, align 8
  %70 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %7, align 8
  %71 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @rvu_update_rsrc_map(%struct.rvu* %69, %struct.rvu_pfvf* %70, %struct.rvu_block* %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %76 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %75, i32 0, i32 2
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @rvu_free_rsrc(i32* %76, i32 %77)
  %79 = load %struct.rvu*, %struct.rvu** %4, align 8
  %80 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %7, align 8
  %81 = load %struct.rvu_block*, %struct.rvu_block** %9, align 8
  %82 = load i32, i32* %11, align 4
  %83 = call i32 @rvu_clear_msix_offset(%struct.rvu* %79, %struct.rvu_pfvf* %80, %struct.rvu_block* %81, i32 %82)
  br label %84

84:                                               ; preds = %56, %55
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %43

87:                                               ; preds = %26, %41, %43
  ret void
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_get_rsrc_mapcount(%struct.rvu_pfvf*, i32) #1

declare dso_local i32 @rvu_lookup_rsrc(%struct.rvu*, %struct.rvu_block*, i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @rvu_update_rsrc_map(%struct.rvu*, %struct.rvu_pfvf*, %struct.rvu_block*, i32, i32, i32) #1

declare dso_local i32 @rvu_free_rsrc(i32*, i32) #1

declare dso_local i32 @rvu_clear_msix_offset(%struct.rvu*, %struct.rvu_pfvf*, %struct.rvu_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
