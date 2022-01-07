; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_buffer_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_pxa_camera.c_pxa_buffer_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa_camera_dev = type { i32 }
%struct.pxa_buffer = type { i64*, i32, i32, i32*, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vb2_buffer }
%struct.vb2_buffer = type { i32 }
%struct.sg_table = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"sg_split failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxa_camera_dev*, %struct.pxa_buffer*)* @pxa_buffer_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa_buffer_init(%struct.pxa_camera_dev* %0, %struct.pxa_buffer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxa_camera_dev*, align 8
  %5 = alloca %struct.pxa_buffer*, align 8
  %6 = alloca %struct.vb2_buffer*, align 8
  %7 = alloca %struct.sg_table*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.pxa_camera_dev* %0, %struct.pxa_camera_dev** %4, align 8
  store %struct.pxa_buffer* %1, %struct.pxa_buffer** %5, align 8
  %12 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %13 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.vb2_buffer* %14, %struct.vb2_buffer** %6, align 8
  %15 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %16 = call %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer* %15, i32 0)
  store %struct.sg_table* %16, %struct.sg_table** %7, align 8
  %17 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pxa_camera_dev, %struct.pxa_camera_dev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %20 = load %struct.vb2_buffer*, %struct.vb2_buffer** %6, align 8
  %21 = call i64 @vb2_plane_size(%struct.vb2_buffer* %20, i32 0)
  store i64 %21, i64* %11, align 8
  %22 = load i32, i32* %8, align 4
  switch i32 %22, label %48 [
    i32 1, label %23
    i32 3, label %29
  ]

23:                                               ; preds = %2
  %24 = load i64, i64* %11, align 8
  %25 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %24, i64* %28, align 8
  br label %51

29:                                               ; preds = %2
  %30 = load i64, i64* %11, align 8
  %31 = udiv i64 %30, 2
  %32 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %33 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 0
  store i64 %31, i64* %35, align 8
  %36 = load i64, i64* %11, align 8
  %37 = udiv i64 %36, 4
  %38 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %39 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  store i64 %37, i64* %41, align 8
  %42 = load i64, i64* %11, align 8
  %43 = udiv i64 %42, 4
  %44 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %45 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 2
  store i64 %43, i64* %47, align 8
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %120

51:                                               ; preds = %29, %23
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %54 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %56 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sg_table*, %struct.sg_table** %7, align 8
  %59 = getelementptr inbounds %struct.sg_table, %struct.sg_table* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %63 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %66 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %65, i32 0, i32 4
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %69 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @sg_split(i32 %57, i32 %60, i32 0, i32 %61, i64* %64, i32* %67, i32* %70, i32 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %51
  %76 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %77 = call i32 @pcdev_to_dev(%struct.pxa_camera_dev* %76)
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @dev_err(i32 %77, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %10, align 4
  store i32 %80, i32* %3, align 4
  br label %120

81:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %82

82:                                               ; preds = %112, %81
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %115

86:                                               ; preds = %82
  %87 = load %struct.pxa_camera_dev*, %struct.pxa_camera_dev** %4, align 8
  %88 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %91 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %90, i32 0, i32 4
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %98 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @pxa_init_dma_channel(%struct.pxa_camera_dev* %87, %struct.pxa_buffer* %88, i32 %89, i32 %96, i32 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %86
  %108 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %109 = call i32 @pxa_buffer_cleanup(%struct.pxa_buffer* %108)
  %110 = load i32, i32* %10, align 4
  store i32 %110, i32* %3, align 4
  br label %120

111:                                              ; preds = %86
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %9, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %9, align 4
  br label %82

115:                                              ; preds = %82
  %116 = load %struct.pxa_buffer*, %struct.pxa_buffer** %5, align 8
  %117 = getelementptr inbounds %struct.pxa_buffer, %struct.pxa_buffer* %116, i32 0, i32 2
  %118 = call i32 @INIT_LIST_HEAD(i32* %117)
  %119 = load i32, i32* %10, align 4
  store i32 %119, i32* %3, align 4
  br label %120

120:                                              ; preds = %115, %107, %75, %48
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.sg_table* @vb2_dma_sg_plane_desc(%struct.vb2_buffer*, i32) #1

declare dso_local i64 @vb2_plane_size(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @sg_split(i32, i32, i32, i32, i64*, i32*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pcdev_to_dev(%struct.pxa_camera_dev*) #1

declare dso_local i32 @pxa_init_dma_channel(%struct.pxa_camera_dev*, %struct.pxa_buffer*, i32, i32, i32) #1

declare dso_local i32 @pxa_buffer_cleanup(%struct.pxa_buffer*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
