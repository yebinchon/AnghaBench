; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_reserve_dma_chan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_dma.c_scif_reserve_dma_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.scif_dev = type { i64, %struct.scif_hw_dev* }
%struct.scif_hw_dev = type { i32, %struct.dma_chan** }
%struct.dma_chan = type { i32 }
%struct.scif_endpt = type { %struct.TYPE_3__, %struct.scif_dev* }
%struct.TYPE_3__ = type { i32, %struct.dma_chan* }

@scif_info = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@scif_dev = common dso_local global %struct.scif_dev* null, align 8
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_reserve_dma_chan(%struct.scif_endpt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scif_endpt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scif_dev*, align 8
  %6 = alloca %struct.scif_hw_dev*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  store %struct.scif_endpt* %0, %struct.scif_endpt** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %12 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %11, i32 0, i32 1
  %13 = load %struct.scif_dev*, %struct.scif_dev** %12, align 8
  %14 = call i64 @scifdev_self(%struct.scif_dev* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %71

17:                                               ; preds = %10, %1
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @scif_info, i32 0, i32 0), align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.scif_dev*, %struct.scif_dev** @scif_dev, align 8
  %22 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %21, i64 0
  store %struct.scif_dev* %22, %struct.scif_dev** %5, align 8
  br label %27

23:                                               ; preds = %17
  %24 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %25 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %24, i32 0, i32 1
  %26 = load %struct.scif_dev*, %struct.scif_dev** %25, align 8
  store %struct.scif_dev* %26, %struct.scif_dev** %5, align 8
  br label %27

27:                                               ; preds = %23, %20
  %28 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %29 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %28, i32 0, i32 1
  %30 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %29, align 8
  store %struct.scif_hw_dev* %30, %struct.scif_hw_dev** %6, align 8
  %31 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %32 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @ENODEV, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %71

38:                                               ; preds = %27
  %39 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %40 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %39, i32 0, i32 1
  %41 = load %struct.dma_chan**, %struct.dma_chan*** %40, align 8
  %42 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %43 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.dma_chan*, %struct.dma_chan** %41, i64 %44
  %46 = load %struct.dma_chan*, %struct.dma_chan** %45, align 8
  store %struct.dma_chan* %46, %struct.dma_chan** %7, align 8
  %47 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %48 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, 1
  %51 = load %struct.scif_hw_dev*, %struct.scif_hw_dev** %6, align 8
  %52 = getelementptr inbounds %struct.scif_hw_dev, %struct.scif_hw_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = urem i64 %50, %54
  %56 = load %struct.scif_dev*, %struct.scif_dev** %5, align 8
  %57 = getelementptr inbounds %struct.scif_dev, %struct.scif_dev* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %59 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = call i32 @mutex_lock(i32* %60)
  %62 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %63 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %64 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store %struct.dma_chan* %62, %struct.dma_chan** %65, align 8
  %66 = load %struct.scif_endpt*, %struct.scif_endpt** %3, align 8
  %67 = getelementptr inbounds %struct.scif_endpt, %struct.scif_endpt* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %4, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %38, %35, %16
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @scifdev_self(%struct.scif_dev*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
