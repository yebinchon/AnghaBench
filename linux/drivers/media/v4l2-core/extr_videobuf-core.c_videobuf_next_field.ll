; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_next_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_videobuf-core.c_videobuf_next_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.videobuf_queue = type { i32, i64 }

@V4L2_FIELD_ANY = common dso_local global i32 0, align 4
@V4L2_FIELD_ALTERNATE = common dso_local global i32 0, align 4
@V4L2_FIELD_TOP = common dso_local global i64 0, align 8
@V4L2_FIELD_BOTTOM = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @videobuf_next_field(%struct.videobuf_queue* %0) #0 {
  %2 = alloca %struct.videobuf_queue*, align 8
  %3 = alloca i32, align 4
  store %struct.videobuf_queue* %0, %struct.videobuf_queue** %2, align 8
  %4 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %5 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @V4L2_FIELD_ANY, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp eq i32 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* @V4L2_FIELD_ALTERNATE, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %35

15:                                               ; preds = %1
  %16 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %17 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %18 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %16, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load i8*, i8** @V4L2_FIELD_BOTTOM, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %3, align 4
  %24 = load i8*, i8** @V4L2_FIELD_BOTTOM, align 8
  %25 = ptrtoint i8* %24 to i64
  %26 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %27 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  br label %34

28:                                               ; preds = %15
  %29 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i64, i64* @V4L2_FIELD_TOP, align 8
  %32 = load %struct.videobuf_queue*, %struct.videobuf_queue** %2, align 8
  %33 = getelementptr inbounds %struct.videobuf_queue, %struct.videobuf_queue* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %28, %21
  br label %35

35:                                               ; preds = %34, %1
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
