; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_claim_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-fileops.c_ivtv_claim_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_open_id = type { i32, %struct.ivtv* }
%struct.ivtv = type { %struct.ivtv_stream*, %struct.TYPE_2__ }
%struct.ivtv_stream = type { i32, i32* }
%struct.TYPE_2__ = type { i64 }

@IVTV_F_S_CLAIMED = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Start Read VBI\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Stream %d is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IVTV_IRQ_DEC_VBI_RE_INSERT = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@IVTV_F_S_INTERNAL_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_claim_stream(%struct.ivtv_open_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv_open_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  %8 = alloca %struct.ivtv_stream*, align 8
  %9 = alloca i32, align 4
  store %struct.ivtv_open_id* %0, %struct.ivtv_open_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %11 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %10, i32 0, i32 1
  %12 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  store %struct.ivtv* %12, %struct.ivtv** %6, align 8
  %13 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %14 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %13, i32 0, i32 0
  %15 = load %struct.ivtv_stream*, %struct.ivtv_stream** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %15, i64 %17
  store %struct.ivtv_stream* %18, %struct.ivtv_stream** %7, align 8
  %19 = load i32, i32* @IVTV_F_S_CLAIMED, align 4
  %20 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %21 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %20, i32 0, i32 0
  %22 = call i64 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %56

24:                                               ; preds = %2
  %25 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %26 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %29 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %28, i32 0, i32 0
  %30 = icmp eq i32* %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %118

32:                                               ; preds = %24
  %33 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %34 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %51

37:                                               ; preds = %32
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @IVTV_ENC_STREAM_TYPE_VBI, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %41, %37
  %46 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %47 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %46, i32 0, i32 0
  %48 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %49 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %48, i32 0, i32 1
  store i32* %47, i32** %49, align 8
  %50 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %118

51:                                               ; preds = %41, %32
  %52 = load i32, i32* %5, align 4
  %53 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %3, align 4
  br label %118

56:                                               ; preds = %2
  %57 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %58 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %57, i32 0, i32 0
  %59 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %60 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %59, i32 0, i32 1
  store i32* %58, i32** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %66 = load i32, i32* @IVTV_IRQ_DEC_VBI_RE_INSERT, align 4
  %67 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %56
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @IVTV_DEC_STREAM_TYPE_MPG, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  store i32 %73, i32* %9, align 4
  br label %92

74:                                               ; preds = %68
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @IVTV_ENC_STREAM_TYPE_MPG, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %80 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %86 = call i32 @ivtv_raw_vbi(%struct.ivtv* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* @IVTV_ENC_STREAM_TYPE_VBI, align 4
  store i32 %89, i32* %9, align 4
  br label %91

90:                                               ; preds = %84, %78, %74
  store i32 0, i32* %3, align 4
  br label %118

91:                                               ; preds = %88
  br label %92

92:                                               ; preds = %91, %72
  %93 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %94 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %93, i32 0, i32 0
  %95 = load %struct.ivtv_stream*, %struct.ivtv_stream** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %95, i64 %97
  store %struct.ivtv_stream* %98, %struct.ivtv_stream** %8, align 8
  %99 = load i32, i32* @IVTV_F_S_CLAIMED, align 4
  %100 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %101 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %100, i32 0, i32 0
  %102 = call i64 @test_and_set_bit(i32 %99, i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %92
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %110 = load i32, i32* @IVTV_IRQ_DEC_VBI_RE_INSERT, align 4
  %111 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %104
  br label %113

113:                                              ; preds = %112, %92
  %114 = load i32, i32* @IVTV_F_S_INTERNAL_USE, align 4
  %115 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %116 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %115, i32 0, i32 0
  %117 = call i32 @set_bit(i32 %114, i32* %116)
  store i32 0, i32* %3, align 4
  br label %118

118:                                              ; preds = %113, %90, %51, %45, %31
  %119 = load i32, i32* %3, align 4
  ret i32 %119
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @ivtv_clear_irq_mask(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_raw_vbi(%struct.ivtv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
