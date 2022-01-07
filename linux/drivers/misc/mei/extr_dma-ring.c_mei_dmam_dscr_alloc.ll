; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dmam_dscr_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_dma-ring.c_mei_dmam_dscr_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i32 }
%struct.mei_dma_dscr = type { i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mei_device*, %struct.mei_dma_dscr*)* @mei_dmam_dscr_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mei_dmam_dscr_alloc(%struct.mei_device* %0, %struct.mei_dma_dscr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mei_device*, align 8
  %5 = alloca %struct.mei_dma_dscr*, align 8
  store %struct.mei_device* %0, %struct.mei_device** %4, align 8
  store %struct.mei_dma_dscr* %1, %struct.mei_dma_dscr** %5, align 8
  %6 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %5, align 8
  %7 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %5, align 8
  %13 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @is_power_of_2(i32 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %11
  %25 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %5, align 8
  %26 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %51

30:                                               ; preds = %24
  %31 = load %struct.mei_device*, %struct.mei_device** %4, align 8
  %32 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %5, align 8
  %35 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %5, align 8
  %38 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %37, i32 0, i32 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @dmam_alloc_coherent(i32 %33, i32 %36, i32* %38, i32 %39)
  %41 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %5, align 8
  %42 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.mei_dma_dscr*, %struct.mei_dma_dscr** %5, align 8
  %44 = getelementptr inbounds %struct.mei_dma_dscr, %struct.mei_dma_dscr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %30
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %47, %29, %21, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @is_power_of_2(i32) #1

declare dso_local i64 @dmam_alloc_coherent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
