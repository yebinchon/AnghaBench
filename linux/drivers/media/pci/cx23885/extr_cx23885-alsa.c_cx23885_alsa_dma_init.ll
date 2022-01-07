; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_cx23885_alsa_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_cx23885_alsa_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_audio_dev = type { %struct.cx23885_audio_buffer* }
%struct.cx23885_audio_buffer = type { i32, i32*, i32* }
%struct.page = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"vmalloc_32(%d pages) failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"vmalloc is at addr %p, size=%d\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_audio_dev*, i32)* @cx23885_alsa_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx23885_alsa_dma_init(%struct.cx23885_audio_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx23885_audio_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx23885_audio_buffer*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i32, align 4
  store %struct.cx23885_audio_dev* %0, %struct.cx23885_audio_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %4, align 8
  %10 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %9, i32 0, i32 0
  %11 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %10, align 8
  store %struct.cx23885_audio_buffer* %11, %struct.cx23885_audio_buffer** %6, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PAGE_SHIFT, align 4
  %14 = shl i32 %12, %13
  %15 = call i32* @vmalloc_32(i32 %14)
  %16 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %17 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %16, i32 0, i32 1
  store i32* %15, i32** %17, align 8
  %18 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %19 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* null, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %115

27:                                               ; preds = %2
  %28 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %29 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = ptrtoint i32* %30 to i32
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @PAGE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = call i32 (i32, i8*, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34)
  %36 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %37 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PAGE_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = call i32 @memset(i32* %38, i32 0, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %45 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %47 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @array_size(i32 4, i32 %48)
  %50 = call i32* @vzalloc(i32 %49)
  %51 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %52 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %51, i32 0, i32 2
  store i32* %50, i32** %52, align 8
  %53 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* null, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %27
  br label %106

58:                                               ; preds = %27
  %59 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %60 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %63 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @sg_init_table(i32* %61, i32 %64)
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %95, %58
  %67 = load i32, i32* %8, align 4
  %68 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %98

72:                                               ; preds = %66
  %73 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %74 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = call %struct.page* @vmalloc_to_page(i32* %80)
  store %struct.page* %81, %struct.page** %7, align 8
  %82 = load %struct.page*, %struct.page** %7, align 8
  %83 = icmp eq %struct.page* null, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %72
  br label %99

85:                                               ; preds = %72
  %86 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %87 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load %struct.page*, %struct.page** %7, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = call i32 @sg_set_page(i32* %91, %struct.page* %92, i32 %93, i32 0)
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %66

98:                                               ; preds = %66
  store i32 0, i32* %3, align 4
  br label %115

99:                                               ; preds = %84
  %100 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %101 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @vfree(i32* %102)
  %104 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %105 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %104, i32 0, i32 2
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %99, %57
  %107 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %108 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @vfree(i32* %109)
  %111 = load %struct.cx23885_audio_buffer*, %struct.cx23885_audio_buffer** %6, align 8
  %112 = getelementptr inbounds %struct.cx23885_audio_buffer, %struct.cx23885_audio_buffer* %111, i32 0, i32 1
  store i32* null, i32** %112, align 8
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %106, %98, %22
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32* @vmalloc_32(i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, ...) #1

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
