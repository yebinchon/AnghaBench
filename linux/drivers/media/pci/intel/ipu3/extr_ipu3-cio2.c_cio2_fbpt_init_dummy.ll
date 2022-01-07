; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_fbpt_init_dummy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/intel/ipu3/extr_ipu3-cio2.c_cio2_fbpt_init_dummy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cio2_device = type { i32, i32*, i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CIO2_PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cio2_device*)* @cio2_fbpt_init_dummy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cio2_fbpt_init_dummy(%struct.cio2_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cio2_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cio2_device* %0, %struct.cio2_device** %3, align 8
  %5 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %6 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %5, i32 0, i32 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* @CIO2_PAGE_SIZE, align 4
  %10 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %11 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i8* @dma_alloc_coherent(i32* %8, i32 %9, i32* %11, i32 %12)
  %14 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %15 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %17 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* @CIO2_PAGE_SIZE, align 4
  %21 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %22 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %21, i32 0, i32 2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i8* @dma_alloc_coherent(i32* %19, i32 %20, i32* %22, i32 %23)
  %25 = bitcast i8* %24 to i32*
  %26 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %27 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %26, i32 0, i32 1
  store i32* %25, i32** %27, align 8
  %28 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %29 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %28, i32 0, i32 3
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %1
  %33 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %34 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %32, %1
  %38 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %39 = call i32 @cio2_fbpt_exit_dummy(%struct.cio2_device* %38)
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %66

42:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* %4, align 4
  %45 = zext i32 %44 to i64
  %46 = load i32, i32* @CIO2_PAGE_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = udiv i64 %47, 4
  %49 = icmp ult i64 %45, %48
  br i1 %49, label %50, label %65

50:                                               ; preds = %43
  %51 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %52 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PAGE_SHIFT, align 4
  %55 = ashr i32 %53, %54
  %56 = load %struct.cio2_device*, %struct.cio2_device** %3, align 8
  %57 = getelementptr inbounds %struct.cio2_device, %struct.cio2_device* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32 %55, i32* %61, align 4
  br label %62

62:                                               ; preds = %50
  %63 = load i32, i32* %4, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %43

65:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %37
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @cio2_fbpt_exit_dummy(%struct.cio2_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
