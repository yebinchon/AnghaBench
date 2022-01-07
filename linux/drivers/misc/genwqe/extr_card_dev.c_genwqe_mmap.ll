; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_dev.c_genwqe_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/genwqe/extr_card_dev.c_genwqe_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i64 }
%struct.vm_area_struct = type { i64, i64, i32*, %struct.genwqe_file*, i32 }
%struct.genwqe_file = type { %struct.genwqe_dev* }
%struct.genwqe_dev = type { i32 }
%struct.dma_mapping = type { i64, i32, i32*, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@MAX_ORDER = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GENWQE_MAPPING_RAW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@genwqe_vma_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @genwqe_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genwqe_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.genwqe_file*, align 8
  %10 = alloca %struct.genwqe_dev*, align 8
  %11 = alloca %struct.dma_mapping*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %8, align 8
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = getelementptr inbounds %struct.file, %struct.file* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.genwqe_file*
  store %struct.genwqe_file* %22, %struct.genwqe_file** %9, align 8
  %23 = load %struct.genwqe_file*, %struct.genwqe_file** %9, align 8
  %24 = getelementptr inbounds %struct.genwqe_file, %struct.genwqe_file* %23, i32 0, i32 0
  %25 = load %struct.genwqe_dev*, %struct.genwqe_dev** %24, align 8
  store %struct.genwqe_dev* %25, %struct.genwqe_dev** %10, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %140

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = call i64 @get_order(i64 %32)
  %34 = load i64, i64* @MAX_ORDER, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %140

39:                                               ; preds = %31
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.dma_mapping* @kzalloc(i32 40, i32 %40)
  store %struct.dma_mapping* %41, %struct.dma_mapping** %11, align 8
  %42 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %43 = icmp eq %struct.dma_mapping* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %140

47:                                               ; preds = %39
  %48 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %49 = load i32, i32* @GENWQE_MAPPING_RAW, align 4
  %50 = call i32 @genwqe_mapping_init(%struct.dma_mapping* %48, i32 %49)
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %56 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %55, i32 0, i32 4
  store i8* %54, i8** %56, align 8
  %57 = load i64, i64* %8, align 8
  %58 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %59 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = call i32 @DIV_ROUND_UP(i64 %60, i32 %61)
  %63 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %64 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.genwqe_dev*, %struct.genwqe_dev** %10, align 8
  %66 = load i64, i64* %8, align 8
  %67 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %68 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %67, i32 0, i32 1
  %69 = call i32* @__genwqe_alloc_consistent(%struct.genwqe_dev* %65, i64 %66, i32* %68)
  %70 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %71 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %73 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %47
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %136

79:                                               ; preds = %47
  %80 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %81 = call i64 @capable(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i64, i64* %8, align 8
  %85 = icmp ugt i64 %84, 4
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %88 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %91 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  store i32 %89, i32* %92, align 4
  br label %93

93:                                               ; preds = %86, %83, %79
  %94 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %95 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = call i64 @virt_to_phys(i32* %96)
  %98 = load i64, i64* @PAGE_SHIFT, align 8
  %99 = lshr i64 %97, %98
  store i64 %99, i64* %7, align 8
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %102 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %107 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @remap_pfn_range(%struct.vm_area_struct* %100, i64 %103, i64 %104, i64 %105, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %93
  %113 = load i32, i32* @EFAULT, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %124

115:                                              ; preds = %93
  %116 = load %struct.genwqe_file*, %struct.genwqe_file** %9, align 8
  %117 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %118 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %117, i32 0, i32 3
  store %struct.genwqe_file* %116, %struct.genwqe_file** %118, align 8
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %120 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %119, i32 0, i32 2
  store i32* @genwqe_vma_ops, i32** %120, align 8
  %121 = load %struct.genwqe_file*, %struct.genwqe_file** %9, align 8
  %122 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %123 = call i32 @__genwqe_add_mapping(%struct.genwqe_file* %121, %struct.dma_mapping* %122)
  store i32 0, i32* %3, align 4
  br label %140

124:                                              ; preds = %112
  %125 = load %struct.genwqe_dev*, %struct.genwqe_dev** %10, align 8
  %126 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %127 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %130 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %133 = getelementptr inbounds %struct.dma_mapping, %struct.dma_mapping* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @__genwqe_free_consistent(%struct.genwqe_dev* %125, i64 %128, i32* %131, i32 %134)
  br label %136

136:                                              ; preds = %124, %76
  %137 = load %struct.dma_mapping*, %struct.dma_mapping** %11, align 8
  %138 = call i32 @kfree(%struct.dma_mapping* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %136, %115, %44, %36, %28
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i64 @get_order(i64) #1

declare dso_local %struct.dma_mapping* @kzalloc(i32, i32) #1

declare dso_local i32 @genwqe_mapping_init(%struct.dma_mapping*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32* @__genwqe_alloc_consistent(%struct.genwqe_dev*, i64, i32*) #1

declare dso_local i64 @capable(i32) #1

declare dso_local i64 @virt_to_phys(i32*) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

declare dso_local i32 @__genwqe_add_mapping(%struct.genwqe_file*, %struct.dma_mapping*) #1

declare dso_local i32 @__genwqe_free_consistent(%struct.genwqe_dev*, i64, i32*, i32) #1

declare dso_local i32 @kfree(%struct.dma_mapping*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
