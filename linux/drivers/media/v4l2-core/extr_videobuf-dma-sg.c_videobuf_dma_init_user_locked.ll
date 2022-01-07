; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_dma_init_user_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-dma-sg.c_videobuf_dma_init_user_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_dmabuf = type { i32, i64, i64, i64, i32* }

@FOLL_FORCE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@WRITE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FOLL_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"init user [0x%lx+0x%lx => %d pages]\0A\00", align 1
@FOLL_LONGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"get_user_pages: err=%d [%d]\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.videobuf_dmabuf*, i32, i64, i64)* @videobuf_dma_init_user_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @videobuf_dma_init_user_locked(%struct.videobuf_dmabuf* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.videobuf_dmabuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.videobuf_dmabuf* %0, %struct.videobuf_dmabuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32, i32* @FOLL_FORCE, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %18 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %20 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %26 [
    i32 129, label %22
    i32 128, label %24
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* @READ, align 4
  store i32 %23, i32* %13, align 4
  br label %28

24:                                               ; preds = %4
  %25 = load i32, i32* @WRITE, align 4
  store i32 %25, i32* %13, align 4
  br label %28

26:                                               ; preds = %4
  %27 = call i32 (...) @BUG()
  br label %28

28:                                               ; preds = %26, %24, %22
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @PAGE_MASK, align 8
  %31 = and i64 %29, %30
  %32 = load i64, i64* @PAGE_SHIFT, align 8
  %33 = lshr i64 %31, %32
  store i64 %33, i64* %10, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = add i64 %34, %35
  %37 = sub i64 %36, 1
  %38 = load i64, i64* @PAGE_MASK, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* @PAGE_SHIFT, align 8
  %41 = lshr i64 %39, %40
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* @PAGE_MASK, align 8
  %44 = xor i64 %43, -1
  %45 = and i64 %42, %44
  %46 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %47 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %50 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %49, i32 0, i32 2
  store i64 %48, i64* %50, align 8
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %51, %52
  %54 = add i64 %53, 1
  %55 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %56 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %55, i32 0, i32 3
  store i64 %54, i64* %56, align 8
  %57 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %58 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i32* @kmalloc_array(i64 %59, i32 8, i32 %60)
  %62 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %63 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %62, i32 0, i32 4
  store i32* %61, i32** %63, align 8
  %64 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %65 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* null, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %28
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %5, align 4
  br label %134

71:                                               ; preds = %28
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @READ, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load i32, i32* @FOLL_WRITE, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  br label %79

79:                                               ; preds = %75, %71
  %80 = load i64, i64* %8, align 8
  %81 = trunc i64 %80 to i32
  %82 = load i64, i64* %9, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %85 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %83, i64 %86)
  %88 = load i64, i64* %8, align 8
  %89 = load i64, i64* @PAGE_MASK, align 8
  %90 = and i64 %88, %89
  %91 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %92 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @FOLL_LONGTERM, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %98 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %97, i32 0, i32 4
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @get_user_pages(i64 %90, i64 %93, i32 %96, i32* %99, i32* null)
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = sext i32 %101 to i64
  %103 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %104 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %133

107:                                              ; preds = %79
  %108 = load i32, i32* %12, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = load i32, i32* %12, align 4
  br label %113

112:                                              ; preds = %107
  br label %113

113:                                              ; preds = %112, %110
  %114 = phi i32 [ %111, %110 ], [ 0, %112 ]
  %115 = sext i32 %114 to i64
  %116 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %117 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %116, i32 0, i32 3
  store i64 %115, i64* %117, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.videobuf_dmabuf*, %struct.videobuf_dmabuf** %6, align 8
  %120 = getelementptr inbounds %struct.videobuf_dmabuf, %struct.videobuf_dmabuf* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = call i32 (i32, i8*, i32, i32, ...) @dprintk(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %118, i32 %122)
  %124 = load i32, i32* %12, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %113
  %127 = load i32, i32* %12, align 4
  br label %131

128:                                              ; preds = %113
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  br label %131

131:                                              ; preds = %128, %126
  %132 = phi i32 [ %127, %126 ], [ %130, %128 ]
  store i32 %132, i32* %5, align 4
  br label %134

133:                                              ; preds = %79
  store i32 0, i32* %5, align 4
  br label %134

134:                                              ; preds = %133, %131, %68
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @BUG(...) #1

declare dso_local i32* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @dprintk(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @get_user_pages(i64, i64, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
