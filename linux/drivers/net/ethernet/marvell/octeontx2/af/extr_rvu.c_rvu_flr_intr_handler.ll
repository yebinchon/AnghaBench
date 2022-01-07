; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_flr_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_flr_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@BLKADDR_RVUM = common dso_local global i32 0, align 4
@RVU_AF_PFFLR_INT = common dso_local global i32 0, align 4
@RVU_AF_PFFLR_INT_ENA_W1C = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rvu_flr_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_flr_intr_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rvu*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.rvu*
  store %struct.rvu* %9, %struct.rvu** %5, align 8
  %10 = load %struct.rvu*, %struct.rvu** %5, align 8
  %11 = load i32, i32* @BLKADDR_RVUM, align 4
  %12 = load i32, i32* @RVU_AF_PFFLR_INT, align 4
  %13 = call i64 @rvu_read64(%struct.rvu* %10, i32 %11, i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %60

17:                                               ; preds = %2
  store i64 0, i64* %7, align 8
  br label %18

18:                                               ; preds = %56, %17
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.rvu*, %struct.rvu** %5, align 8
  %21 = getelementptr inbounds %struct.rvu, %struct.rvu* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %19, %24
  br i1 %25, label %26, label %59

26:                                               ; preds = %18
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = shl i64 1, %28
  %30 = and i64 %27, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.rvu*, %struct.rvu** %5, align 8
  %34 = getelementptr inbounds %struct.rvu, %struct.rvu* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.rvu*, %struct.rvu** %5, align 8
  %37 = getelementptr inbounds %struct.rvu, %struct.rvu* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @queue_work(i32 %35, i32* %41)
  %43 = load %struct.rvu*, %struct.rvu** %5, align 8
  %44 = load i32, i32* @BLKADDR_RVUM, align 4
  %45 = load i32, i32* @RVU_AF_PFFLR_INT, align 4
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @BIT_ULL(i64 %46)
  %48 = call i32 @rvu_write64(%struct.rvu* %43, i32 %44, i32 %45, i32 %47)
  %49 = load %struct.rvu*, %struct.rvu** %5, align 8
  %50 = load i32, i32* @BLKADDR_RVUM, align 4
  %51 = load i32, i32* @RVU_AF_PFFLR_INT_ENA_W1C, align 4
  %52 = load i64, i64* %7, align 8
  %53 = call i32 @BIT_ULL(i64 %52)
  %54 = call i32 @rvu_write64(%struct.rvu* %49, i32 %50, i32 %51, i32 %53)
  br label %55

55:                                               ; preds = %32, %26
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %7, align 8
  br label %18

59:                                               ; preds = %18
  br label %60

60:                                               ; preds = %59, %16
  %61 = load %struct.rvu*, %struct.rvu** %5, align 8
  %62 = call i32 @rvu_afvf_queue_flr_work(%struct.rvu* %61, i32 0, i32 64)
  %63 = load %struct.rvu*, %struct.rvu** %5, align 8
  %64 = getelementptr inbounds %struct.rvu, %struct.rvu* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 64
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load %struct.rvu*, %struct.rvu** %5, align 8
  %69 = load %struct.rvu*, %struct.rvu** %5, align 8
  %70 = getelementptr inbounds %struct.rvu, %struct.rvu* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sub nsw i32 %71, 64
  %73 = call i32 @rvu_afvf_queue_flr_work(%struct.rvu* %68, i32 64, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  %75 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %75
}

declare dso_local i64 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i64) #1

declare dso_local i32 @rvu_afvf_queue_flr_work(%struct.rvu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
