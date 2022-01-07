; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_is_block_implemented.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_is_block_implemented.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu_hwinfo = type { %struct.rvu_block* }
%struct.rvu_block = type { i32 }

@BLKADDR_RVUM = common dso_local global i32 0, align 4
@BLK_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_block_implemented(%struct.rvu_hwinfo* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvu_hwinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rvu_block*, align 8
  store %struct.rvu_hwinfo* %0, %struct.rvu_hwinfo** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BLKADDR_RVUM, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @BLK_COUNT, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %2
  store i32 0, i32* %3, align 4
  br label %25

15:                                               ; preds = %10
  %16 = load %struct.rvu_hwinfo*, %struct.rvu_hwinfo** %4, align 8
  %17 = getelementptr inbounds %struct.rvu_hwinfo, %struct.rvu_hwinfo* %16, i32 0, i32 0
  %18 = load %struct.rvu_block*, %struct.rvu_block** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %18, i64 %20
  store %struct.rvu_block* %21, %struct.rvu_block** %6, align 8
  %22 = load %struct.rvu_block*, %struct.rvu_block** %6, align 8
  %23 = getelementptr inbounds %struct.rvu_block, %struct.rvu_block* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %15, %14
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
