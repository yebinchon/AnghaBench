; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_context.c_cxl_context_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_context.c_cxl_context_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.cxl_afu*, i32*, i32, i32, %struct.TYPE_3__, i32, i32*, i32, i32, i32, i32, i64, i32*, i32, i32* }
%struct.TYPE_3__ = type { i64* }
%struct.cxl_afu = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@cxl_handle_fault = common dso_local global i32 0, align 4
@CXL_IRQ_RANGES = common dso_local global i32 0, align 4
@OPENED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_NOWAIT = common dso_local global i32 0, align 4
@CPU_FTR_HVMODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_context_init(%struct.cxl_context* %0, %struct.cxl_afu* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxl_context*, align 8
  %6 = alloca %struct.cxl_afu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cxl_context* %0, %struct.cxl_context** %5, align 8
  store %struct.cxl_afu* %1, %struct.cxl_afu** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %10 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %11 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %10, i32 0, i32 8
  store %struct.cxl_afu* %9, %struct.cxl_afu** %11, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %14 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  %15 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %16 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %15, i32 0, i32 22
  store i32* null, i32** %16, align 8
  %17 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %18 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %17, i32 0, i32 21
  %19 = call i32 @mutex_init(i32* %18)
  %20 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %21 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %20, i32 0, i32 20
  store i32* null, i32** %21, align 8
  %22 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %23 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %22, i32 0, i32 19
  store i64 0, i64* %23, align 8
  %24 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %25 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %24, i32 0, i32 1
  store i32 0, i32* %25, align 4
  %26 = call i64 (...) @cxl_is_power8()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %3
  %29 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %30 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %29, i32 0, i32 18
  %31 = call i32 @spin_lock_init(i32* %30)
  %32 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %33 = call i32 @cxl_alloc_sst(%struct.cxl_context* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %141

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %41 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %40, i32 0, i32 17
  %42 = load i32, i32* @cxl_handle_fault, align 4
  %43 = call i32 @INIT_WORK(i32* %41, i32 %42)
  %44 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %45 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %44, i32 0, i32 16
  %46 = call i32 @init_waitqueue_head(i32* %45)
  %47 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %48 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %47, i32 0, i32 15
  %49 = call i32 @spin_lock_init(i32* %48)
  %50 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %51 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %50, i32 0, i32 14
  store i32* null, i32** %51, align 8
  %52 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %53 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %52, i32 0, i32 2
  store i32 0, i32* %53, align 8
  %54 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %55 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %54, i32 0, i32 3
  store i32 0, i32* %55, align 4
  %56 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %57 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %56, i32 0, i32 4
  store i32 0, i32* %57, align 8
  %58 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %59 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %58, i32 0, i32 13
  %60 = call i32 @INIT_LIST_HEAD(i32* %59)
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %73, %39
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @CXL_IRQ_RANGES, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %76

65:                                               ; preds = %61
  %66 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %67 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %66, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %65
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %61

76:                                               ; preds = %61
  %77 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %78 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %77, i32 0, i32 11
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load i32, i32* @OPENED, align 4
  %81 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %82 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %81, i32 0, i32 10
  store i32 %80, i32* %82, align 8
  %83 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %84 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %83, i32 0, i32 1
  %85 = call i32 @mutex_lock(i32* %84)
  %86 = load i32, i32* @GFP_KERNEL, align 4
  %87 = call i32 @idr_preload(i32 %86)
  %88 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %89 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %88, i32 0, i32 8
  %90 = load %struct.cxl_afu*, %struct.cxl_afu** %89, align 8
  %91 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %90, i32 0, i32 3
  %92 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %93 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %94 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %93, i32 0, i32 8
  %95 = load %struct.cxl_afu*, %struct.cxl_afu** %94, align 8
  %96 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @GFP_NOWAIT, align 4
  %99 = call i32 @idr_alloc(i32* %91, %struct.cxl_context* %92, i32 0, i32 %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = call i32 (...) @idr_preload_end()
  %101 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %102 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %8, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %76
  %107 = load i32, i32* %8, align 4
  store i32 %107, i32* %4, align 4
  br label %141

108:                                              ; preds = %76
  %109 = load i32, i32* %8, align 4
  %110 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %111 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @CPU_FTR_HVMODE, align 4
  %113 = call i64 @cpu_has_feature(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %133

115:                                              ; preds = %108
  %116 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %117 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %116, i32 0, i32 8
  %118 = load %struct.cxl_afu*, %struct.cxl_afu** %117, align 8
  %119 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %118, i32 0, i32 0
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %8, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %127 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %126, i32 0, i32 9
  store i32* %125, i32** %127, align 8
  %128 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %129 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %132 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %131, i32 0, i32 6
  store i32 %130, i32* %132, align 8
  br label %136

133:                                              ; preds = %108
  %134 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %135 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %134, i32 0, i32 6
  store i32 -1, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %115
  %137 = load %struct.cxl_context*, %struct.cxl_context** %5, align 8
  %138 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %137, i32 0, i32 7
  store i32 0, i32* %138, align 4
  %139 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %140 = call i32 @cxl_afu_get(%struct.cxl_afu* %139)
  store i32 0, i32* %4, align 4
  br label %141

141:                                              ; preds = %136, %106, %36
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i64 @cxl_is_power8(...) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @cxl_alloc_sst(%struct.cxl_context*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @idr_alloc(i32*, %struct.cxl_context*, i32, i32, i32) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @cxl_afu_get(%struct.cxl_afu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
