; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_alloc_ext_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vpu/extr_mtk_vpu.c_vpu_alloc_ext_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vpu = type { %struct.TYPE_2__*, i64, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }

@VPU_EXT_D_SIZE = common dso_local global i64 0, align 8
@VPU_EXT_P_SIZE = common dso_local global i64 0, align 8
@VPU_DMEM_EXT0_ADDR = common dso_local global i32 0, align 4
@VPU_PMEM_EXT0_ADDR = common dso_local global i32 0, align 4
@VPU_DMEM_EXT1_ADDR = common dso_local global i32 0, align 4
@VPU_PMEM_EXT1_ADDR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Failed to allocate the extended program memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s extend memory phy=0x%llx virt=0x%p\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Data\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Program\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_vpu*, i32)* @vpu_alloc_ext_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpu_alloc_ext_mem(%struct.mtk_vpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_vpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mtk_vpu* %0, %struct.mtk_vpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %12 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %11, i32 0, i32 2
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @VPU_EXT_D_SIZE, align 8
  br label %20

18:                                               ; preds = %2
  %19 = load i64, i64* @VPU_EXT_P_SIZE, align 8
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i64 [ %17, %16 ], [ %19, %18 ]
  store i64 %21, i64* %7, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @VPU_DMEM_EXT0_ADDR, align 4
  br label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @VPU_PMEM_EXT0_ADDR, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load i32, i32* @VPU_DMEM_EXT1_ADDR, align 4
  br label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @VPU_PMEM_EXT1_ADDR, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %9, align 4
  %38 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %39 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 1073741824, i32 0
  store i32 %43, i32* %10, align 4
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %47 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call i32 @dma_alloc_coherent(%struct.device* %44, i64 %45, i32* %52, i32 %53)
  %55 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %56 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i32 %54, i32* %61, align 4
  %62 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %63 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %36
  %72 = load %struct.device*, %struct.device** %6, align 8
  %73 = call i32 @dev_err(%struct.device* %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %117

76:                                               ; preds = %36
  %77 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %78 = load i32, i32* %8, align 4
  %79 = call i32 @vpu_cfg_writel(%struct.mtk_vpu* %77, i32 1, i32 %78)
  %80 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %81 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %82 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, -4096
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @vpu_cfg_writel(%struct.mtk_vpu* %80, i32 %91, i32 %92)
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = load i32, i32* %5, align 4
  %96 = icmp ne i32 %95, 0
  %97 = zext i1 %96 to i64
  %98 = select i1 %96, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %99 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %100 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = load %struct.mtk_vpu*, %struct.mtk_vpu** %4, align 8
  %109 = getelementptr inbounds %struct.mtk_vpu, %struct.mtk_vpu* %108, i32 0, i32 0
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @dev_info(%struct.device* %94, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %98, i64 %107, i32 %115)
  store i32 0, i32* %3, align 4
  br label %117

117:                                              ; preds = %76, %71
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @dma_alloc_coherent(%struct.device*, i64, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @vpu_cfg_writel(%struct.mtk_vpu*, i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
