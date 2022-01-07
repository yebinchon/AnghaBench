; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_video_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_video_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_video_fini(%struct.saa7134_dev* %0) #0 {
  %2 = alloca %struct.saa7134_dev*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %2, align 8
  %3 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %4 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %3, i32 0, i32 6
  %5 = call i32 @vb2_queue_release(i32* %4)
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %7 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = call i32 @saa7134_pgtable_free(i32 %8, i32* %11)
  %13 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %14 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %13, i32 0, i32 4
  %15 = call i32 @vb2_queue_release(i32* %14)
  %16 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %17 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @saa7134_pgtable_free(i32 %18, i32* %21)
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %24 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %23, i32 0, i32 1
  %25 = call i32 @v4l2_ctrl_handler_free(i32* %24)
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %27 = call i64 @card_has_radio(%struct.saa7134_dev* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load %struct.saa7134_dev*, %struct.saa7134_dev** %2, align 8
  %31 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %30, i32 0, i32 0
  %32 = call i32 @v4l2_ctrl_handler_free(i32* %31)
  br label %33

33:                                               ; preds = %29, %1
  ret void
}

declare dso_local i32 @vb2_queue_release(i32*) #1

declare dso_local i32 @saa7134_pgtable_free(i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32*) #1

declare dso_local i64 @card_has_radio(%struct.saa7134_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
