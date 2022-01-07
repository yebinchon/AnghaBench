; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_dump_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_dump_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i32, %struct.delta_dev* }
%struct.delta_dev = type { i32 }
%struct.delta_frame = type { i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [55 x i8] c"%s dump frame[%d] dts=%lld type=%s field=%s data=%*ph\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.delta_ctx*, %struct.delta_frame*)* @dump_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_frame(%struct.delta_ctx* %0, %struct.delta_frame* %1) #0 {
  %3 = alloca %struct.delta_ctx*, align 8
  %4 = alloca %struct.delta_frame*, align 8
  %5 = alloca %struct.delta_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.delta_ctx* %0, %struct.delta_ctx** %3, align 8
  store %struct.delta_frame* %1, %struct.delta_frame** %4, align 8
  %8 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %9 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %8, i32 0, i32 1
  %10 = load %struct.delta_dev*, %struct.delta_dev** %9, align 8
  store %struct.delta_dev* %10, %struct.delta_dev** %5, align 8
  store i32 10, i32* %6, align 4
  %11 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %12 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %11, i32 0, i32 4
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i32*
  store i32* %14, i32** %7, align 8
  %15 = load %struct.delta_dev*, %struct.delta_dev** %5, align 8
  %16 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.delta_ctx*, %struct.delta_ctx** %3, align 8
  %19 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %22 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %25 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %28 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @frame_type_str(i32 %29)
  %31 = load %struct.delta_frame*, %struct.delta_frame** %4, align 8
  %32 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @frame_field_str(i32 %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = call i32 @dev_dbg(i32 %17, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23, i32 %26, i32 %30, i32 %34, i32 %35, i32* %36)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @frame_type_str(i32) #1

declare dso_local i32 @frame_field_str(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
