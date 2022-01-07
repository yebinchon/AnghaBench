; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_dec_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_v4l2_dec_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.ivtv_open_id = type { i64, %struct.TYPE_4__, %struct.ivtv* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ivtv = type { i32, %struct.ivtv_stream* }
%struct.ivtv_stream = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"Decoder poll\0A\00", align 1
@IVTV_F_I_EV_VSYNC_ENABLED = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@IVTV_F_I_EV_VSYNC = common dso_local global i32 0, align 4
@IVTV_F_I_EV_DEC_STOPPED = common dso_local global i32 0, align 4
@EPOLLOUT = common dso_local global i32 0, align 4
@EPOLLWRNORM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_v4l2_dec_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ivtv_open_id*, align 8
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.ivtv_open_id* @fh2id(i32 %11)
  store %struct.ivtv_open_id* %12, %struct.ivtv_open_id** %5, align 8
  %13 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %14 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %13, i32 0, i32 2
  %15 = load %struct.ivtv*, %struct.ivtv** %14, align 8
  store %struct.ivtv* %15, %struct.ivtv** %6, align 8
  %16 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 1
  %18 = load %struct.ivtv_stream*, %struct.ivtv_stream** %17, align 8
  %19 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %20 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %18, i64 %21
  store %struct.ivtv_stream* %22, %struct.ivtv_stream** %7, align 8
  store i32 0, i32* %8, align 4
  %23 = call i32 @IVTV_DEBUG_HI_FILE(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %25 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %47, label %29

29:                                               ; preds = %2
  %30 = load %struct.file*, %struct.file** %3, align 8
  %31 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %32 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32*, i32** %4, align 8
  %35 = call i32 @poll_wait(%struct.file* %30, i32* %33, i32* %34)
  %36 = load i32, i32* @IVTV_F_I_EV_VSYNC_ENABLED, align 4
  %37 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %38 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %37, i32 0, i32 0
  %39 = call i32 @clear_bit(i32 %36, i32* %38)
  %40 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %5, align 8
  %41 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %40, i32 0, i32 1
  %42 = call i64 @v4l2_event_pending(%struct.TYPE_4__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %29
  %45 = load i32, i32* @EPOLLPRI, align 4
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %44, %29
  br label %71

47:                                               ; preds = %2
  %48 = load %struct.file*, %struct.file** %3, align 8
  %49 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %50 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %49, i32 0, i32 1
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @poll_wait(%struct.file* %48, i32* %50, i32* %51)
  %53 = load i32, i32* @IVTV_F_I_EV_VSYNC_ENABLED, align 4
  %54 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %55 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %54, i32 0, i32 0
  %56 = call i32 @set_bit(i32 %53, i32* %55)
  %57 = load i32, i32* @IVTV_F_I_EV_VSYNC, align 4
  %58 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %59 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %58, i32 0, i32 0
  %60 = call i64 @test_bit(i32 %57, i32* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %68, label %62

62:                                               ; preds = %47
  %63 = load i32, i32* @IVTV_F_I_EV_DEC_STOPPED, align 4
  %64 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %65 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %64, i32 0, i32 0
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %47
  %69 = load i32, i32* @EPOLLPRI, align 4
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %68, %62
  br label %71

71:                                               ; preds = %70, %46
  %72 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %73 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32, i32* @EPOLLOUT, align 4
  %79 = load i32, i32* @EPOLLWRNORM, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %77, %71
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local %struct.ivtv_open_id* @fh2id(i32) #1

declare dso_local i32 @IVTV_DEBUG_HI_FILE(i8*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @v4l2_event_pending(%struct.TYPE_4__*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
