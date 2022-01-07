; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_serialized_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-fileops.c_cx18_serialized_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { i64, i32, i32, %struct.cx18* }
%struct.cx18 = type { i32, i32, i32 }
%struct.file = type { i32* }
%struct.cx18_open_id = type { i64, i32, i64, %struct.cx18* }

@.str = private unnamed_addr constant [9 x i8] c"open %s\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"nomem on v4l2 open\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CX18_ENC_STREAM_TYPE_RAD = common dso_local global i64 0, align 8
@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_radio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18_stream*, %struct.file*)* @cx18_serialized_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_serialized_open(%struct.cx18_stream* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx18_stream*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca %struct.cx18_open_id*, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %9 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %8, i32 0, i32 3
  %10 = load %struct.cx18*, %struct.cx18** %9, align 8
  store %struct.cx18* %10, %struct.cx18** %6, align 8
  %11 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %12 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @CX18_DEBUG_FILE(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cx18_open_id* @kzalloc(i32 32, i32 %15)
  store %struct.cx18_open_id* %16, %struct.cx18_open_id** %7, align 8
  %17 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %18 = icmp eq %struct.cx18_open_id* null, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = call i32 @CX18_DEBUG_WARN(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %99

23:                                               ; preds = %2
  %24 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %25 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %24, i32 0, i32 1
  %26 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %27 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %26, i32 0, i32 1
  %28 = call i32 @v4l2_fh_init(i32* %25, i32* %27)
  %29 = load %struct.cx18*, %struct.cx18** %6, align 8
  %30 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %31 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %30, i32 0, i32 3
  store %struct.cx18* %29, %struct.cx18** %31, align 8
  %32 = load %struct.cx18_stream*, %struct.cx18_stream** %4, align 8
  %33 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %36 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  %37 = load %struct.cx18*, %struct.cx18** %6, align 8
  %38 = getelementptr inbounds %struct.cx18, %struct.cx18* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = sext i32 %39 to i64
  %42 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %43 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  %44 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %45 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %44, i32 0, i32 1
  %46 = load %struct.file*, %struct.file** %5, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %49 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %48, i32 0, i32 1
  %50 = call i32 @v4l2_fh_add(i32* %49)
  %51 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %52 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @CX18_ENC_STREAM_TYPE_RAD, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %98

56:                                               ; preds = %23
  %57 = load %struct.file*, %struct.file** %5, align 8
  %58 = call i64 @v4l2_fh_is_singular_file(%struct.file* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %56
  %61 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %62 = load %struct.cx18*, %struct.cx18** %6, align 8
  %63 = getelementptr inbounds %struct.cx18, %struct.cx18* %62, i32 0, i32 0
  %64 = call i32 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %83, label %66

66:                                               ; preds = %60
  %67 = load %struct.cx18*, %struct.cx18** %6, align 8
  %68 = getelementptr inbounds %struct.cx18, %struct.cx18* %67, i32 0, i32 1
  %69 = call i64 @atomic_read(i32* %68)
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %82

71:                                               ; preds = %66
  %72 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %73 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %72, i32 0, i32 1
  %74 = call i32 @v4l2_fh_del(i32* %73)
  %75 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %76 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %75, i32 0, i32 1
  %77 = call i32 @v4l2_fh_exit(i32* %76)
  %78 = load %struct.cx18_open_id*, %struct.cx18_open_id** %7, align 8
  %79 = call i32 @kfree(%struct.cx18_open_id* %78)
  %80 = load i32, i32* @EBUSY, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %3, align 4
  br label %99

82:                                               ; preds = %66
  br label %83

83:                                               ; preds = %82, %60
  %84 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %85 = load %struct.cx18*, %struct.cx18** %6, align 8
  %86 = getelementptr inbounds %struct.cx18, %struct.cx18* %85, i32 0, i32 0
  %87 = call i32 @set_bit(i32 %84, i32* %86)
  %88 = load %struct.cx18*, %struct.cx18** %6, align 8
  %89 = call i32 @cx18_mute(%struct.cx18* %88)
  %90 = load %struct.cx18*, %struct.cx18** %6, align 8
  %91 = load i32, i32* @tuner, align 4
  %92 = load i32, i32* @s_radio, align 4
  %93 = call i32 @cx18_call_all(%struct.cx18* %90, i32 %91, i32 %92)
  %94 = load %struct.cx18*, %struct.cx18** %6, align 8
  %95 = call i32 @cx18_audio_set_io(%struct.cx18* %94)
  %96 = load %struct.cx18*, %struct.cx18** %6, align 8
  %97 = call i32 @cx18_unmute(%struct.cx18* %96)
  br label %98

98:                                               ; preds = %83, %56, %23
  store i32 0, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %71, %19
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @CX18_DEBUG_FILE(i8*, i32) #1

declare dso_local %struct.cx18_open_id* @kzalloc(i32, i32) #1

declare dso_local i32 @CX18_DEBUG_WARN(i8*) #1

declare dso_local i32 @v4l2_fh_init(i32*, i32*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

declare dso_local i64 @v4l2_fh_is_singular_file(%struct.file*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.cx18_open_id*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cx18_mute(%struct.cx18*) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_audio_set_io(%struct.cx18*) #1

declare dso_local i32 @cx18_unmute(%struct.cx18*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
