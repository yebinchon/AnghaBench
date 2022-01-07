; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx18 = type { i64, i32, i64, i64, i64, i64, %struct.cx18_stream*, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32 }
%struct.cx18_stream = type { i32, i32, i32, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.v4l2_input = type { i32 }
%struct.v4l2_audio = type { i32 }
%struct.tveeprom = type { i32 }
%struct.TYPE_10__ = type { %struct.cx18* }

@.str = private unnamed_addr constant [23 x i8] c"Version: %s  Card: %s\0A\00", align 1
@CX18_VERSION = common dso_local global i64 0, align 8
@CX18_HW_TVEEPROM = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@log_status = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"Video Input: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Audio Input: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"GPIO:  direction 0x%08x, value 0x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Tuner: %s\0A\00", align 1
@CX18_F_I_RADIO_USER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"Radio\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"TV\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Status flags: 0x%08lx\0A\00", align 1
@CX18_MAX_STREAMS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [63 x i8] c"Stream %s: status 0x%04lx, %d%% of %d KiB (%d buffers) in use\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Read MPEG/VBI: %lld/%lld bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*)* @cx18_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_log_status(%struct.file* %0, i8* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca %struct.v4l2_input, align 4
  %7 = alloca %struct.v4l2_audio, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tveeprom, align 4
  %10 = alloca %struct.cx18_stream*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = call %struct.TYPE_10__* @fh2id(i8* %11)
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load %struct.cx18*, %struct.cx18** %13, align 8
  store %struct.cx18* %14, %struct.cx18** %5, align 8
  %15 = load i64, i64* @CX18_VERSION, align 8
  %16 = load %struct.cx18*, %struct.cx18** %5, align 8
  %17 = getelementptr inbounds %struct.cx18, %struct.cx18* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %15, i64 %18)
  %20 = load %struct.cx18*, %struct.cx18** %5, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CX18_HW_TVEEPROM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.cx18*, %struct.cx18** %5, align 8
  %28 = call i32 @cx18_read_eeprom(%struct.cx18* %27, %struct.tveeprom* %9)
  br label %29

29:                                               ; preds = %26, %2
  %30 = load %struct.cx18*, %struct.cx18** %5, align 8
  %31 = load i32, i32* @core, align 4
  %32 = load i32, i32* @log_status, align 4
  %33 = call i32 @cx18_call_all(%struct.cx18* %30, i32 %31, i32 %32)
  %34 = load %struct.cx18*, %struct.cx18** %5, align 8
  %35 = load %struct.cx18*, %struct.cx18** %5, align 8
  %36 = getelementptr inbounds %struct.cx18, %struct.cx18* %35, i32 0, i32 12
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @cx18_get_input(%struct.cx18* %34, i32 %37, %struct.v4l2_input* %6)
  %39 = load %struct.cx18*, %struct.cx18** %5, align 8
  %40 = load %struct.cx18*, %struct.cx18** %5, align 8
  %41 = getelementptr inbounds %struct.cx18, %struct.cx18* %40, i32 0, i32 11
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @cx18_get_audio_input(%struct.cx18* %39, i32 %42, %struct.v4l2_audio* %7)
  %44 = getelementptr inbounds %struct.v4l2_input, %struct.v4l2_input* %6, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %7, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load %struct.cx18*, %struct.cx18** %5, align 8
  %51 = getelementptr inbounds %struct.cx18, %struct.cx18* %50, i32 0, i32 10
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.cx18*, %struct.cx18** %5, align 8
  %54 = getelementptr inbounds %struct.cx18, %struct.cx18* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.cx18*, %struct.cx18** %5, align 8
  %57 = getelementptr inbounds %struct.cx18, %struct.cx18* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i64 %55, i64 %58)
  %60 = load %struct.cx18*, %struct.cx18** %5, align 8
  %61 = getelementptr inbounds %struct.cx18, %struct.cx18* %60, i32 0, i32 10
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* @CX18_F_I_RADIO_USER, align 4
  %64 = load %struct.cx18*, %struct.cx18** %5, align 8
  %65 = getelementptr inbounds %struct.cx18, %struct.cx18* %64, i32 0, i32 7
  %66 = call i64 @test_bit(i32 %63, i32* %65)
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0)
  %70 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %69)
  %71 = load %struct.cx18*, %struct.cx18** %5, align 8
  %72 = getelementptr inbounds %struct.cx18, %struct.cx18* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load %struct.cx18*, %struct.cx18** %5, align 8
  %75 = getelementptr inbounds %struct.cx18, %struct.cx18* %74, i32 0, i32 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @v4l2_ctrl_handler_log_status(i32* %73, i32 %77)
  %79 = load %struct.cx18*, %struct.cx18** %5, align 8
  %80 = getelementptr inbounds %struct.cx18, %struct.cx18* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %81)
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %137, %29
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @CX18_MAX_STREAMS, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %140

87:                                               ; preds = %83
  %88 = load %struct.cx18*, %struct.cx18** %5, align 8
  %89 = getelementptr inbounds %struct.cx18, %struct.cx18* %88, i32 0, i32 6
  %90 = load %struct.cx18_stream*, %struct.cx18_stream** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %90, i64 %92
  store %struct.cx18_stream* %93, %struct.cx18_stream** %10, align 8
  %94 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %95 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp eq i32* %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %87
  %100 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %101 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %87
  br label %137

105:                                              ; preds = %99
  %106 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %107 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %110 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %113 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = call i32 @atomic_read(i32* %114)
  %116 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %117 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = mul nsw i32 %119, 100
  %121 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %122 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sdiv i32 %120, %123
  %125 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %126 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %129 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = mul nsw i32 %127, %130
  %132 = sdiv i32 %131, 1024
  %133 = load %struct.cx18_stream*, %struct.cx18_stream** %10, align 8
  %134 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.8, i64 0, i64 0), i32 %108, i32 %111, i32 %124, i32 %132, i32 %135)
  br label %137

137:                                              ; preds = %105, %104
  %138 = load i32, i32* %8, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %8, align 4
  br label %83

140:                                              ; preds = %83
  %141 = load %struct.cx18*, %struct.cx18** %5, align 8
  %142 = getelementptr inbounds %struct.cx18, %struct.cx18* %141, i32 0, i32 5
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.cx18*, %struct.cx18** %5, align 8
  %145 = getelementptr inbounds %struct.cx18, %struct.cx18* %144, i32 0, i32 4
  %146 = load i64, i64* %145, align 8
  %147 = call i32 (i8*, ...) @CX18_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i64 %143, i64 %146)
  ret i32 0
}

declare dso_local %struct.TYPE_10__* @fh2id(i8*) #1

declare dso_local i32 @CX18_INFO(i8*, ...) #1

declare dso_local i32 @cx18_read_eeprom(%struct.cx18*, %struct.tveeprom*) #1

declare dso_local i32 @cx18_call_all(%struct.cx18*, i32, i32) #1

declare dso_local i32 @cx18_get_input(%struct.cx18*, i32, %struct.v4l2_input*) #1

declare dso_local i32 @cx18_get_audio_input(%struct.cx18*, i32, %struct.v4l2_audio*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @v4l2_ctrl_handler_log_status(i32*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
