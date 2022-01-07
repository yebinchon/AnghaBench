; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_decoder_stop_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/delta/extr_delta-v4l2.c_delta_decoder_stop_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.delta_ctx = type { i64, i32, %struct.delta_dev*, %struct.delta_dec* }
%struct.delta_dev = type { i32 }
%struct.delta_dec = type { i32 }
%struct.delta_frame = type { i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"%s EOS received\0A\00", align 1
@DELTA_STATE_READY = common dso_local global i64 0, align 8
@drain = common dso_local global i32 0, align 4
@get_frame = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"%s drain frame[%d]\0A\00", align 1
@DELTA_STATE_EOS = common dso_local global i64 0, align 8
@DELTA_STATE_WF_EOS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"%s EOS delayed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.delta_ctx*, i8*)* @delta_decoder_stop_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delta_decoder_stop_cmd(%struct.delta_ctx* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.delta_ctx*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.delta_dec*, align 8
  %7 = alloca %struct.delta_dev*, align 8
  %8 = alloca %struct.delta_frame*, align 8
  %9 = alloca i32, align 4
  store %struct.delta_ctx* %0, %struct.delta_ctx** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %10, i32 0, i32 3
  %12 = load %struct.delta_dec*, %struct.delta_dec** %11, align 8
  store %struct.delta_dec* %12, %struct.delta_dec** %6, align 8
  %13 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %14 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %13, i32 0, i32 2
  %15 = load %struct.delta_dev*, %struct.delta_dev** %14, align 8
  store %struct.delta_dev* %15, %struct.delta_dev** %7, align 8
  store %struct.delta_frame* null, %struct.delta_frame** %8, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  %17 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %20 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DELTA_STATE_READY, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %90

29:                                               ; preds = %2
  %30 = load %struct.delta_dec*, %struct.delta_dec** %6, align 8
  %31 = load i32, i32* @drain, align 4
  %32 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %33 = call i32 (%struct.delta_dec*, i32, %struct.delta_ctx*, ...) @call_dec_op(%struct.delta_dec* %30, i32 %31, %struct.delta_ctx* %32)
  br label %34

34:                                               ; preds = %29, %65
  store %struct.delta_frame* null, %struct.delta_frame** %8, align 8
  %35 = load %struct.delta_dec*, %struct.delta_dec** %6, align 8
  %36 = load i32, i32* @get_frame, align 4
  %37 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %38 = call i32 (%struct.delta_dec*, i32, %struct.delta_ctx*, ...) @call_dec_op(%struct.delta_dec* %35, i32 %36, %struct.delta_ctx* %37, %struct.delta_frame** %8)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @ENODATA, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %66

44:                                               ; preds = %34
  %45 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %46 = icmp ne %struct.delta_frame* %45, null
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  %49 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %52 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %55 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %50, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %59 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %60 = getelementptr inbounds %struct.delta_frame, %struct.delta_frame* %59, i32 0, i32 0
  %61 = call i32 @delta_pop_dts(%struct.delta_ctx* %58, i32* %60)
  %62 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %63 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %64 = call i32 @delta_frame_done(%struct.delta_ctx* %62, %struct.delta_frame* %63, i32 0)
  br label %65

65:                                               ; preds = %47, %44
  br label %34

66:                                               ; preds = %43
  %67 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %68 = call i32 @delta_get_free_frame(%struct.delta_ctx* %67, %struct.delta_frame** %8)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %79

72:                                               ; preds = %66
  %73 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %74 = load %struct.delta_frame*, %struct.delta_frame** %8, align 8
  %75 = call i32 @delta_complete_eos(%struct.delta_ctx* %73, %struct.delta_frame* %74)
  %76 = load i64, i64* @DELTA_STATE_EOS, align 8
  %77 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %78 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  store i32 0, i32* %3, align 4
  br label %90

79:                                               ; preds = %71
  %80 = load i64, i64* @DELTA_STATE_WF_EOS, align 8
  %81 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %82 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %81, i32 0, i32 0
  store i64 %80, i64* %82, align 8
  %83 = load %struct.delta_dev*, %struct.delta_dev** %7, align 8
  %84 = getelementptr inbounds %struct.delta_dev, %struct.delta_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.delta_ctx*, %struct.delta_ctx** %4, align 8
  %87 = getelementptr inbounds %struct.delta_ctx, %struct.delta_ctx* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %88)
  store i32 0, i32* %3, align 4
  br label %90

90:                                               ; preds = %79, %72, %28
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @call_dec_op(%struct.delta_dec*, i32, %struct.delta_ctx*, ...) #1

declare dso_local i32 @delta_pop_dts(%struct.delta_ctx*, i32*) #1

declare dso_local i32 @delta_frame_done(%struct.delta_ctx*, %struct.delta_frame*, i32) #1

declare dso_local i32 @delta_get_free_frame(%struct.delta_ctx*, %struct.delta_frame**) #1

declare dso_local i32 @delta_complete_eos(%struct.delta_ctx*, %struct.delta_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
