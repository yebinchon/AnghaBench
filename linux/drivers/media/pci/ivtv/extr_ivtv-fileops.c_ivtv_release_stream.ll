; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_release_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_release_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i64, i32, i32*, i32, %struct.ivtv* }
%struct.ivtv = type { %struct.ivtv_stream* }

@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@IVTV_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@IVTV_F_S_CLAIMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Release stream %s not in use!\0A\00", align 1
@IVTV_IRQ_DEC_VBI_RE_INSERT = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_release_stream(%struct.ivtv_stream* %0) #0 {
  %2 = alloca %struct.ivtv_stream*, align 8
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.ivtv_stream*, align 8
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %2, align 8
  %5 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %6 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %5, i32 0, i32 4
  %7 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  store %struct.ivtv* %7, %struct.ivtv** %3, align 8
  %8 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %9 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %8, i32 0, i32 2
  store i32* null, i32** %9, align 8
  %10 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %11 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %15, %1
  %22 = load i32, i32* @IVTV_F_S_INTERNAL_USE, align 4
  %23 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %24 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %23, i32 0, i32 1
  %25 = call i64 @test_bit(i32 %22, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %107

28:                                               ; preds = %21, %15
  %29 = load i32, i32* @IVTV_F_S_CLAIMED, align 4
  %30 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %31 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %30, i32 0, i32 1
  %32 = call i32 @test_and_clear_bit(i32 %29, i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %36 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @IVTV_DEBUG_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  br label %107

39:                                               ; preds = %28
  %40 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %41 = call i32 @ivtv_flush_queues(%struct.ivtv_stream* %40)
  %42 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %43 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %49 = load i32, i32* @IVTV_IRQ_DEC_VBI_RE_INSERT, align 4
  %50 = call i32 @ivtv_set_irq_mask(%struct.ivtv* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %53 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @IVTV_DEC_STREAM_TYPE_MPG, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %59 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %58, i32 0, i32 0
  %60 = load %struct.ivtv_stream*, %struct.ivtv_stream** %59, align 8
  %61 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %62 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %60, i64 %61
  store %struct.ivtv_stream* %62, %struct.ivtv_stream** %4, align 8
  br label %77

63:                                               ; preds = %51
  %64 = load %struct.ivtv_stream*, %struct.ivtv_stream** %2, align 8
  %65 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @IVTV_ENC_STREAM_TYPE_MPG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63
  %70 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %71 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %70, i32 0, i32 0
  %72 = load %struct.ivtv_stream*, %struct.ivtv_stream** %71, align 8
  %73 = load i64, i64* @IVTV_ENC_STREAM_TYPE_VBI, align 8
  %74 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %72, i64 %73
  store %struct.ivtv_stream* %74, %struct.ivtv_stream** %4, align 8
  br label %76

75:                                               ; preds = %63
  br label %107

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %57
  %78 = load i32, i32* @IVTV_F_S_INTERNAL_USE, align 4
  %79 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %80 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %79, i32 0, i32 1
  %81 = call i32 @test_and_clear_bit(i32 %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %107

84:                                               ; preds = %77
  %85 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %86 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = icmp ne i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %107

90:                                               ; preds = %84
  %91 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %92 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @IVTV_DEC_STREAM_TYPE_VBI, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %98 = load i32, i32* @IVTV_IRQ_DEC_VBI_RE_INSERT, align 4
  %99 = call i32 @ivtv_set_irq_mask(%struct.ivtv* %97, i32 %98)
  br label %100

100:                                              ; preds = %96, %90
  %101 = load i32, i32* @IVTV_F_S_CLAIMED, align 4
  %102 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %103 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %102, i32 0, i32 1
  %104 = call i32 @clear_bit(i32 %101, i32* %103)
  %105 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %106 = call i32 @ivtv_flush_queues(%struct.ivtv_stream* %105)
  br label %107

107:                                              ; preds = %100, %89, %83, %75, %34, %27
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @IVTV_DEBUG_WARN(i8*, i32) #1

declare dso_local i32 @ivtv_flush_queues(%struct.ivtv_stream*) #1

declare dso_local i32 @ivtv_set_irq_mask(%struct.ivtv*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
