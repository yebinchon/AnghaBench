; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_start_decoding.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_start_decoding.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_open_id = type { i64, %struct.ivtv* }
%struct.ivtv = type { i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"start decode, stream already claimed\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_start_decoding(%struct.ivtv_open_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv_open_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.ivtv_open_id* %0, %struct.ivtv_open_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %10 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %9, i32 0, i32 1
  %11 = load %struct.ivtv*, %struct.ivtv** %10, align 8
  store %struct.ivtv* %11, %struct.ivtv** %6, align 8
  %12 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %13 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %12, i32 0, i32 1
  %14 = load %struct.ivtv_stream*, %struct.ivtv_stream** %13, align 8
  %15 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %16 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %14, i64 %17
  store %struct.ivtv_stream* %18, %struct.ivtv_stream** %7, align 8
  %19 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %20 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %19, i32 0, i32 0
  %21 = call i64 @atomic_read(i32* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %54

23:                                               ; preds = %2
  %24 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %25 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %26 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i64 @ivtv_claim_stream(%struct.ivtv_open_id* %24, i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %23
  %31 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %65

34:                                               ; preds = %23
  %35 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %36 = call i32 @ivtv_start_v4l2_decode_stream(%struct.ivtv_stream* %35, i32 0)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %46 = call i32 @ivtv_start_v4l2_decode_stream(%struct.ivtv_stream* %45, i32 0)
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %65

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %56 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ivtv_set_speed(%struct.ivtv* %61, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %65

64:                                               ; preds = %54
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %64, %60, %50, %30
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @ivtv_claim_stream(%struct.ivtv_open_id*, i64) #1

declare dso_local i32 @IVTV_DEBUG_WARN(i8*) #1

declare dso_local i32 @ivtv_start_v4l2_decode_stream(%struct.ivtv_stream*, i32) #1

declare dso_local i32 @ivtv_set_speed(%struct.ivtv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
