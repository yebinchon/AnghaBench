; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_stop_all_captures.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_stop_all_captures.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.ivtv_stream* }
%struct.ivtv_stream = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@IVTV_MAX_STREAMS = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_stop_all_captures(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %5 = load i32, i32* @IVTV_MAX_STREAMS, align 4
  %6 = sub nsw i32 %5, 1
  store i32 %6, i32* %3, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp sge i32 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 0
  %13 = load %struct.ivtv_stream*, %struct.ivtv_stream** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %13, i64 %15
  store %struct.ivtv_stream* %16, %struct.ivtv_stream** %4, align 8
  %17 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %33

23:                                               ; preds = %10
  %24 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %25 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %26 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %25, i32 0, i32 0
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %31 = call i32 @ivtv_stop_v4l2_encode_stream(%struct.ivtv_stream* %30, i32 0)
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %3, align 4
  br label %7

36:                                               ; preds = %7
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @ivtv_stop_v4l2_encode_stream(%struct.ivtv_stream*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
