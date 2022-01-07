; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_alloc_queue_page_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_main.c_gve_alloc_queue_page_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i64, i64, %struct.TYPE_2__*, i32, %struct.gve_queue_page_list* }
%struct.TYPE_2__ = type { i32 }
%struct.gve_queue_page_list = type { i64, i32, i32*, i32* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Reached max number of registered pages %llu > %llu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gve_priv*, i64, i32)* @gve_alloc_queue_page_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gve_alloc_queue_page_list(%struct.gve_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gve_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.gve_queue_page_list*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gve_priv* %0, %struct.gve_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %12 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %11, i32 0, i32 4
  %13 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %13, i64 %14
  store %struct.gve_queue_page_list* %15, %struct.gve_queue_page_list** %8, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %19 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %17, %20
  %22 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %23 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %3
  %27 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %28 = load i32, i32* @drv, align 4
  %29 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %30 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %35 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %39 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @netif_err(%struct.gve_priv* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %126

44:                                               ; preds = %3
  %45 = load i64, i64* %6, align 8
  %46 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %47 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %50 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call i8* @kvzalloc(i32 %54, i32 %55)
  %57 = bitcast i8* %56 to i32*
  %58 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %59 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %58, i32 0, i32 3
  store i32* %57, i32** %59, align 8
  %60 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %61 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %44
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %126

67:                                               ; preds = %44
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 %69, 4
  %71 = trunc i64 %70 to i32
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kvzalloc(i32 %71, i32 %72)
  %74 = bitcast i8* %73 to i32*
  %75 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %76 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %75, i32 0, i32 2
  store i32* %74, i32** %76, align 8
  %77 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %78 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %126

84:                                               ; preds = %67
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %116, %84
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* %7, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %119

89:                                               ; preds = %85
  %90 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %91 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %95 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load %struct.gve_queue_page_list*, %struct.gve_queue_page_list** %8, align 8
  %101 = getelementptr inbounds %struct.gve_queue_page_list, %struct.gve_queue_page_list* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @gve_qpl_dma_dir(%struct.gve_priv* %106, i64 %107)
  %109 = call i32 @gve_alloc_page(i32* %93, i32* %99, i32* %105, i32 %108)
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %89
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %126

115:                                              ; preds = %89
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %85

119:                                              ; preds = %85
  %120 = load i32, i32* %7, align 4
  %121 = sext i32 %120 to i64
  %122 = load %struct.gve_priv*, %struct.gve_priv** %5, align 8
  %123 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = add nsw i64 %124, %121
  store i64 %125, i64* %123, align 8
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %119, %112, %81, %64, %26
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @netif_err(%struct.gve_priv*, i32, i32, i8*, i64, i64) #1

declare dso_local i8* @kvzalloc(i32, i32) #1

declare dso_local i32 @gve_alloc_page(i32*, i32*, i32*, i32) #1

declare dso_local i32 @gve_qpl_dma_dir(%struct.gve_priv*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
