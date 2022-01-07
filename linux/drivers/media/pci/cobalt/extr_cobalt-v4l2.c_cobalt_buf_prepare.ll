; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_buf_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_buf_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.cobalt_stream* }
%struct.cobalt_stream = type { i32, i32 }
%struct.vb2_v4l2_buffer = type { i32 }

@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_buffer*)* @cobalt_buf_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cobalt_buf_prepare(%struct.vb2_buffer* %0) #0 {
  %2 = alloca %struct.vb2_buffer*, align 8
  %3 = alloca %struct.vb2_v4l2_buffer*, align 8
  %4 = alloca %struct.cobalt_stream*, align 8
  store %struct.vb2_buffer* %0, %struct.vb2_buffer** %2, align 8
  %5 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %6 = call %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer* %5)
  store %struct.vb2_v4l2_buffer* %6, %struct.vb2_v4l2_buffer** %3, align 8
  %7 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %8 = getelementptr inbounds %struct.vb2_buffer, %struct.vb2_buffer* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.cobalt_stream*, %struct.cobalt_stream** %10, align 8
  store %struct.cobalt_stream* %11, %struct.cobalt_stream** %4, align 8
  %12 = load %struct.vb2_buffer*, %struct.vb2_buffer** %2, align 8
  %13 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %14 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %17 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %15, %18
  %20 = call i32 @vb2_set_plane_payload(%struct.vb2_buffer* %12, i32 0, i32 %19)
  %21 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %22 = load %struct.vb2_v4l2_buffer*, %struct.vb2_v4l2_buffer** %3, align 8
  %23 = getelementptr inbounds %struct.vb2_v4l2_buffer, %struct.vb2_v4l2_buffer* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  ret i32 0
}

declare dso_local %struct.vb2_v4l2_buffer* @to_vb2_v4l2_buffer(%struct.vb2_buffer*) #1

declare dso_local i32 @vb2_set_plane_payload(%struct.vb2_buffer*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
