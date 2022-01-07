; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_irq_video_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_irq_video_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@V4L2_FIELD_TOP = common dso_local global i32 0, align 4
@V4L2_FIELD_BOTTOM = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_irq_video_done(%struct.saa7134_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.saa7134_dev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %7 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %6, i32 0, i32 1
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %10 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = icmp ne %struct.TYPE_4__* %12, null
  br i1 %13, label %14, label %69

14:                                               ; preds = %2
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @V4L2_FIELD_HAS_BOTH(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %14
  %22 = load i64, i64* %4, align 8
  %23 = and i64 %22, 16
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %27 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %74

31:                                               ; preds = %21
  %32 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %33 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %31
  br label %74

40:                                               ; preds = %31
  br label %63

41:                                               ; preds = %14
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @V4L2_FIELD_TOP, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load i64, i64* %4, align 8
  %47 = and i64 %46, 16
  %48 = icmp ne i64 %47, 16
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %74

50:                                               ; preds = %45
  br label %62

51:                                               ; preds = %41
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @V4L2_FIELD_BOTTOM, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %4, align 8
  %57 = and i64 %56, 16
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %74

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %50
  br label %63

63:                                               ; preds = %62, %40
  %64 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %65 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %66 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %65, i32 0, i32 2
  %67 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %68 = call i32 @saa7134_buffer_finish(%struct.saa7134_dev* %64, %struct.TYPE_5__* %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %2
  %70 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %71 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %72 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %71, i32 0, i32 2
  %73 = call i32 @saa7134_buffer_next(%struct.saa7134_dev* %70, %struct.TYPE_5__* %72)
  br label %74

74:                                               ; preds = %69, %59, %49, %39, %25
  %75 = load %struct.saa7134_dev*, %struct.saa7134_dev** %3, align 8
  %76 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %75, i32 0, i32 1
  %77 = call i32 @spin_unlock(i32* %76)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @V4L2_FIELD_HAS_BOTH(i32) #1

declare dso_local i32 @saa7134_buffer_finish(%struct.saa7134_dev*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @saa7134_buffer_next(%struct.saa7134_dev*, %struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
