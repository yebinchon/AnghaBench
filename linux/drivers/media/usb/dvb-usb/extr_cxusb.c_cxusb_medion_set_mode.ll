; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_medion_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_medion_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.TYPE_5__*, %struct.cxusb_state* }
%struct.TYPE_5__ = type { i32 }
%struct.cxusb_state = type { i32* }

@.str = private unnamed_addr constant [41 x i8] c"digital interface selection failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"analog interface selection failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"clear halt on IN pipe failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"clear halt on OUT pipe failed (%d)\0A\00", align 1
@CMD_DIGITAL = common dso_local global i32 0, align 4
@CMD_ANALOG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"mode switch failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, i32)* @cxusb_medion_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cxusb_medion_set_mode(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxusb_state*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %10 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %9, i32 0, i32 2
  %11 = load %struct.cxusb_state*, %struct.cxusb_state** %10, align 8
  store %struct.cxusb_state* %11, %struct.cxusb_state** %5, align 8
  %12 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %13 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %19 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = call i32 @usb_set_interface(%struct.TYPE_5__* %20, i32 0, i32 6)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %26 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %122

31:                                               ; preds = %17
  br label %47

32:                                               ; preds = %2
  %33 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %34 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = call i32 @usb_set_interface(%struct.TYPE_5__* %35, i32 0, i32 1)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  %40 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %41 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %40, i32 0, i32 1
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @dev_err(i32* %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %122

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %46, %31
  %48 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %49 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %52 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @usb_rcvbulkpipe(%struct.TYPE_5__* %53, i32 1)
  %55 = call i32 @usb_clear_halt(%struct.TYPE_5__* %50, i32 %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %47
  %59 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %60 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %58, %47
  %66 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %67 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %70 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = call i32 @usb_sndbulkpipe(%struct.TYPE_5__* %71, i32 1)
  %73 = call i32 @usb_clear_halt(%struct.TYPE_5__* %68, i32 %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %65
  %77 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %78 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @dev_warn(i32* %80, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %76, %65
  %84 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* @CMD_DIGITAL, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* @CMD_ANALOG, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @cxusb_ctrl_msg(%struct.dvb_usb_device* %84, i32 %92, i32* null, i32 0, i32* %7, i32 1)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %97, i32 0, i32 1
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @dev_err(i32* %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %122

103:                                              ; preds = %91
  store i32 0, i32* %8, align 4
  br label %104

104:                                              ; preds = %118, %103
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.cxusb_state*, %struct.cxusb_state** %5, align 8
  %107 = getelementptr inbounds %struct.cxusb_state, %struct.cxusb_state* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ARRAY_SIZE(i32* %108)
  %110 = icmp ult i32 %105, %109
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load %struct.cxusb_state*, %struct.cxusb_state** %5, align 8
  %113 = getelementptr inbounds %struct.cxusb_state, %struct.cxusb_state* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %111
  %119 = load i32, i32* %8, align 4
  %120 = add i32 %119, 1
  store i32 %120, i32* %8, align 4
  br label %104

121:                                              ; preds = %104
  br label %122

122:                                              ; preds = %121, %96, %39, %24
  %123 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %124 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %123, i32 0, i32 0
  %125 = call i32 @mutex_unlock(i32* %124)
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_set_interface(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @usb_clear_halt(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cxusb_ctrl_msg(%struct.dvb_usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
