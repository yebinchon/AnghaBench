; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_ocxl_link_remove_pe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ocxl/extr_link.c_ocxl_link_remove_pe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.ocxl_link = type { i32, %struct.spa* }
%struct.spa = type { i32, i32, %struct.ocxl_process_element* }
%struct.ocxl_process_element = type { i32, i32, i32 }
%struct.pe_data = type { i64 }

@SPA_PASID_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPA_PE_MASK = common dso_local global i32 0, align 4
@SPA_PE_VALID = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Couldn't find pe data when removing PE\0A\00", align 1
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocxl_link_remove_pe(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ocxl_link*, align 8
  %7 = alloca %struct.spa*, align 8
  %8 = alloca %struct.ocxl_process_element*, align 8
  %9 = alloca %struct.pe_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ocxl_link*
  store %struct.ocxl_link* %13, %struct.ocxl_link** %6, align 8
  %14 = load %struct.ocxl_link*, %struct.ocxl_link** %6, align 8
  %15 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %14, i32 0, i32 1
  %16 = load %struct.spa*, %struct.spa** %15, align 8
  store %struct.spa* %16, %struct.spa** %7, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SPA_PASID_MAX, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %105

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SPA_PE_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load %struct.spa*, %struct.spa** %7, align 8
  %28 = getelementptr inbounds %struct.spa, %struct.spa* %27, i32 0, i32 2
  %29 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ocxl_process_element, %struct.ocxl_process_element* %29, i64 %31
  store %struct.ocxl_process_element* %32, %struct.ocxl_process_element** %8, align 8
  %33 = load %struct.spa*, %struct.spa** %7, align 8
  %34 = getelementptr inbounds %struct.spa, %struct.spa* %33, i32 0, i32 0
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %8, align 8
  %37 = getelementptr inbounds %struct.ocxl_process_element, %struct.ocxl_process_element* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be32_to_cpu(i32 %38)
  %40 = load i32, i32* @SPA_PE_VALID, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %23
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %11, align 4
  br label %100

46:                                               ; preds = %23
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.spa*, %struct.spa** %7, align 8
  %51 = getelementptr inbounds %struct.spa, %struct.spa* %50, i32 0, i32 2
  %52 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %8, align 8
  %55 = getelementptr inbounds %struct.ocxl_process_element, %struct.ocxl_process_element* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %8, align 8
  %59 = getelementptr inbounds %struct.ocxl_process_element, %struct.ocxl_process_element* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @be32_to_cpu(i32 %60)
  %62 = call i32 @trace_ocxl_context_remove(i32 %49, %struct.ocxl_process_element* %52, i32 %53, i32 %57, i32 %61)
  %63 = load %struct.ocxl_process_element*, %struct.ocxl_process_element** %8, align 8
  %64 = call i32 @memset(%struct.ocxl_process_element* %63, i32 0, i32 12)
  %65 = call i32 (...) @mb()
  %66 = load %struct.ocxl_link*, %struct.ocxl_link** %6, align 8
  %67 = getelementptr inbounds %struct.ocxl_link, %struct.ocxl_link* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @pnv_ocxl_spa_remove_pe_from_cache(i32 %68, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @WARN_ON(i32 %71)
  %73 = load %struct.spa*, %struct.spa** %7, align 8
  %74 = getelementptr inbounds %struct.spa, %struct.spa* %73, i32 0, i32 1
  %75 = load i32, i32* %10, align 4
  %76 = call %struct.pe_data* @radix_tree_delete(i32* %74, i32 %75)
  store %struct.pe_data* %76, %struct.pe_data** %9, align 8
  %77 = load %struct.pe_data*, %struct.pe_data** %9, align 8
  %78 = icmp ne %struct.pe_data* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %46
  %80 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %99

81:                                               ; preds = %46
  %82 = load %struct.pe_data*, %struct.pe_data** %9, align 8
  %83 = getelementptr inbounds %struct.pe_data, %struct.pe_data* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.pe_data*, %struct.pe_data** %9, align 8
  %88 = getelementptr inbounds %struct.pe_data, %struct.pe_data* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @mm_context_remove_copro(i64 %89)
  %91 = load %struct.pe_data*, %struct.pe_data** %9, align 8
  %92 = getelementptr inbounds %struct.pe_data, %struct.pe_data* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @mmdrop(i64 %93)
  br label %95

95:                                               ; preds = %86, %81
  %96 = load %struct.pe_data*, %struct.pe_data** %9, align 8
  %97 = load i32, i32* @rcu, align 4
  %98 = call i32 @kfree_rcu(%struct.pe_data* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %79
  br label %100

100:                                              ; preds = %99, %43
  %101 = load %struct.spa*, %struct.spa** %7, align 8
  %102 = getelementptr inbounds %struct.spa, %struct.spa* %101, i32 0, i32 0
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %11, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %100, %20
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @trace_ocxl_context_remove(i32, %struct.ocxl_process_element*, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.ocxl_process_element*, i32, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pnv_ocxl_spa_remove_pe_from_cache(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.pe_data* @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @mm_context_remove_copro(i64) #1

declare dso_local i32 @mmdrop(i64) #1

declare dso_local i32 @kfree_rcu(%struct.pe_data*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
