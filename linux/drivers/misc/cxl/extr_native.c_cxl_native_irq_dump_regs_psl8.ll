; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_irq_dump_regs_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_irq_dump_regs_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@CXL_PSL_FIR1 = common dso_local global i32 0, align 4
@CXL_PSL_FIR2 = common dso_local global i32 0, align 4
@CXL_PSL_FIR_SLICE_An = common dso_local global i32 0, align 4
@CXL_AFU_DEBUG_An = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"PSL_FIR1: 0x%016llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"PSL_FIR2: 0x%016llx\0A\00", align 1
@CXL_PSL_SERR_An = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"PSL_FIR_SLICE_An: 0x%016llx\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"CXL_PSL_AFU_DEBUG_An: 0x%016llx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_native_irq_dump_regs_psl8(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  %8 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %9 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %8, i32 0, i32 0
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = load i32, i32* @CXL_PSL_FIR1, align 4
  %14 = call i32 @cxl_p1_read(%struct.TYPE_9__* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %16 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load i32, i32* @CXL_PSL_FIR2, align 4
  %21 = call i32 @cxl_p1_read(%struct.TYPE_9__* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %23 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %22, i32 0, i32 0
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %23, align 8
  %25 = load i32, i32* @CXL_PSL_FIR_SLICE_An, align 4
  %26 = call i32 @cxl_p1n_read(%struct.TYPE_8__* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %28 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* @CXL_AFU_DEBUG_An, align 4
  %31 = call i32 @cxl_p1n_read(%struct.TYPE_8__* %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %33 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %32, i32 0, i32 0
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %3, align 4
  %37 = call i32 @dev_crit(i32* %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %39 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dev_crit(i32* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %45 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %1
  %57 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %58 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %61 = call i32 @cxl_p1n_read(%struct.TYPE_8__* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %63 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @cxl_afu_decode_psl_serr(%struct.TYPE_8__* %64, i32 %65)
  br label %67

67:                                               ; preds = %56, %1
  %68 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %69 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 0
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @dev_crit(i32* %71, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %75 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 0
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @dev_crit(i32* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  ret void
}

declare dso_local i32 @cxl_p1_read(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @cxl_p1n_read(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @dev_crit(i32*, i8*, i32) #1

declare dso_local i32 @cxl_afu_decode_psl_serr(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
