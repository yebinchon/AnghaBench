; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_get_output_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-driver.c_ivtv_get_output_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32 }
%struct.ivtv = type { i32, %struct.ivtv_stream* }

@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@IVTV_DEC_STREAM_TYPE_YUV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ivtv_stream* @ivtv_get_output_stream(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv_stream*, align 8
  %3 = alloca %struct.ivtv*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %4 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %5 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %19 [
    i32 129, label %7
    i32 128, label %13
  ]

7:                                                ; preds = %1
  %8 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 1
  %10 = load %struct.ivtv_stream*, %struct.ivtv_stream** %9, align 8
  %11 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %12 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %10, i64 %11
  store %struct.ivtv_stream* %12, %struct.ivtv_stream** %2, align 8
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %15 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %14, i32 0, i32 1
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %15, align 8
  %17 = load i64, i64* @IVTV_DEC_STREAM_TYPE_YUV, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i64 %17
  store %struct.ivtv_stream* %18, %struct.ivtv_stream** %2, align 8
  br label %20

19:                                               ; preds = %1
  store %struct.ivtv_stream* null, %struct.ivtv_stream** %2, align 8
  br label %20

20:                                               ; preds = %19, %13, %7
  %21 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  ret %struct.ivtv_stream* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
