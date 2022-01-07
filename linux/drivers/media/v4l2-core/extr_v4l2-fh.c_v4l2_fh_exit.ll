; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fh.c_v4l2_fh_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-fh.c_v4l2_fh_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_fh = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4l2_fh_exit(%struct.v4l2_fh* %0) #0 {
  %2 = alloca %struct.v4l2_fh*, align 8
  store %struct.v4l2_fh* %0, %struct.v4l2_fh** %2, align 8
  %3 = load %struct.v4l2_fh*, %struct.v4l2_fh** %2, align 8
  %4 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %20

8:                                                ; preds = %1
  %9 = load %struct.v4l2_fh*, %struct.v4l2_fh** %2, align 8
  %10 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @v4l_disable_media_source(i32* %11)
  %13 = load %struct.v4l2_fh*, %struct.v4l2_fh** %2, align 8
  %14 = call i32 @v4l2_event_unsubscribe_all(%struct.v4l2_fh* %13)
  %15 = load %struct.v4l2_fh*, %struct.v4l2_fh** %2, align 8
  %16 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %15, i32 0, i32 1
  %17 = call i32 @mutex_destroy(i32* %16)
  %18 = load %struct.v4l2_fh*, %struct.v4l2_fh** %2, align 8
  %19 = getelementptr inbounds %struct.v4l2_fh, %struct.v4l2_fh* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @v4l_disable_media_source(i32*) #1

declare dso_local i32 @v4l2_event_unsubscribe_all(%struct.v4l2_fh*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
