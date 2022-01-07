; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_me_pf_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/octeontx2/af/extr_rvu.c_rvu_me_pf_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@BLKADDR_RVUM = common dso_local global i32 0, align 4
@RVU_AF_PFME_INT = common dso_local global i32 0, align 4
@RVU_AF_PFTRPEND = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rvu_me_pf_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rvu_me_pf_intr_handler(i32 %0, i8* %1) #0 {
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
  %12 = load i32, i32* @RVU_AF_PFME_INT, align 4
  %13 = call i64 @rvu_read64(%struct.rvu* %10, i32 %11, i32 %12)
  store i64 %13, i64* %6, align 8
  store i64 0, i64* %7, align 8
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i64, i64* %7, align 8
  %16 = load %struct.rvu*, %struct.rvu** %5, align 8
  %17 = getelementptr inbounds %struct.rvu, %struct.rvu* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ult i64 %15, %20
  br i1 %21, label %22, label %45

22:                                               ; preds = %14
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = shl i64 1, %24
  %26 = and i64 %23, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %22
  %29 = load %struct.rvu*, %struct.rvu** %5, align 8
  %30 = load i32, i32* @BLKADDR_RVUM, align 4
  %31 = load i32, i32* @RVU_AF_PFTRPEND, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @BIT_ULL(i64 %32)
  %34 = call i32 @rvu_write64(%struct.rvu* %29, i32 %30, i32 %31, i32 %33)
  %35 = load %struct.rvu*, %struct.rvu** %5, align 8
  %36 = load i32, i32* @BLKADDR_RVUM, align 4
  %37 = load i32, i32* @RVU_AF_PFME_INT, align 4
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @BIT_ULL(i64 %38)
  %40 = call i32 @rvu_write64(%struct.rvu* %35, i32 %36, i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %28, %22
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %14

45:                                               ; preds = %14
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %46
}

declare dso_local i64 @rvu_read64(%struct.rvu*, i32, i32) #1

declare dso_local i32 @rvu_write64(%struct.rvu*, i32, i32, i32) #1

declare dso_local i32 @BIT_ULL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
