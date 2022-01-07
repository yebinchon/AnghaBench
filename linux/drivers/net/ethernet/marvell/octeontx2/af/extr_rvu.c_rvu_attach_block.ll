; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_attach_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_attach_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.rvu_hwinfo* }
%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rvu_pfvf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, i32, i32, i32)* @rvu_attach_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_attach_block(%struct.rvu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.rvu_pfvf*, align 8
  %10 = alloca %struct.rvu_hwinfo*, align 8
  %11 = alloca %struct.rvu_block*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.rvu* %0, %struct.rvu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load %struct.rvu*, %struct.rvu** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %16, i32 %17)
  store %struct.rvu_pfvf* %18, %struct.rvu_pfvf** %9, align 8
  %19 = load %struct.rvu*, %struct.rvu** %5, align 8
  %20 = getelementptr inbounds %struct.rvu, %struct.rvu* %19, i32 0, i32 0
  %21 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %20, align 8
  store %struct.rvu_hwinfo* %21, %struct.rvu_hwinfo** %10, align 8
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %92

25:                                               ; preds = %4
  %26 = load %struct.rvu*, %struct.rvu** %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @rvu_get_blkaddr(%struct.rvu* %26, i32 %27, i32 0)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %92

32:                                               ; preds = %25
  %33 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %10, align 8
  %34 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %33, i32 0, i32 0
  %35 = load %struct.rvu_block*, %struct.rvu_block** %34, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %35, i64 %37
  store %struct.rvu_block* %38, %struct.rvu_block** %11, align 8
  %39 = load %struct.rvu_block*, %struct.rvu_block** %11, align 8
  %40 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %32
  br label %92

45:                                               ; preds = %32
  store i32 0, i32* %12, align 4
  br label %46

46:                                               ; preds = %89, %45
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %92

50:                                               ; preds = %46
  %51 = load %struct.rvu_block*, %struct.rvu_block** %11, align 8
  %52 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %51, i32 0, i32 2
  %53 = call i32 @rvu_alloc_rsrc(%struct.TYPE_2__* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %92

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = shl i32 %58, 8
  %60 = sext i32 %59 to i64
  %61 = or i64 -9223372036854775808, %60
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = or i64 %61, %63
  store i64 %64, i64* %15, align 8
  %65 = load %struct.rvu*, %struct.rvu** %5, align 8
  %66 = load i32, i32* %14, align 4
  %67 = load %struct.rvu_block*, %struct.rvu_block** %11, align 8
  %68 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.rvu_block*, %struct.rvu_block** %11, align 8
  %72 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %70, %73
  %75 = or i32 %69, %74
  %76 = load i64, i64* %15, align 8
  %77 = call i32 @rvu_write64(%struct.rvu* %65, i32 %66, i32 %75, i64 %76)
  %78 = load %struct.rvu*, %struct.rvu** %5, align 8
  %79 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %9, align 8
  %80 = load %struct.rvu_block*, %struct.rvu_block** %11, align 8
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @rvu_update_rsrc_map(%struct.rvu* %78, %struct.rvu_pfvf* %79, %struct.rvu_block* %80, i32 %81, i32 %82, i32 1)
  %84 = load %struct.rvu*, %struct.rvu** %5, align 8
  %85 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %9, align 8
  %86 = load %struct.rvu_block*, %struct.rvu_block** %11, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @rvu_set_msix_offset(%struct.rvu* %84, %struct.rvu_pfvf* %85, %struct.rvu_block* %86, i32 %87)
  br label %89

89:                                               ; preds = %57
  %90 = load i32, i32* %12, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %12, align 4
  br label %46

92:                                               ; preds = %24, %31, %44, %56, %46
  ret void
}

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_get_blkaddr(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_alloc_rsrc(%struct.TYPE_2__*) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i64) #1

declare dso_local i32 @rvu_update_rsrc_map(%struct.rvu*, %struct.rvu_pfvf*, %struct.rvu_block*, i32, i32, i32) #1

declare dso_local i32 @rvu_set_msix_offset(%struct.rvu*, %struct.rvu_pfvf*, %struct.rvu_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
