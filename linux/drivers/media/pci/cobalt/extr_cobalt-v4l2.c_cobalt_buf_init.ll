; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_buf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_buf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.cobalt_stream* }
%struct.cobalt_stream = type { i32, i32, i32, i32, i32, i64, %struct.sg_dma_desc_info*, %struct.cobalt* }
%struct.sg_dma_desc_info = type { i32*, i32* }
%struct.cobalt = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sg_table = type { i32, i32 }

@COBALT_MAX_WIDTH = common dso_local global i32 0, align 4
@COBALT_MAX_BPP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@COBALT_MAX_HEIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"data will not fit into plane (%lu < %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @cobalt_buf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_buf_init(%struct.vb2_buffer* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vb2_buffer*, align 8
  %4 = alloca %struct.cobalt_stream*, align 8
  %5 = alloca %struct.cobalt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sg_dma_desc_info*, align 8
  %10 = alloca %struct.sg_table*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %3, align 8
  %13 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %14 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.cobalt_stream*, %struct.cobalt_stream** %16, align 8
  store %struct.cobalt_stream* %17, %struct.cobalt_stream** %4, align 8
  %18 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %19 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %18, i32 0, i32 7
  %20 = load %struct.cobalt*, %struct.cobalt** %19, align 8
  store %struct.cobalt* %20, %struct.cobalt** %5, align 8
  %21 = load i32, i32* @COBALT_MAX_WIDTH, align 4
  %22 = load i32, i32* @COBALT_MAX_BPP, align 4
  %23 = mul nsw i32 %21, %22
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sdiv i32 %23, %24
  %26 = add nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* @COBALT_MAX_HEIGHT, align 8
  %29 = load i64, i64* %6, align 8
  %30 = mul i64 %28, %29
  %31 = mul i64 %30, 32
  store i64 %31, i64* %7, align 8
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = sdiv i32 7680, %32
  %34 = add nsw i32 %33, 1
  %35 = mul nsw i32 %34, 32
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %38 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %37, i32 0, i32 6
  %39 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %38, align 8
  %40 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %41 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.sg_dma_desc_info, %struct.sg_dma_desc_info* %39, i64 %42
  store %struct.sg_dma_desc_info* %43, %struct.sg_dma_desc_info** %9, align 8
  %44 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %45 = call %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer* %44, i32 0)
  store %struct.sg_table* %45, %struct.sg_table** %10, align 8
  %46 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %47 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %50 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul i32 %48, %51
  store i32 %52, i32* %11, align 4
  %53 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %54 = call i32 @vb2_plane_size(%struct.vb2_buffer* %53, i32 0)
  %55 = load i32, i32* %11, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %1
  %58 = load %struct.vb2_buffer*, %struct.vb2_buffer** %3, align 8
  %59 = call i32 @vb2_plane_size(%struct.vb2_buffer* %58, i32 0)
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @cobalt_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %130

64:                                               ; preds = %1
  %65 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %9, align 8
  %66 = getelementptr inbounds %struct.sg_dma_desc_info, %struct.sg_dma_desc_info* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp eq i32* %67, null
  br i1 %68, label %69, label %96

69:                                               ; preds = %64
  %70 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %71 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %9, align 8
  %75 = getelementptr inbounds %struct.sg_dma_desc_info, %struct.sg_dma_desc_info* %74, i32 0, i32 1
  store i32* %73, i32** %75, align 8
  %76 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %9, align 8
  %77 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %78 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i64, i64* %8, align 8
  br label %85

83:                                               ; preds = %69
  %84 = load i64, i64* %7, align 8
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i64 [ %82, %81 ], [ %84, %83 ]
  %87 = call i32 @descriptor_list_allocate(%struct.sg_dma_desc_info* %76, i64 %86)
  %88 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %9, align 8
  %89 = getelementptr inbounds %struct.sg_dma_desc_info, %struct.sg_dma_desc_info* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = icmp eq i32* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %130

95:                                               ; preds = %85
  br label %96

96:                                               ; preds = %95, %64
  %97 = load %struct.cobalt*, %struct.cobalt** %5, align 8
  %98 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %99 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %102 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = load %struct.sg_table*, %struct.sg_table** %10, align 8
  %108 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %112 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %115 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %113, %116
  %118 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %119 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %9, align 8
  %122 = call i32 @descriptor_list_create(%struct.cobalt* %97, i32 %100, i32 %106, i32 %109, i32 %110, i32 %117, i32 %120, %struct.sg_dma_desc_info* %121)
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %96
  %126 = load %struct.sg_dma_desc_info*, %struct.sg_dma_desc_info** %9, align 8
  %127 = call i32 @descriptor_list_free(%struct.sg_dma_desc_info* %126)
  br label %128

128:                                              ; preds = %125, %96
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %128, %92, %57
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @cobalt_info(i8*, i32, i32) #1

declare dso_local i32 @descriptor_list_allocate(%struct.sg_dma_desc_info*, i64) #1

declare dso_local i32 @descriptor_list_create(%struct.cobalt*, i32, i32, i32, i32, i32, i32, %struct.sg_dma_desc_info*) #1

declare dso_local i32 @descriptor_list_free(%struct.sg_dma_desc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
