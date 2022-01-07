; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_get_window_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rma.c_scif_get_window_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_endpt = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iova = type { i32 }

@SCIF_MAP_FIXED = common dso_local global i32 0, align 4
@EADDRINUSE = common dso_local global i32 0, align 4
@SCIF_DMA_63BIT_PFN = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_get_window_offset(%struct.scif_endpt* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.scif_endpt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.iova*, align 8
  %13 = alloca i32, align 4
  store %struct.scif_endpt* %0, %struct.scif_endpt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @SCIF_MAP_FIXED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %5
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @SCIF_IOVA_PFN(i32 %19)
  store i32 %20, i32* %11, align 4
  %21 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %22 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = add nsw i32 %25, %26
  %28 = sub nsw i32 %27, 1
  %29 = call %struct.iova* @reserve_iova(i32* %23, i32 %24, i32 %28)
  store %struct.iova* %29, %struct.iova** %12, align 8
  %30 = load %struct.iova*, %struct.iova** %12, align 8
  %31 = icmp ne %struct.iova* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %18
  %33 = load i32, i32* @EADDRINUSE, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %32, %18
  br label %50

36:                                               ; preds = %5
  %37 = load %struct.scif_endpt*, %struct.scif_endpt** %6, align 8
  %38 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* @SCIF_DMA_63BIT_PFN, align 8
  %42 = sub nsw i64 %41, 1
  %43 = call %struct.iova* @alloc_iova(i32* %39, i32 %40, i64 %42, i32 0)
  store %struct.iova* %43, %struct.iova** %12, align 8
  %44 = load %struct.iova*, %struct.iova** %12, align 8
  %45 = icmp ne %struct.iova* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %46, %36
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* %13, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load %struct.iova*, %struct.iova** %12, align 8
  %55 = getelementptr inbounds %struct.iova, %struct.iova* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @PAGE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32*, i32** %10, align 8
  store i32 %58, i32* %59, align 4
  br label %60

60:                                               ; preds = %53, %50
  %61 = load i32, i32* %13, align 4
  ret i32 %61
}

declare dso_local i32 @SCIF_IOVA_PFN(i32) #1

declare dso_local %struct.iova* @reserve_iova(i32*, i32, i32) #1

declare dso_local %struct.iova* @alloc_iova(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
