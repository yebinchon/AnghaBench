; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_release_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_release_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i32, i64, i32, i32, %struct.cx18* }
%struct.cx18 = type { %struct.cx18_stream* }

@CX18_ENC_STREAM_TYPE_IDX = common dso_local global i64 0, align 8
@CX18_ENC_STREAM_TYPE_VBI = common dso_local global i64 0, align 8
@CX18_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@CX18_F_S_CLAIMED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Release stream %s not in use!\0A\00", align 1
@CX18_ENC_STREAM_TYPE_MPG = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx18_release_stream(%struct.cx18_stream* %0) #0 {
  %2 = alloca %struct.cx18_stream*, align 8
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca %struct.cx18_stream*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %2, align 8
  %5 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %6 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %5, i32 0, i32 4
  %7 = load %struct.cx18*, %struct.cx18** %6, align 8
  store %struct.cx18* %7, %struct.cx18** %3, align 8
  %8 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %9 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %8, i32 0, i32 0
  store i32 -1, i32* %9, align 8
  %10 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %11 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %91

16:                                               ; preds = %1
  %17 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %18 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* @CX18_F_S_INTERNAL_USE, align 4
  %24 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %25 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %24, i32 0, i32 2
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %91

29:                                               ; preds = %22, %16
  %30 = load i32, i32* @CX18_F_S_CLAIMED, align 4
  %31 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %32 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %31, i32 0, i32 2
  %33 = call i64 @test_and_clear_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %37 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @CX18_DEBUG_WARN(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %91

40:                                               ; preds = %29
  %41 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %42 = call i32 @cx18_flush_queues(%struct.cx18_stream* %41)
  %43 = load %struct.cx18_stream*, %struct.cx18_stream** %2, align 8
  %44 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @CX18_ENC_STREAM_TYPE_MPG, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %91

49:                                               ; preds = %40
  %50 = load %struct.cx18*, %struct.cx18** %3, align 8
  %51 = getelementptr inbounds %struct.cx18, %struct.cx18* %50, i32 0, i32 0
  %52 = load %struct.cx18_stream*, %struct.cx18_stream** %51, align 8
  %53 = load i64, i64* @CX18_ENC_STREAM_TYPE_IDX, align 8
  %54 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %52, i64 %53
  store %struct.cx18_stream* %54, %struct.cx18_stream** %4, align 8
  %55 = load i32, i32* @CX18_F_S_INTERNAL_USE, align 4
  %56 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %57 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %56, i32 0, i32 2
  %58 = call i64 @test_and_clear_bit(i32 %55, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %49
  %61 = load i32, i32* @CX18_F_S_CLAIMED, align 4
  %62 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %63 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %62, i32 0, i32 2
  %64 = call i32 @clear_bit(i32 %61, i32* %63)
  %65 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %66 = call i32 @cx18_flush_queues(%struct.cx18_stream* %65)
  br label %67

67:                                               ; preds = %60, %49
  %68 = load %struct.cx18*, %struct.cx18** %3, align 8
  %69 = getelementptr inbounds %struct.cx18, %struct.cx18* %68, i32 0, i32 0
  %70 = load %struct.cx18_stream*, %struct.cx18_stream** %69, align 8
  %71 = load i64, i64* @CX18_ENC_STREAM_TYPE_VBI, align 8
  %72 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %70, i64 %71
  store %struct.cx18_stream* %72, %struct.cx18_stream** %4, align 8
  %73 = load i32, i32* @CX18_F_S_INTERNAL_USE, align 4
  %74 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %75 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %74, i32 0, i32 2
  %76 = call i64 @test_and_clear_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %67
  %79 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %80 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, -1
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @CX18_F_S_CLAIMED, align 4
  %85 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %86 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %85, i32 0, i32 2
  %87 = call i32 @clear_bit(i32 %84, i32* %86)
  %88 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %89 = call i32 @cx18_flush_queues(%struct.cx18_stream* %88)
  br label %90

90:                                               ; preds = %83, %78
  br label %91

91:                                               ; preds = %15, %28, %35, %48, %90, %67
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @CX18_DEBUG_WARN(i8*, i32) #1

declare dso_local i32 @cx18_flush_queues(%struct.cx18_stream*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
