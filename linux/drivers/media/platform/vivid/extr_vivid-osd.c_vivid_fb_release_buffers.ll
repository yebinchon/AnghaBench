; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_fb_release_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-osd.c_vivid_fb_release_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_dev = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_fb_release_buffers(%struct.vivid_dev* %0) #0 {
  %2 = alloca %struct.vivid_dev*, align 8
  store %struct.vivid_dev* %0, %struct.vivid_dev** %2, align 8
  %3 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %4 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %30

8:                                                ; preds = %1
  %9 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %10 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %17 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = call i32 @fb_dealloc_cmap(%struct.TYPE_4__* %18)
  br label %20

20:                                               ; preds = %15, %8
  %21 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %22 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @kfree(i32* %24)
  %26 = load %struct.vivid_dev*, %struct.vivid_dev** %2, align 8
  %27 = getelementptr inbounds %struct.vivid_dev, %struct.vivid_dev* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @kfree(i32* %28)
  br label %30

30:                                               ; preds = %20, %7
  ret void
}

declare dso_local i32 @fb_dealloc_cmap(%struct.TYPE_4__*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
