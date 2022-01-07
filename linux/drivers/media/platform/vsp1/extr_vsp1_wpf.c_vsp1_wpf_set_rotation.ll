; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_vsp1_wpf_set_rotation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_wpf.c_vsp1_wpf_set_rotation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_rwpf = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.vsp1_video* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vsp1_video = type { i32, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32 }

@EBUSY = common dso_local global i32 0, align 4
@RWPF_PAD_SINK = common dso_local global i32 0, align 4
@RWPF_PAD_SOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_rwpf*, i32)* @vsp1_wpf_set_rotation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_wpf_set_rotation(%struct.vsp1_rwpf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vsp1_rwpf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vsp1_video*, align 8
  %7 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vsp1_rwpf* %0, %struct.vsp1_rwpf** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %12 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %11, i32 0, i32 2
  %13 = load %struct.vsp1_video*, %struct.vsp1_video** %12, align 8
  store %struct.vsp1_video* %13, %struct.vsp1_video** %6, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 90
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp eq i32 %17, 270
  br label %19

19:                                               ; preds = %16, %2
  %20 = phi i1 [ true, %2 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %24 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %99

29:                                               ; preds = %19
  %30 = load %struct.vsp1_video*, %struct.vsp1_video** %6, align 8
  %31 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.vsp1_video*, %struct.vsp1_video** %6, align 8
  %34 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %33, i32 0, i32 1
  %35 = call i64 @vb2_is_busy(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load i32, i32* @EBUSY, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %10, align 4
  br label %94

40:                                               ; preds = %29
  %41 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %42 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %41, i32 0, i32 0
  %43 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %44 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @RWPF_PAD_SINK, align 4
  %48 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__* %42, i32 %46, i32 %47)
  store %struct.v4l2_mbus_framefmt* %48, %struct.v4l2_mbus_framefmt** %7, align 8
  %49 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %50 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %49, i32 0, i32 0
  %51 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %52 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RWPF_PAD_SOURCE, align 4
  %56 = call %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__* %50, i32 %54, i32 %55)
  store %struct.v4l2_mbus_framefmt* %56, %struct.v4l2_mbus_framefmt** %8, align 8
  %57 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %58 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = call i32 @mutex_lock(i32* %59)
  %61 = load i32, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %40
  %64 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %65 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %68 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %70 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %73 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %85

74:                                               ; preds = %40
  %75 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %79 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %8, align 8
  %84 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  br label %85

85:                                               ; preds = %74, %63
  %86 = load i32, i32* %9, align 4
  %87 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %88 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  store i32 %86, i32* %89, align 8
  %90 = load %struct.vsp1_rwpf*, %struct.vsp1_rwpf** %4, align 8
  %91 = getelementptr inbounds %struct.vsp1_rwpf, %struct.vsp1_rwpf* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  br label %94

94:                                               ; preds = %85, %37
  %95 = load %struct.vsp1_video*, %struct.vsp1_video** %6, align 8
  %96 = getelementptr inbounds %struct.vsp1_video, %struct.vsp1_video* %95, i32 0, i32 0
  %97 = call i32 @mutex_unlock(i32* %96)
  %98 = load i32, i32* %10, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %94, %28
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local %struct.v4l2_mbus_framefmt* @vsp1_entity_get_pad_format(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
