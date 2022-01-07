; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mvpp2_bm_pool = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mvpp2_port*, %struct.mvpp2_bm_pool*, i32*, i32*, i32)* @mvpp2_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mvpp2_buf_alloc(%struct.mvpp2_port* %0, %struct.mvpp2_bm_pool* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mvpp2_port*, align 8
  %8 = alloca %struct.mvpp2_bm_pool*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %7, align 8
  store %struct.mvpp2_bm_pool* %1, %struct.mvpp2_bm_pool** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %15 = call i8* @mvpp2_frag_alloc(%struct.mvpp2_bm_pool* %14)
  store i8* %15, i8** %13, align 8
  %16 = load i8*, i8** %13, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %54

19:                                               ; preds = %5
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %21 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i8*, i8** %13, align 8
  %27 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %28 = getelementptr inbounds %struct.mvpp2_bm_pool, %struct.mvpp2_bm_pool* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MVPP2_RX_BUF_SIZE(i32 %29)
  %31 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %32 = call i32 @dma_map_single(i32 %25, i8* %26, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %34 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @dma_mapping_error(i32 %38, i32 %39)
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %19
  %44 = load %struct.mvpp2_bm_pool*, %struct.mvpp2_bm_pool** %8, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = call i32 @mvpp2_frag_free(%struct.mvpp2_bm_pool* %44, i8* %45)
  store i8* null, i8** %6, align 8
  br label %54

47:                                               ; preds = %19
  %48 = load i32, i32* %12, align 4
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @virt_to_phys(i8* %50)
  %52 = load i32*, i32** %10, align 8
  store i32 %51, i32* %52, align 4
  %53 = load i8*, i8** %13, align 8
  store i8* %53, i8** %6, align 8
  br label %54

54:                                               ; preds = %47, %43, %18
  %55 = load i8*, i8** %6, align 8
  ret i8* %55
}

declare dso_local i8* @mvpp2_frag_alloc(%struct.mvpp2_bm_pool*) #1

declare dso_local i32 @dma_map_single(i32, i8*, i32, i32) #1

declare dso_local i32 @MVPP2_RX_BUF_SIZE(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @mvpp2_frag_free(%struct.mvpp2_bm_pool*, i8*) #1

declare dso_local i32 @virt_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
