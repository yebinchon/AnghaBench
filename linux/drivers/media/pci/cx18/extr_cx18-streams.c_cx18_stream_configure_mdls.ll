; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_stream_configure_mdls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-streams.c_cx18_stream_configure_mdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@V4L2_PIX_FMT_HM12 = common dso_local global i32 0, align 4
@VBI_ACTIVE_SAMPLES = common dso_local global i32 0, align 4
@VBI_HBLANK_SAMPLES_60HZ = common dso_local global i32 0, align 4
@VBI_HBLANK_SAMPLES_50HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18_stream*)* @cx18_stream_configure_mdls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx18_stream_configure_mdls(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %3 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %4 = call i32 @cx18_unload_queues(%struct.cx18_stream* %3)
  %5 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %6 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %101 [
    i32 128, label %8
    i32 129, label %61
  ]

8:                                                ; preds = %1
  %9 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %10 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @V4L2_PIX_FMT_HM12, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %16 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %15, i32 0, i32 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 720, %20
  %22 = mul nsw i32 %21, 3
  %23 = sdiv i32 %22, 2
  %24 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %25 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %37

26:                                               ; preds = %8
  %27 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %28 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %27, i32 0, i32 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 720, %32
  %34 = mul nsw i32 %33, 2
  %35 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %36 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %26, %14
  %38 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %39 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %42 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = sdiv i32 %40, %43
  %45 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %46 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %48 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %51 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %37
  %56 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %57 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %55, %37
  br label %113

61:                                               ; preds = %1
  %62 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %63 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %62, i32 0, i32 2
  store i32 1, i32* %63, align 8
  %64 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %65 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %64, i32 0, i32 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = call i32 @cx18_raw_vbi(%struct.TYPE_4__* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %61
  %70 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %71 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 12, i32 18
  %78 = mul nsw i32 %77, 2
  %79 = load i32, i32* @VBI_ACTIVE_SAMPLES, align 4
  %80 = mul nsw i32 %78, %79
  %81 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %82 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  br label %100

83:                                               ; preds = %61
  %84 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %85 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %84, i32 0, i32 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %83
  %91 = load i32, i32* @VBI_HBLANK_SAMPLES_60HZ, align 4
  %92 = mul nsw i32 36, %91
  br label %96

93:                                               ; preds = %83
  %94 = load i32, i32* @VBI_HBLANK_SAMPLES_50HZ, align 4
  %95 = mul nsw i32 44, %94
  br label %96

96:                                               ; preds = %93, %90
  %97 = phi i32 [ %92, %90 ], [ %95, %93 ]
  %98 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %99 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %69
  br label %113

101:                                              ; preds = %1
  %102 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %103 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %102, i32 0, i32 2
  store i32 1, i32* %103, align 8
  %104 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %105 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %108 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = mul nsw i32 %106, %109
  %111 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %112 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %101, %100, %60
  %114 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %115 = call i32 @cx18_load_queues(%struct.cx18_stream* %114)
  ret void
}

declare dso_local i32 @cx18_unload_queues(%struct.cx18_stream*) #1

declare dso_local i32 @cx18_raw_vbi(%struct.TYPE_4__*) #1

declare dso_local i32 @cx18_load_queues(%struct.cx18_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
