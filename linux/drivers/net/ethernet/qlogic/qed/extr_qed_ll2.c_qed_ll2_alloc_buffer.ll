; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_alloc_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_alloc_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Failed to allocate LL2 buffer data\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to map LL2 buffer data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32**, i32*)* @qed_ll2_alloc_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_alloc_buffer(%struct.qed_dev* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %9 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call i32* @kmalloc(i32 %12, i32 %13)
  %15 = load i32**, i32*** %6, align 8
  store i32* %14, i32** %15, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %21 = call i32 @DP_INFO(%struct.qed_dev* %20, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %59

24:                                               ; preds = %3
  %25 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %26 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32**, i32*** %6, align 8
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* @NET_SKB_PAD, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %35 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %40 = call i32 @dma_map_single(i32* %28, i32* %33, i32 %38, i32 %39)
  %41 = load i32*, i32** %7, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %43 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @dma_mapping_error(i32* %45, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %24
  %51 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %52 = call i32 @DP_INFO(%struct.qed_dev* %51, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32**, i32*** %6, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @kfree(i32* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %4, align 4
  br label %59

58:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %50, %19
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_dev*, i8*) #1

declare dso_local i32 @dma_map_single(i32*, i32*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
