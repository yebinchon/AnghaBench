; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_update_dedicated_ivtes_psl8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_update_dedicated_ivtes_psl8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_context = type { %struct.TYPE_2__, %struct.cxl_afu* }
%struct.TYPE_2__ = type { i64*, i64* }
%struct.cxl_afu = type { i32 }

@CXL_PSL_IVTE_Offset_An = common dso_local global i32 0, align 4
@CXL_PSL_IVTE_Limit_An = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxl_update_dedicated_ivtes_psl8(%struct.cxl_context* %0) #0 {
  %2 = alloca %struct.cxl_context*, align 8
  %3 = alloca %struct.cxl_afu*, align 8
  store %struct.cxl_context* %0, %struct.cxl_context** %2, align 8
  %4 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %5 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %4, i32 0, i32 1
  %6 = load %struct.cxl_afu*, %struct.cxl_afu** %5, align 8
  store %struct.cxl_afu* %6, %struct.cxl_afu** %3, align 8
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %8 = load i32, i32* @CXL_PSL_IVTE_Offset_An, align 4
  %9 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %10 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 65535
  %17 = shl i32 %16, 48
  %18 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %19 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 65535
  %26 = shl i32 %25, 32
  %27 = or i32 %17, %26
  %28 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %29 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 2
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = and i32 %34, 65535
  %36 = shl i32 %35, 16
  %37 = or i32 %27, %36
  %38 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %39 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 3
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = and i32 %44, 65535
  %46 = or i32 %37, %45
  %47 = call i32 @cxl_p1n_write(%struct.cxl_afu* %7, i32 %8, i32 %46)
  %48 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %49 = load i32, i32* @CXL_PSL_IVTE_Limit_An, align 4
  %50 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %51 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  %55 = load i64, i64* %54, align 8
  %56 = trunc i64 %55 to i32
  %57 = and i32 %56, 65535
  %58 = shl i32 %57, 48
  %59 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %60 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = trunc i64 %64 to i32
  %66 = and i32 %65, 65535
  %67 = shl i32 %66, 32
  %68 = or i32 %58, %67
  %69 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %70 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = and i32 %75, 65535
  %77 = shl i32 %76, 16
  %78 = or i32 %68, %77
  %79 = load %struct.cxl_context*, %struct.cxl_context** %2, align 8
  %80 = getelementptr inbounds %struct.cxl_context, %struct.cxl_context* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64*, i64** %81, align 8
  %83 = getelementptr inbounds i64, i64* %82, i64 3
  %84 = load i64, i64* %83, align 8
  %85 = trunc i64 %84 to i32
  %86 = and i32 %85, 65535
  %87 = or i32 %78, %86
  %88 = call i32 @cxl_p1n_write(%struct.cxl_afu* %48, i32 %49, i32 %87)
  ret void
}

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
