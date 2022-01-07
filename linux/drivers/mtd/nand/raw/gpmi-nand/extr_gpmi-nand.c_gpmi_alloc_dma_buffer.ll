; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_alloc_dma_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_alloc_dma_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i8*, i32, i32, i32*, i32, %struct.device*, %struct.bch_geometry }
%struct.device = type { i32 }
%struct.bch_geometry = type { i32 }
%struct.mtd_info = type { i64, i64 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_DMA = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*)* @gpmi_alloc_dma_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpmi_alloc_dma_buffer(%struct.gpmi_nand_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.bch_geometry*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  %7 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %8 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %7, i32 0, i32 6
  store %struct.bch_geometry* %8, %struct.bch_geometry** %4, align 8
  %9 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %10 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %9, i32 0, i32 5
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %13 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %12, i32 0, i32 4
  %14 = call %struct.mtd_info* @nand_to_mtd(i32* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %6, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %22

20:                                               ; preds = %1
  %21 = load i64, i64* @PAGE_SIZE, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = phi i64 [ %17, %19 ], [ %21, %20 ]
  %24 = load i32, i32* @GFP_DMA, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = or i32 %24, %25
  %27 = call i8* @kzalloc(i64 %23, i32 %26)
  %28 = bitcast i8* %27 to i32*
  %29 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %30 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %29, i32 0, i32 3
  store i32* %28, i32** %30, align 8
  %31 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %32 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  br label %76

36:                                               ; preds = %22
  %37 = load %struct.device*, %struct.device** %5, align 8
  %38 = load %struct.bch_geometry*, %struct.bch_geometry** %4, align 8
  %39 = getelementptr inbounds %struct.bch_geometry, %struct.bch_geometry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %42 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %41, i32 0, i32 2
  %43 = load i32, i32* @GFP_DMA, align 4
  %44 = call i32 @dma_alloc_coherent(%struct.device* %37, i32 %40, i32* %42, i32 %43)
  %45 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %46 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %48 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %36
  br label %76

52:                                               ; preds = %36
  %53 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %60

58:                                               ; preds = %52
  %59 = load i64, i64* @PAGE_SIZE, align 8
  br label %60

60:                                               ; preds = %58, %57
  %61 = phi i64 [ %55, %57 ], [ %59, %58 ]
  %62 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %61, %64
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kzalloc(i64 %65, i32 %66)
  %68 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %69 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %71 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %70, i32 0, i32 0
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  br label %76

75:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %81

76:                                               ; preds = %74, %51, %35
  %77 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %78 = call i32 @gpmi_free_dma_buffer(%struct.gpmi_nand_data* %77)
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %76, %75
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.mtd_info* @nand_to_mtd(i32*) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i32, i32*, i32) #1

declare dso_local i32 @gpmi_free_dma_buffer(%struct.gpmi_nand_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
