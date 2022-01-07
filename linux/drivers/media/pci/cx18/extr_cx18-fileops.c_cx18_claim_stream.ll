; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_claim_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_claim_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_open_id = type { i32, %struct.cx18* }
%struct.cx18 = type { %struct.cx18_stream*, %struct.TYPE_2__ }
%struct.cx18_stream = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"MPEG Index stream cannot be claimed directly, but something tried.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CX18_F_S_CLAIMED = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Start Read VBI\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Stream %d is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@CX18_F_S_INTERNAL_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_claim_stream(%struct.cx18_open_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18_open_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca %struct.cx18_stream*, align 8
  %8 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18_open_id* %0, %struct.cx18_open_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %10 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %9, i32 0, i32 1
  %11 = load %struct.cx18*, %struct.cx18** %10, align 8
  store %struct.cx18* %11, %struct.cx18** %6, align 8
  %12 = load %struct.cx18*, %struct.cx18** %6, align 8
  %13 = getelementptr inbounds %struct.cx18, %struct.cx18* %12, i32 0, i32 0
  %14 = load %struct.cx18_stream*, %struct.cx18_stream** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %14, i64 %16
  store %struct.cx18_stream* %17, %struct.cx18_stream** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @CX18_ENC_STREAM_TYPE_IDX, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = call i32 @CX18_WARN(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %109

25:                                               ; preds = %2
  %26 = load i32, i32* @CX18_F_S_CLAIMED, align 4
  %27 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %28 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %27, i32 0, i32 1
  %29 = call i64 @test_and_set_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %33 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %36 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %109

40:                                               ; preds = %31
  %41 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %42 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @CX18_ENC_STREAM_TYPE_VBI, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %51 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %54 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  %55 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %109

56:                                               ; preds = %45, %40
  %57 = load i32, i32* %5, align 4
  %58 = call i32 (i8*, ...) @CX18_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EBUSY, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %109

61:                                               ; preds = %25
  %62 = load %struct.cx18_open_id*, %struct.cx18_open_id** %4, align 8
  %63 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.cx18_stream*, %struct.cx18_stream** %7, align 8
  %66 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @CX18_ENC_STREAM_TYPE_MPG, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %109

71:                                               ; preds = %61
  %72 = load %struct.cx18*, %struct.cx18** %6, align 8
  %73 = getelementptr inbounds %struct.cx18, %struct.cx18* %72, i32 0, i32 0
  %74 = load %struct.cx18_stream*, %struct.cx18_stream** %73, align 8
  %75 = load i32, i32* @CX18_ENC_STREAM_TYPE_IDX, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %74, i64 %76
  store %struct.cx18_stream* %77, %struct.cx18_stream** %8, align 8
  %78 = load %struct.cx18*, %struct.cx18** %6, align 8
  %79 = getelementptr inbounds %struct.cx18, %struct.cx18* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %71
  %84 = load %struct.cx18*, %struct.cx18** %6, align 8
  %85 = call i32 @cx18_raw_vbi(%struct.cx18* %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = load %struct.cx18*, %struct.cx18** %6, align 8
  %89 = getelementptr inbounds %struct.cx18, %struct.cx18* %88, i32 0, i32 0
  %90 = load %struct.cx18_stream*, %struct.cx18_stream** %89, align 8
  %91 = load i32, i32* @CX18_ENC_STREAM_TYPE_VBI, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %90, i64 %92
  store %struct.cx18_stream* %93, %struct.cx18_stream** %8, align 8
  br label %100

94:                                               ; preds = %83, %71
  %95 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %96 = call i32 @cx18_stream_enabled(%struct.cx18_stream* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %99, label %98

98:                                               ; preds = %94
  store i32 0, i32* %3, align 4
  br label %109

99:                                               ; preds = %94
  br label %100

100:                                              ; preds = %99, %87
  %101 = load i32, i32* @CX18_F_S_CLAIMED, align 4
  %102 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %103 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %102, i32 0, i32 1
  %104 = call i32 @set_bit(i32 %101, i32* %103)
  %105 = load i32, i32* @CX18_F_S_INTERNAL_USE, align 4
  %106 = load %struct.cx18_stream*, %struct.cx18_stream** %8, align 8
  %107 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %106, i32 0, i32 1
  %108 = call i32 @set_bit(i32 %105, i32* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %100, %98, %70, %56, %49, %39, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @CX18_WARN(i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @CX18_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @cx18_raw_vbi(%struct.cx18*) #1

declare dso_local i32 @cx18_stream_enabled(%struct.cx18_stream*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
