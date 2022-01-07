; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_dvb_usb_nec_rc_key_to_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_dvb_usb_nec_rc_key_to_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.rc_map_table* }
%struct.rc_map_table = type { i64 }

@REMOTE_NO_KEY_PRESSED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"remote control checksum failed.\0A\00", align 1
@REMOTE_KEY_PRESSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"key mapping failed - no appropriate key found in keymapping\0A\00", align 1
@REMOTE_KEY_REPEAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"unknown type of remote status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dvb_usb_nec_rc_key_to_event(%struct.dvb_usb_device* %0, i32* %1, i64* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_usb_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.rc_map_table*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.rc_map_table*, %struct.rc_map_table** %16, align 8
  store %struct.rc_map_table* %17, %struct.rc_map_table** %11, align 8
  %18 = load i64*, i64** %8, align 8
  store i64 0, i64* %18, align 8
  %19 = load i32, i32* @REMOTE_NO_KEY_PRESSED, align 4
  %20 = load i32*, i32** %9, align 8
  store i32 %19, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %94 [
    i32 130, label %24
    i32 129, label %25
    i32 128, label %91
  ]

24:                                               ; preds = %4
  br label %99

25:                                               ; preds = %4
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = xor i32 %28, -1
  %30 = load i32*, i32** %7, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %43, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  %37 = load i32, i32* %36, align 4
  %38 = xor i32 %37, -1
  %39 = load i32*, i32** %7, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 4
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %34, %25
  %44 = call i32 (i8*, ...) @deb_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %99

45:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %46

46:                                               ; preds = %86, %45
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %6, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %47, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %46
  %56 = load %struct.rc_map_table*, %struct.rc_map_table** %11, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %56, i64 %58
  %60 = call i32 @rc5_custom(%struct.rc_map_table* %59)
  %61 = load i32*, i32** %7, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %85

65:                                               ; preds = %55
  %66 = load %struct.rc_map_table*, %struct.rc_map_table** %11, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %66, i64 %68
  %70 = call i32 @rc5_data(%struct.rc_map_table* %69)
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %65
  %76 = load %struct.rc_map_table*, %struct.rc_map_table** %11, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %76, i64 %78
  %80 = getelementptr inbounds %struct.rc_map_table, %struct.rc_map_table* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64*, i64** %8, align 8
  store i64 %81, i64* %82, align 8
  %83 = load i32, i32* @REMOTE_KEY_PRESSED, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  store i32 0, i32* %5, align 4
  br label %100

85:                                               ; preds = %65, %55
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %46

89:                                               ; preds = %46
  %90 = call i32 (i8*, ...) @deb_err(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %99

91:                                               ; preds = %4
  %92 = load i32, i32* @REMOTE_KEY_REPEAT, align 4
  %93 = load i32*, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  br label %99

94:                                               ; preds = %4
  %95 = load i32*, i32** %7, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i8*, ...) @deb_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %97)
  br label %99

99:                                               ; preds = %94, %91, %89, %43, %24
  store i32 0, i32* %5, align 4
  br label %100

100:                                              ; preds = %99, %75
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i32 @deb_err(i8*, ...) #1

declare dso_local i32 @rc5_custom(%struct.rc_map_table*) #1

declare dso_local i32 @rc5_data(%struct.rc_map_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
