; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_rc_core_dvb_usb_remote_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_dvb-usb-remote.c_rc_core_dvb_usb_remote_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, %struct.TYPE_11__, %struct.rc_dev*, i32*, %struct.TYPE_12__*, i32, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.rc_dev = type { i32, %struct.dvb_usb_device*, %struct.TYPE_8__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@dvb_usb_read_remote_control = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"schedule remote query interval to %d msecs.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*)* @rc_core_dvb_usb_remote_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_core_dvb_usb_remote_init(%struct.dvb_usb_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rc_dev*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 8
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.rc_dev* @rc_allocate_device(i32 %12)
  store %struct.rc_dev* %13, %struct.rc_dev** %6, align 8
  %14 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %15 = icmp ne %struct.rc_dev* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %136

19:                                               ; preds = %1
  %20 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 7
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %27 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %26, i32 0, i32 9
  store i32 %25, i32* %27, align 8
  %28 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %29 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %35 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %37 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %43 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 8
  %44 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %45 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %51 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %50, i32 0, i32 6
  store i32 %49, i32* %51, align 4
  %52 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %53 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %52, i32 0, i32 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %56 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %55, i32 0, i32 5
  %57 = call i32 @usb_to_input_id(%struct.TYPE_12__* %54, i32* %56)
  %58 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %59 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %58, i32 0, i32 6
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %64 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %63, i32 0, i32 4
  store i32 %62, i32* %64, align 4
  %65 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %66 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %69 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %68, i32 0, i32 3
  store i32 %67, i32* %69, align 8
  %70 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %71 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %70, i32 0, i32 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %75 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  %77 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %78 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %79 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %78, i32 0, i32 1
  store %struct.dvb_usb_device* %77, %struct.dvb_usb_device** %79, align 8
  %80 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %81 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %87 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %89 = call i32 @rc_register_device(%struct.rc_dev* %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* %4, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %19
  %93 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %94 = call i32 @rc_free_device(%struct.rc_dev* %93)
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %136

96:                                               ; preds = %19
  %97 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %98 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %97, i32 0, i32 3
  store i32* null, i32** %98, align 8
  %99 = load %struct.rc_dev*, %struct.rc_dev** %6, align 8
  %100 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %101 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %100, i32 0, i32 2
  store %struct.rc_dev* %99, %struct.rc_dev** %101, align 8
  %102 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %103 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %96
  %110 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %111 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %109, %96
  store i32 0, i32* %2, align 4
  br label %136

118:                                              ; preds = %109
  %119 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %120 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %119, i32 0, i32 0
  %121 = load i32, i32* @dvb_usb_read_remote_control, align 4
  %122 = call i32 @INIT_DELAYED_WORK(i32* %120, i32 %121)
  %123 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %124 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* %5, align 4
  %130 = call i32 @info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %129)
  %131 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %132 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %131, i32 0, i32 0
  %133 = load i32, i32* %5, align 4
  %134 = call i32 @msecs_to_jiffies(i32 %133)
  %135 = call i32 @schedule_delayed_work(i32* %132, i32 %134)
  store i32 0, i32* %2, align 4
  br label %136

136:                                              ; preds = %118, %117, %92, %16
  %137 = load i32, i32* %2, align 4
  ret i32 %137
}

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @usb_to_input_id(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

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
