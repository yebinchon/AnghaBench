; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_dma_vin_region.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-disp.c_solo_dma_vin_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.solo_dev*, i64, i32, i32)* @solo_dma_vin_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_dma_vin_region(%struct.solo_dev* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.solo_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 64, i32* %11, align 4
  store i32 256, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32* @kmalloc(i32 256, i32 %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %63

22:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %23

23:                                               ; preds = %33, %22
  %24 = load i32, i32* %13, align 4
  %25 = icmp slt i32 %24, 64
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @cpu_to_le16(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %28, i32* %32, align 4
  br label %33

33:                                               ; preds = %26
  %34 = load i32, i32* %13, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %13, align 4
  br label %23

36:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %56, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %37
  %42 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = load %struct.solo_dev*, %struct.solo_dev** %6, align 8
  %45 = call i64 @SOLO_MOTION_EXT_ADDR(%struct.solo_dev* %44)
  %46 = load i64, i64* %7, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i32, i32* %13, align 4
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %47, %49
  %51 = call i32 @solo_p2m_dma(%struct.solo_dev* %42, i32 1, i32* %43, i64 %50, i32 256, i32 0, i32 0)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %59

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 256
  store i32 %58, i32* %13, align 4
  br label %37

59:                                               ; preds = %54, %37
  %60 = load i32*, i32** %10, align 8
  %61 = call i32 @kfree(i32* %60)
  %62 = load i32, i32* %14, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %19
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @solo_p2m_dma(%struct.solo_dev*, i32, i32*, i64, i32, i32, i32) #1

declare dso_local i64 @SOLO_MOTION_EXT_ADDR(%struct.solo_dev*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
