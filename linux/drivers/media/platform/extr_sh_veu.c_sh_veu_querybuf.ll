; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_querybuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_querybuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_buffer = type { i32 }
%struct.sh_veu_file = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_buffer*)* @sh_veu_querybuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_querybuf(%struct.file* %0, i8* %1, %struct.v4l2_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_buffer*, align 8
  %8 = alloca %struct.sh_veu_file*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_buffer* %2, %struct.v4l2_buffer** %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.sh_veu_file*
  store %struct.sh_veu_file* %10, %struct.sh_veu_file** %8, align 8
  %11 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %12 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %15 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @sh_veu_is_streamer(%struct.TYPE_2__* %13, %struct.sh_veu_file* %14, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %3
  %24 = load %struct.file*, %struct.file** %5, align 8
  %25 = load %struct.sh_veu_file*, %struct.sh_veu_file** %8, align 8
  %26 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.v4l2_buffer*, %struct.v4l2_buffer** %7, align 8
  %31 = call i32 @v4l2_m2m_querybuf(%struct.file* %24, i32 %29, %struct.v4l2_buffer* %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %23, %20
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @sh_veu_is_streamer(%struct.TYPE_2__*, %struct.sh_veu_file*, i32) #1

declare dso_local i32 @v4l2_m2m_querybuf(%struct.file*, i32, %struct.v4l2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
