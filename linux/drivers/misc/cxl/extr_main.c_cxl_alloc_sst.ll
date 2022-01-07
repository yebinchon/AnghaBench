; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_main.c_cxl_alloc_sst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_main.c_cxl_alloc_sst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.cxl_context = type { i32, i32, %struct.cxl_sste*, i64, i64 }
%struct.cxl_sste = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cxl_alloc_sst: Unable to allocate segment table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"SSTP allocated at 0x%p\0A\00", align 1
@mmu_kernel_ssize = common dso_local global i64 0, align 8
@CXL_SSTP0_An_B_SHIFT = common dso_local global i32 0, align 4
@SLB_VSID_KERNEL = common dso_local global i32 0, align 4
@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@mmu_linear_psize = common dso_local global i64 0, align 8
@CXL_SSTP0_An_SegTableSize_SHIFT = common dso_local global i32 0, align 4
@CXL_SSTP0_An_SegTableSize_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Impossible segment table size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MMU_SEGSIZE_256M = common dso_local global i64 0, align 8
@CXL_SSTP1_An_V = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [94 x i8] c"Looked up %#llx: slbfee. %#llx (ssize: %x, vsid: %#lx), copied to SSTP0: %#llx, SSTP1: %#llx\0A\00", align 1
@ESID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_alloc_sst(%struct.cxl_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_context*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i64, i64* @PAGE_SIZE, align 8
  %10 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %11 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %10, i32 0, i32 3
  store i64 %9, i64* %11, align 8
  %12 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %13 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %12, i32 0, i32 4
  store i64 0, i64* %13, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i64 @get_zeroed_page(i32 %14)
  %16 = inttoptr i64 %15 to %struct.cxl_sste*
  %17 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %18 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %17, i32 0, i32 2
  store %struct.cxl_sste* %16, %struct.cxl_sste** %18, align 8
  %19 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %20 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %19, i32 0, i32 2
  %21 = load %struct.cxl_sste*, %struct.cxl_sste** %20, align 8
  %22 = icmp ne %struct.cxl_sste* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %1
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %133

27:                                               ; preds = %1
  %28 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %29 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %28, i32 0, i32 2
  %30 = load %struct.cxl_sste*, %struct.cxl_sste** %29, align 8
  %31 = ptrtoint %struct.cxl_sste* %30 to i32
  %32 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %34 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %33, i32 0, i32 2
  %35 = load %struct.cxl_sste*, %struct.cxl_sste** %34, align 8
  %36 = ptrtoint %struct.cxl_sste* %35 to i32
  %37 = load i64, i64* @mmu_kernel_ssize, align 8
  %38 = call i32 @get_kernel_vsid(i32 %36, i64 %37)
  %39 = shl i32 %38, 12
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* @mmu_kernel_ssize, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @CXL_SSTP0_An_B_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %7, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* @SLB_VSID_KERNEL, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %49 = load i64, i64* @mmu_linear_psize, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %47, %52
  %54 = shl i32 %53, 50
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %7, align 4
  %57 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %58 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = trunc i64 %59 to i32
  %61 = ashr i32 %60, 8
  %62 = sub nsw i32 %61, 1
  %63 = load i32, i32* @CXL_SSTP0_An_SegTableSize_SHIFT, align 4
  %64 = shl i32 %62, %63
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @CXL_SSTP0_An_SegTableSize_MASK, align 4
  %67 = xor i32 %66, -1
  %68 = and i32 %65, %67
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %27
  %72 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %133

75:                                               ; preds = %27
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i64, i64* @mmu_kernel_ssize, align 8
  %80 = load i64, i64* @MMU_SEGSIZE_256M, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 268435200, i32* %5, align 4
  br label %84

83:                                               ; preds = %75
  store i32 -256, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %82
  %85 = load i64, i64* %4, align 8
  %86 = lshr i64 %85, 36
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = or i64 %88, %86
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %7, align 4
  %91 = load i64, i64* %4, align 8
  %92 = shl i64 %91, 28
  %93 = load i32, i32* %5, align 4
  %94 = xor i32 %93, -1
  %95 = sext i32 %94 to i64
  %96 = and i64 %92, %95
  %97 = load i32, i32* %8, align 4
  %98 = sext i32 %97 to i64
  %99 = or i64 %98, %96
  %100 = trunc i64 %99 to i32
  store i32 %100, i32* %8, align 4
  %101 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %102 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %101, i32 0, i32 2
  %103 = load %struct.cxl_sste*, %struct.cxl_sste** %102, align 8
  %104 = ptrtoint %struct.cxl_sste* %103 to i32
  %105 = load i32, i32* %5, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* %8, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %8, align 4
  %109 = load i32, i32* @CXL_SSTP1_An_V, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  %112 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %113 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %112, i32 0, i32 2
  %114 = load %struct.cxl_sste*, %struct.cxl_sste** %113, align 8
  %115 = ptrtoint %struct.cxl_sste* %114 to i32
  %116 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %117 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %116, i32 0, i32 2
  %118 = load %struct.cxl_sste*, %struct.cxl_sste** %117, align 8
  %119 = ptrtoint %struct.cxl_sste* %118 to i32
  %120 = load i32, i32* @ESID_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i64, i64* @mmu_kernel_ssize, align 8
  %123 = load i64, i64* %4, align 8
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %8, align 4
  %126 = call i32 (i8*, i32, ...) @pr_devel(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0), i32 %115, i32 %121, i64 %122, i64 %123, i32 %124, i32 %125)
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %129 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load i32, i32* %8, align 4
  %131 = load %struct.cxl_context*, %struct.cxl_context** %3, align 8
  %132 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  store i32 0, i32* %2, align 4
  br label %133

133:                                              ; preds = %84, %71, %23
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_devel(i8*, i32, ...) #1

declare dso_local i32 @get_kernel_vsid(i32, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
