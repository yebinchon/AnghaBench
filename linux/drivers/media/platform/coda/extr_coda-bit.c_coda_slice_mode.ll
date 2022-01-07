; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_slice_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-bit.c_coda_slice_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@CODA_SLICING_SIZE_MASK = common dso_local global i32 0, align 4
@CODA_SLICING_SIZE_OFFSET = common dso_local global i32 0, align 4
@CODA_SLICING_UNIT_MASK = common dso_local global i32 0, align 4
@CODA_SLICING_UNIT_OFFSET = common dso_local global i32 0, align 4
@CODA_SLICING_MODE_MASK = common dso_local global i32 0, align 4
@CODA_SLICING_MODE_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.coda_ctx*)* @coda_slice_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_slice_mode(%struct.coda_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.coda_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %3, align 8
  %6 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %7 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %11 [
    i32 128, label %10
    i32 129, label %12
    i32 130, label %17
  ]

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %1, %10
  store i32 0, i32* %2, align 4
  br label %39

12:                                               ; preds = %1
  %13 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %14 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %4, align 4
  store i32 1, i32* %5, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.coda_ctx*, %struct.coda_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %12
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @CODA_SLICING_SIZE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @CODA_SLICING_SIZE_OFFSET, align 4
  %27 = shl i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CODA_SLICING_UNIT_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @CODA_SLICING_UNIT_OFFSET, align 4
  %32 = shl i32 %30, %31
  %33 = or i32 %27, %32
  %34 = load i32, i32* @CODA_SLICING_MODE_MASK, align 4
  %35 = and i32 1, %34
  %36 = load i32, i32* @CODA_SLICING_MODE_OFFSET, align 4
  %37 = shl i32 %35, %36
  %38 = or i32 %33, %37
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %22, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
