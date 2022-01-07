; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_remote_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_legacy_dvb_usb_remote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32, %struct.TYPE_11__, i32*, %struct.input_dev*, %struct.TYPE_12__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.input_dev = type { i8*, i32*, i32, i32, i32, %struct.TYPE_7__, i32, i32, i32* }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"IR-receiver inside an USB DVB receiver\00", align 1
@legacy_dvb_usb_getkeycode = common dso_local global i32 0, align 4
@legacy_dvb_usb_setkeycode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"key map size: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"setting bit for event %d item %d\0A\00", align 1
@REP_PERIOD = common dso_local global i64 0, align 8
@REP_DELAY = common dso_local global i64 0, align 8
@legacy_dvb_usb_read_remote_control = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"schedule remote query interval to %d msecs.\00", align 1
@DVB_USB_STATE_REMOTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @legacy_dvb_usb_remote_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @legacy_dvb_usb_remote_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.input_dev*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %8 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %8, %struct.input_dev** %7, align 8
  %9 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %10 = icmp ne %struct.input_dev* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %158

14:                                               ; preds = %1
  %15 = load i32, i32* @EV_KEY, align 4
  %16 = call i32 @BIT_MASK(i32 %15)
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 8
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 0
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %22, align 8
  %23 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %24 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 4
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 5
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 6
  %33 = call i32 @usb_to_input_id(%struct.TYPE_12__* %30, i32* %32)
  %34 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %35 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %34, i32 0, i32 5
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %39 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32* %37, i32** %40, align 8
  %41 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %42 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %43 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %42, i32 0, i32 4
  store %struct.input_dev* %41, %struct.input_dev** %43, align 8
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 3
  store i32* null, i32** %45, align 8
  %46 = load i32, i32* @legacy_dvb_usb_getkeycode, align 4
  %47 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %48 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @legacy_dvb_usb_setkeycode, align 4
  %50 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %51 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, ...) @deb_rc(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %97, %14
  %60 = load i32, i32* %4, align 4
  %61 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %62 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %60, %66
  br i1 %67, label %68, label %100

68:                                               ; preds = %59
  %69 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %70 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 2
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i8*, i32, ...) @deb_rc(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %83 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = load i32, i32* %4, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %94 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @set_bit(i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %68
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %59

100:                                              ; preds = %59
  %101 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %102 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @REP_PERIOD, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %106, i32* %111, align 4
  %112 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %113 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 150
  %119 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %120 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %119, i32 0, i32 1
  %121 = load i32*, i32** %120, align 8
  %122 = load i64, i64* @REP_DELAY, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  store i32 %118, i32* %123, align 4
  %124 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %125 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %126 = call i32 @input_set_drvdata(%struct.input_dev* %124, %struct.dvb_usb_device* %125)
  %127 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %128 = call i32 @input_register_device(%struct.input_dev* %127)
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %100
  %132 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %133 = call i32 @input_free_device(%struct.input_dev* %132)
  br label %134

134:                                              ; preds = %131, %100
  %135 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %136 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  store i32 %140, i32* %6, align 4
  %141 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %142 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %141, i32 0, i32 1
  %143 = load i32, i32* @legacy_dvb_usb_read_remote_control, align 4
  %144 = call i32 @INIT_DELAYED_WORK(i32* %142, i32 %143)
  %145 = load i32, i32* %6, align 4
  %146 = call i32 @info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  %147 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %148 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %147, i32 0, i32 1
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @msecs_to_jiffies(i32 %149)
  %151 = call i32 @schedule_delayed_work(i32* %148, i32 %150)
  %152 = load i32, i32* @DVB_USB_STATE_REMOTE, align 4
  %153 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %154 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = or i32 %155, %152
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* %5, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %134, %11
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @BIT_MASK(i32) #1

declare dso_local i32 @usb_to_input_id(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @deb_rc(i8*, i32, ...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.dvb_usb_device*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @info(i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
