; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-out.c_vivid_sliced_vbi_out_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-out.c_vivid_sliced_vbi_out_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32*, i32, i32, i32*, i32** }
%struct.vivid_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32*, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@V4L2_STD_625_50 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_sliced_vbi_out_process(%struct.vivid_dev* %0, %struct.vivid_buffer* %1) #0 {
  %3 = alloca %struct.vivid_dev*, align 8
  %4 = alloca %struct.vivid_buffer*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %6 = alloca i32, align 4
  store %struct.vivid_dev* %0, %struct.vivid_dev** %3, align 8
  store %struct.vivid_buffer* %1, %struct.vivid_buffer** %4, align 8
  %7 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %8 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call %struct.v4l2_sliced_vbi_data* @vb2_plane_vaddr(i32* %9, i32 0)
  store %struct.v4l2_sliced_vbi_data* %10, %struct.v4l2_sliced_vbi_data** %5, align 8
  %11 = load %struct.vivid_buffer*, %struct.vivid_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.vivid_buffer, %struct.vivid_buffer* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @vb2_get_plane_payload(i32* %13, i32 0)
  %15 = sext i32 %14 to i64
  %16 = udiv i64 %15, 24
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %6, align 4
  %18 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %19 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 0, i32* %21, align 4
  %22 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %23 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 0, i32* %25, align 4
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 1
  store i32 0, i32* %27, align 8
  br label %28

28:                                               ; preds = %139, %2
  %29 = load i32, i32* %6, align 4
  %30 = add i32 %29, -1
  store i32 %30, i32* %6, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %142

32:                                               ; preds = %28
  %33 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %34 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %139 [
    i32 129, label %36
    i32 128, label %100
  ]

36:                                               ; preds = %32
  %37 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %38 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @V4L2_STD_525_60, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %36
  %44 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %45 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 21
  br i1 %47, label %48, label %99

48:                                               ; preds = %43
  %49 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %50 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %51, i64 %59
  store i32 1, i32* %60, align 4
  %61 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %62 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %67 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %66, i32 0, i32 4
  %68 = load i32**, i32*** %67, align 8
  %69 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32*, i32** %68, i64 %76
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %65, i32* %79, align 4
  %80 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %81 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %86 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %85, i32 0, i32 4
  %87 = load i32**, i32*** %86, align 8
  %88 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32*, i32** %87, i64 %95
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %84, i32* %98, align 4
  br label %99

99:                                               ; preds = %48, %43, %36
  br label %139

100:                                              ; preds = %32
  %101 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %102 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @V4L2_STD_625_50, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %138

107:                                              ; preds = %100
  %108 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %109 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %138

112:                                              ; preds = %107
  %113 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %114 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 23
  br i1 %116, label %117, label %138

117:                                              ; preds = %112
  %118 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %119 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %118, i32 0, i32 1
  store i32 1, i32* %119, align 8
  %120 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %121 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %126 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %125, i32 0, i32 3
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 0
  store i32 %124, i32* %128, align 4
  %129 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %130 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.vivid_dev*, %struct.vivid_dev** %3, align 8
  %135 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %133, i32* %137, align 4
  br label %138

138:                                              ; preds = %117, %112, %107, %100
  br label %139

139:                                              ; preds = %32, %138, %99
  %140 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %5, align 8
  %141 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %140, i32 1
  store %struct.v4l2_sliced_vbi_data* %141, %struct.v4l2_sliced_vbi_data** %5, align 8
  br label %28

142:                                              ; preds = %28
  ret void
}

declare dso_local %struct.v4l2_sliced_vbi_data* @vb2_plane_vaddr(i32*, i32) #1

declare dso_local i32 @vb2_get_plane_payload(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
