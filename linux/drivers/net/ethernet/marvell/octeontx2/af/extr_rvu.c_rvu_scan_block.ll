; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_scan_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_scan_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32 }
%struct.rvu_block = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rvu_pfvf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rvu*, %struct.rvu_block*)* @rvu_scan_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rvu_scan_block(%struct.rvu* %0, %struct.rvu_block* %1) #0 {
  %3 = alloca %struct.rvu*, align 8
  %4 = alloca %struct.rvu_block*, align 8
  %5 = alloca %struct.rvu_pfvf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rvu* %0, %struct.rvu** %3, align 8
  store %struct.rvu_block* %1, %struct.rvu_block** %4, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %60, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %11 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %9, %13
  br i1 %14, label %15, label %63

15:                                               ; preds = %8
  %16 = load %struct.rvu*, %struct.rvu** %3, align 8
  %17 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %18 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %21 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %25 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %23, %26
  %28 = or i32 %22, %27
  %29 = call i32 @rvu_read64(%struct.rvu* %16, i32 %19, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @BIT_ULL(i32 63)
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %15
  br label %60

35:                                               ; preds = %15
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %38 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @__set_bit(i32 %36, i32 %40)
  %42 = load %struct.rvu*, %struct.rvu** %3, align 8
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 65535
  %46 = call %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu* %42, i32 %45)
  store %struct.rvu_pfvf* %46, %struct.rvu_pfvf** %5, align 8
  %47 = load %struct.rvu*, %struct.rvu** %3, align 8
  %48 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %5, align 8
  %49 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %50 = load i32, i32* %6, align 4
  %51 = ashr i32 %50, 8
  %52 = and i32 %51, 65535
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @rvu_update_rsrc_map(%struct.rvu* %47, %struct.rvu_pfvf* %48, %struct.rvu_block* %49, i32 %52, i32 %53, i32 1)
  %55 = load %struct.rvu*, %struct.rvu** %3, align 8
  %56 = load %struct.rvu_pfvf*, %struct.rvu_pfvf** %5, align 8
  %57 = load %struct.rvu_block*, %struct.rvu_block** %4, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @rvu_set_msix_offset(%struct.rvu* %55, %struct.rvu_pfvf* %56, %struct.rvu_block* %57, i32 %58)
  br label %60

60:                                               ; preds = %35, %34
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %8

63:                                               ; preds = %8
  ret void
}

declare dso_local i32 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local %struct.rvu_pfvf* @rvu_get_pfvf(%struct.rvu*, i32) #1

declare dso_local i32 @rvu_update_rsrc_map(%struct.rvu*, %struct.rvu_pfvf*, %struct.rvu_block*, i32, i32, i32) #1

declare dso_local i32 @rvu_set_msix_offset(%struct.rvu*, %struct.rvu_pfvf*, %struct.rvu_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
