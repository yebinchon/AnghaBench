; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_get_format_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_pipe.c_vsp1_get_format_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_format_info = type { i32 }
%struct.vsp1_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@vsp1_video_formats = common dso_local global %struct.vsp1_format_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vsp1_format_info* @vsp1_get_format_info(%struct.vsp1_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vsp1_format_info*, align 8
  %4 = alloca %struct.vsp1_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vsp1_format_info*, align 8
  store %struct.vsp1_device* %0, %struct.vsp1_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.vsp1_device*, %struct.vsp1_device** %4, align 8
  %9 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 2
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %17 [
    i32 128, label %16
    i32 130, label %16
    i32 129, label %16
  ]

16:                                               ; preds = %14, %14, %14
  store %struct.vsp1_format_info* null, %struct.vsp1_format_info** %3, align 8
  br label %41

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17, %2
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %37, %18
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** @vsp1_video_formats, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.vsp1_format_info* %21)
  %23 = icmp ult i32 %20, %22
  br i1 %23, label %24, label %40

24:                                               ; preds = %19
  %25 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** @vsp1_video_formats, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %25, i64 %27
  store %struct.vsp1_format_info* %28, %struct.vsp1_format_info** %7, align 8
  %29 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %7, align 8
  %30 = getelementptr inbounds %struct.vsp1_format_info, %struct.vsp1_format_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %7, align 8
  store %struct.vsp1_format_info* %35, %struct.vsp1_format_info** %3, align 8
  br label %41

36:                                               ; preds = %24
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, 1
  store i32 %39, i32* %6, align 4
  br label %19

40:                                               ; preds = %19
  store %struct.vsp1_format_info* null, %struct.vsp1_format_info** %3, align 8
  br label %41

41:                                               ; preds = %40, %34, %16
  %42 = load %struct.vsp1_format_info*, %struct.vsp1_format_info** %3, align 8
  ret %struct.vsp1_format_info* %42
}

declare dso_local i32 @ARRAY_SIZE(%struct.vsp1_format_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
