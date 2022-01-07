; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_nodes_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-v4l2.c_cobalt_nodes_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cobalt = type { %struct.cobalt_stream* }
%struct.cobalt_stream = type { i32, i32, %struct.video_device }
%struct.video_device = type { i32 }

@COBALT_NUM_STREAMS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cobalt_nodes_unregister(%struct.cobalt* %0) #0 {
  %2 = alloca %struct.cobalt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cobalt_stream*, align 8
  %5 = alloca %struct.video_device*, align 8
  store %struct.cobalt* %0, %struct.cobalt** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @COBALT_NUM_STREAMS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %6
  %11 = load %struct.cobalt*, %struct.cobalt** %2, align 8
  %12 = getelementptr inbounds %struct.cobalt, %struct.cobalt* %11, i32 0, i32 0
  %13 = load %struct.cobalt_stream*, %struct.cobalt_stream** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %13, i64 %15
  store %struct.cobalt_stream* %16, %struct.cobalt_stream** %4, align 8
  %17 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %18 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %17, i32 0, i32 2
  store %struct.video_device* %18, %struct.video_device** %5, align 8
  %19 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %20 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %10
  %24 = load %struct.video_device*, %struct.video_device** %5, align 8
  %25 = call i32 @video_unregister_device(%struct.video_device* %24)
  br label %35

26:                                               ; preds = %10
  %27 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %28 = getelementptr inbounds %struct.cobalt_stream, %struct.cobalt_stream* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.cobalt_stream*, %struct.cobalt_stream** %4, align 8
  %33 = call i32 @cobalt_alsa_exit(%struct.cobalt_stream* %32)
  br label %34

34:                                               ; preds = %31, %26
  br label %35

35:                                               ; preds = %34, %23
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %6

39:                                               ; preds = %6
  ret void
}

declare dso_local i32 @video_unregister_device(%struct.video_device*) #1

declare dso_local i32 @cobalt_alsa_exit(%struct.cobalt_stream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
