; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_drm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drm.c_vsp1_drm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { %struct.vsp1_rwpf**, %struct.TYPE_14__*, %struct.TYPE_13__**, %struct.TYPE_9__**, %struct.TYPE_11__**, %struct.TYPE_16__*, i32 }
%struct.vsp1_rwpf = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, %struct.vsp1_pipeline* }
%struct.vsp1_pipeline = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_12__*, %struct.vsp1_pipeline* }
%struct.TYPE_16__ = type { %struct.vsp1_drm_pipeline*, i32 }
%struct.vsp1_drm_pipeline = type { i32*, i32, %struct.vsp1_pipeline }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vsp1_du_pipeline_frame_end = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vsp1_drm_init(%struct.vsp1_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsp1_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vsp1_drm_pipeline*, align 8
  %6 = alloca %struct.vsp1_pipeline*, align 8
  %7 = alloca %struct.vsp1_rwpf*, align 8
  store %struct.vsp1_device* %0, %struct.vsp1_device** %3, align 8
  %8 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %9 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_16__* @devm_kzalloc(i32 %10, i32 16, i32 %11)
  %13 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %14 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %13, i32 0, i32 5
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %14, align 8
  %15 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %16 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %15, i32 0, i32 5
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %18 = icmp ne %struct.TYPE_16__* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %160

22:                                               ; preds = %1
  %23 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %24 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %23, i32 0, i32 5
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = call i32 @mutex_init(i32* %26)
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %132, %22
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %31 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %30, i32 0, i32 1
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ult i32 %29, %34
  br i1 %35, label %36, label %135

36:                                               ; preds = %28
  %37 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %38 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %37, i32 0, i32 5
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %40, align 8
  %42 = load i32, i32* %4, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %41, i64 %43
  store %struct.vsp1_drm_pipeline* %44, %struct.vsp1_drm_pipeline** %5, align 8
  %45 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %46 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %45, i32 0, i32 2
  store %struct.vsp1_pipeline* %46, %struct.vsp1_pipeline** %6, align 8
  %47 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %48 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %47, i32 0, i32 1
  %49 = call i32 @init_waitqueue_head(i32* %48)
  %50 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %51 = call i32 @vsp1_pipeline_init(%struct.vsp1_pipeline* %50)
  %52 = load i32, i32* @vsp1_du_pipeline_frame_end, align 4
  %53 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %54 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %56 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %55, i32 0, i32 4
  %57 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %57, i64 %59
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %63 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %62, i32 0, i32 2
  store %struct.TYPE_11__* %61, %struct.TYPE_11__** %63, align 8
  %64 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %65 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %64, i32 0, i32 3
  %66 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %65, align 8
  %67 = load i32, i32* %4, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %66, i64 %68
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %73 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %72, i32 0, i32 1
  store %struct.TYPE_12__* %71, %struct.TYPE_12__** %73, align 8
  %74 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %75 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %76 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %75, i32 0, i32 2
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 3
  store %struct.vsp1_pipeline* %74, %struct.vsp1_pipeline** %79, align 8
  %80 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %81 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %80, i32 0, i32 1
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %84 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %83, i32 0, i32 2
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 2
  store %struct.TYPE_12__* %82, %struct.TYPE_12__** %87, align 8
  %88 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %89 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %88, i32 0, i32 2
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store i64 0, i64* %92, align 8
  %93 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %94 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %93, i32 0, i32 2
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %99 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %98, i32 0, i32 0
  %100 = call i32 @list_add_tail(i32* %97, i32* %99)
  %101 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %102 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %103 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %102, i32 0, i32 1
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 1
  store %struct.vsp1_pipeline* %101, %struct.vsp1_pipeline** %105, align 8
  %106 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %107 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.vsp1_pipeline*, %struct.vsp1_pipeline** %6, align 8
  %111 = getelementptr inbounds %struct.vsp1_pipeline, %struct.vsp1_pipeline* %110, i32 0, i32 0
  %112 = call i32 @list_add_tail(i32* %109, i32* %111)
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %115 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %114, i32 0, i32 1
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %113, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %36
  %121 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %122 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %121, i32 0, i32 2
  %123 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %122, align 8
  %124 = load i32, i32* %4, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %123, i64 %125
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = load %struct.vsp1_drm_pipeline*, %struct.vsp1_drm_pipeline** %5, align 8
  %130 = getelementptr inbounds %struct.vsp1_drm_pipeline, %struct.vsp1_drm_pipeline* %129, i32 0, i32 0
  store i32* %128, i32** %130, align 8
  br label %131

131:                                              ; preds = %120, %36
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %4, align 4
  %134 = add i32 %133, 1
  store i32 %134, i32* %4, align 4
  br label %28

135:                                              ; preds = %28
  store i32 0, i32* %4, align 4
  br label %136

136:                                              ; preds = %156, %135
  %137 = load i32, i32* %4, align 4
  %138 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %139 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %138, i32 0, i32 1
  %140 = load %struct.TYPE_14__*, %struct.TYPE_14__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = icmp ult i32 %137, %142
  br i1 %143, label %144, label %159

144:                                              ; preds = %136
  %145 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %146 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %145, i32 0, i32 0
  %147 = load %struct.vsp1_rwpf**, %struct.vsp1_rwpf*** %146, align 8
  %148 = load i32, i32* %4, align 4
  %149 = zext i32 %148 to i64
  %150 = getelementptr inbounds %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %147, i64 %149
  %151 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %150, align 8
  store %struct.vsp1_rwpf* %151, %struct.vsp1_rwpf** %7, align 8
  %152 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %7, align 8
  %153 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 0
  %155 = call i32 @INIT_LIST_HEAD(i32* %154)
  br label %156

156:                                              ; preds = %144
  %157 = load i32, i32* %4, align 4
  %158 = add i32 %157, 1
  store i32 %158, i32* %4, align 4
  br label %136

159:                                              ; preds = %136
  store i32 0, i32* %2, align 4
  br label %160

160:                                              ; preds = %159, %19
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.TYPE_16__* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @vsp1_pipeline_init(%struct.vsp1_pipeline*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
