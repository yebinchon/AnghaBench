; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_saa7134_alsa_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-alsa.c_saa7134_alsa_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { %struct.saa7134_dmasound }
%struct.saa7134_dmasound = type { i32, i32*, i32* }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"vmalloc_32(%d pages) failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"vmalloc is at addr %p, size=%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7134_dev*, i32)* @saa7134_alsa_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_alsa_dma_init(%struct.saa7134_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7134_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7134_dmasound*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 0
  store %struct.saa7134_dmasound* %10, %struct.saa7134_dmasound** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @PAGE_SHIFT, align 4
  %13 = shl i32 %11, %12
  %14 = call i32* @vmalloc_32(i32 %13)
  %15 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %16 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %15, i32 0, i32 1
  store i32* %14, i32** %16, align 8
  %17 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %18 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp eq i32* null, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %114

26:                                               ; preds = %2
  %27 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %28 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = ptrtoint i32* %29 to i32
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %36 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @PAGE_SHIFT, align 4
  %40 = shl i32 %38, %39
  %41 = call i32 @memset(i32* %37, i32 0, i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %44 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %46 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @array_size(i32 4, i32 %47)
  %49 = call i32* @vzalloc(i32 %48)
  %50 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %51 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %53 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* null, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %26
  br label %105

57:                                               ; preds = %26
  %58 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %59 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %62 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @sg_init_table(i32* %60, i32 %63)
  store i32 0, i32* %8, align 4
  br label %65

65:                                               ; preds = %94, %57
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %68 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %73 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* @PAGE_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  %80 = call %struct.page* @vmalloc_to_page(i32* %79)
  store %struct.page* %80, %struct.page** %7, align 8
  %81 = load %struct.page*, %struct.page** %7, align 8
  %82 = icmp eq %struct.page* null, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %71
  br label %98

84:                                               ; preds = %71
  %85 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %86 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load %struct.page*, %struct.page** %7, align 8
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = call i32 @sg_set_page(i32* %90, %struct.page* %91, i32 %92, i32 0)
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %65

97:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %114

98:                                               ; preds = %83
  %99 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %100 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @vfree(i32* %101)
  %103 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %104 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %103, i32 0, i32 2
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %98, %56
  %106 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %107 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @vfree(i32* %108)
  %110 = load %struct.saa7134_dmasound*, %struct.saa7134_dmasound** %6, align 8
  %111 = getelementptr inbounds %struct.saa7134_dmasound, %struct.saa7134_dmasound* %110, i32 0, i32 1
  store i32* null, i32** %111, align 8
  %112 = load i32, i32* @ENOMEM, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %105, %97, %21
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local i32* @vmalloc_32(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32* @vzalloc(i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @sg_init_table(i32*, i32) #1

declare dso_local %struct.page* @vmalloc_to_page(i32*) #1

declare dso_local i32 @sg_set_page(i32*, %struct.page*, i32, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
