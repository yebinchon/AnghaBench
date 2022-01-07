; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-eeprom.c_pvr2_eeprom_analyze.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-eeprom.c_pvr2_eeprom_analyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, i32, i32 }
%struct.tveeprom = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"eeprom assumed v4l tveeprom module\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"eeprom direct call results:\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"has_radio=%d\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"tuner_type=%d\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"tuner_formats=0x%x\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"audio_processor=%d\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"model=%d\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"revision=%d\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"serial_number=%d\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"rev_str=%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pvr2_eeprom_analyze(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.tveeprom, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  %6 = call i32 @memset(%struct.tveeprom* %5, i32 0, i32 32)
  %7 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %8 = call i32* @pvr2_eeprom_fetch(%struct.pvr2_hdw* %7)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %59

14:                                               ; preds = %1
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @tveeprom_hauppauge_analog(%struct.tveeprom* %5, i32* %15)
  %17 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %18 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %20)
  %22 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i32 %26)
  %28 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 6
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %29)
  %31 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 5
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i32 %32)
  %34 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %35)
  %37 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %38)
  %40 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @trace_eeprom(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32 %41)
  %43 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %46 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 4
  %47 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %48 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %47, i32 0, i32 0
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %52 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 4
  %53 = getelementptr inbounds %struct.tveeprom, %struct.tveeprom* %5, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %56 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = call i32 @kfree(i32* %57)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %14, %11
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @memset(%struct.tveeprom*, i32, i32) #1

declare dso_local i32* @pvr2_eeprom_fetch(%struct.pvr2_hdw*) #1

declare dso_local i32 @tveeprom_hauppauge_analog(%struct.tveeprom*, i32*) #1

declare dso_local i32 @trace_eeprom(i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
