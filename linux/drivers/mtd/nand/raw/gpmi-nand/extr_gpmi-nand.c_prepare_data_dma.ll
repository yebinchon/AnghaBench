; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_prepare_data_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_prepare_data_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { i8*, i32 }
%struct.scatterlist = type { i32 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpmi_nand_data*, i8*, i32, %struct.scatterlist*, i32)* @prepare_data_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_data_dma(%struct.gpmi_nand_data* %0, i8* %1, i32 %2, %struct.scatterlist* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpmi_nand_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.scatterlist* %3, %struct.scatterlist** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @gpmi_raw_len_to_len(%struct.gpmi_nand_data* %14, i32 %15)
  store i32 %16, i32* %13, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @virt_addr_valid(i8* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %39

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = call i32 @object_is_on_stack(i8* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %39, label %24

24:                                               ; preds = %20
  %25 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @sg_init_one(%struct.scatterlist* %25, i8* %26, i32 %27)
  %29 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %7, align 8
  %30 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @dma_map_sg(i32 %31, %struct.scatterlist* %32, i32 1, i32 %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %40

38:                                               ; preds = %24
  store i32 1, i32* %6, align 4
  br label %70

39:                                               ; preds = %20, %5
  br label %40

40:                                               ; preds = %39, %37
  %41 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %42 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %7, align 8
  %43 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @sg_init_one(%struct.scatterlist* %41, i8* %44, i32 %45)
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @DMA_TO_DEVICE, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %7, align 8
  %53 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %51, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %7, align 8
  %58 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @memcpy(i8* %59, i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %50, %40
  %64 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %7, align 8
  %65 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @dma_map_sg(i32 %66, %struct.scatterlist* %67, i32 1, i32 %68)
  store i32 0, i32* %6, align 4
  br label %70

70:                                               ; preds = %63, %38
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @gpmi_raw_len_to_len(%struct.gpmi_nand_data*, i32) #1

declare dso_local i64 @virt_addr_valid(i8*) #1

declare dso_local i32 @object_is_on_stack(i8*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i8*, i32) #1

declare dso_local i32 @dma_map_sg(i32, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
