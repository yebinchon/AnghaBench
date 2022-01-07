; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_free_pagepool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_free_pagepool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_desc_ring = type { i64, i64, %struct.page**, i32 }
%struct.page = type { i32 }
%struct.xgene_enet_raw_desc = type { i32 }
%struct.device = type { i32 }

@NV = common dso_local global i32 0, align 4
@DATAADDR = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_desc_ring*, %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc*)* @xgene_enet_free_pagepool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_free_pagepool(%struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_raw_desc* %1, %struct.xgene_enet_raw_desc* %2) #0 {
  %4 = alloca %struct.xgene_enet_desc_ring*, align 8
  %5 = alloca %struct.xgene_enet_raw_desc*, align 8
  %6 = alloca %struct.xgene_enet_raw_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.device*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xgene_enet_desc_ring* %0, %struct.xgene_enet_desc_ring** %4, align 8
  store %struct.xgene_enet_raw_desc* %1, %struct.xgene_enet_raw_desc** %5, align 8
  store %struct.xgene_enet_raw_desc* %2, %struct.xgene_enet_raw_desc** %6, align 8
  %15 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %16 = bitcast %struct.xgene_enet_raw_desc* %15 to i8*
  %17 = bitcast i8* %16 to i32*
  store i32* %17, i32** %7, align 8
  %18 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %19 = icmp ne %struct.xgene_enet_desc_ring* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %3
  %21 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %5, align 8
  %22 = icmp ne %struct.xgene_enet_raw_desc* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %6, align 8
  %25 = icmp ne %struct.xgene_enet_raw_desc* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %23
  %27 = load i32, i32* @NV, align 4
  %28 = load %struct.xgene_enet_raw_desc*, %struct.xgene_enet_raw_desc** %5, align 8
  %29 = getelementptr inbounds %struct.xgene_enet_raw_desc, %struct.xgene_enet_raw_desc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le64_to_cpu(i32 %30)
  %32 = call i32 @GET_VAL(i32 %27, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26, %23, %20, %3
  br label %101

35:                                               ; preds = %26
  %36 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %37 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call %struct.device* @ndev_to_dev(i32 %38)
  store %struct.device* %39, %struct.device** %9, align 8
  %40 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %41 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub i64 %42, 1
  store i64 %43, i64* %11, align 8
  %44 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %45 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %12, align 8
  store i32 0, i32* %14, align 4
  br label %47

47:                                               ; preds = %94, %35
  %48 = load i32, i32* %14, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %50, label %97

50:                                               ; preds = %47
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* %14, align 4
  %53 = xor i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le64_to_cpu(i32 %56)
  %58 = call i32 @xgene_enet_get_data_len(i32 %57)
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %50
  br label %97

62:                                               ; preds = %50
  %63 = load i32, i32* @DATAADDR, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %14, align 4
  %66 = xor i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @le64_to_cpu(i32 %69)
  %71 = call i32 @GET_VAL(i32 %63, i32 %70)
  store i32 %71, i32* %8, align 4
  %72 = load %struct.device*, %struct.device** %9, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %76 = call i32 @dma_unmap_page(%struct.device* %72, i32 %73, i32 %74, i32 %75)
  %77 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %78 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %77, i32 0, i32 2
  %79 = load %struct.page**, %struct.page*** %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = getelementptr inbounds %struct.page*, %struct.page** %79, i64 %80
  %82 = load %struct.page*, %struct.page** %81, align 8
  store %struct.page* %82, %struct.page** %10, align 8
  %83 = load %struct.page*, %struct.page** %10, align 8
  %84 = call i32 @put_page(%struct.page* %83)
  %85 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %86 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %85, i32 0, i32 2
  %87 = load %struct.page**, %struct.page*** %86, align 8
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.page*, %struct.page** %87, i64 %88
  store %struct.page* null, %struct.page** %89, align 8
  %90 = load i64, i64* %12, align 8
  %91 = add i64 %90, 1
  %92 = load i64, i64* %11, align 8
  %93 = and i64 %91, %92
  store i64 %93, i64* %12, align 8
  br label %94

94:                                               ; preds = %62
  %95 = load i32, i32* %14, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %14, align 4
  br label %47

97:                                               ; preds = %61, %47
  %98 = load i64, i64* %12, align 8
  %99 = load %struct.xgene_enet_desc_ring*, %struct.xgene_enet_desc_ring** %4, align 8
  %100 = getelementptr inbounds %struct.xgene_enet_desc_ring, %struct.xgene_enet_desc_ring* %99, i32 0, i32 1
  store i64 %98, i64* %100, align 8
  br label %101

101:                                              ; preds = %97, %34
  ret void
}

declare dso_local i32 @GET_VAL(i32, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local %struct.device* @ndev_to_dev(i32) #1

declare dso_local i32 @xgene_enet_get_data_len(i32) #1

declare dso_local i32 @dma_unmap_page(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
