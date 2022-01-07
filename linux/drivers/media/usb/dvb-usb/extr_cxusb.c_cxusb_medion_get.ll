; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_medion_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb.c_cxusb_medion_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { %struct.TYPE_2__*, %struct.cxusb_medion_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.cxusb_medion_dev = type { i64, i32, i32 }

@CXUSB_OPEN_INIT = common dso_local global i64 0, align 8
@CXUSB_OPEN_NONE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"will acquire and switch to %s\0A\00", align 1
@CXUSB_OPEN_ANALOG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"analog\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"powerup for analog switch failed (%d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"powerup for digital switch failed (%d)\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"reacquired idle %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"acquired %s\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxusb_medion_get(%struct.dvb_usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.dvb_usb_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cxusb_medion_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %7, i32 0, i32 1
  %9 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %8, align 8
  store %struct.cxusb_medion_dev* %9, %struct.cxusb_medion_dev** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %11 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %14 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @CXUSB_OPEN_INIT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %20 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CXUSB_OPEN_NONE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18, %2
  %25 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %26 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %24, %18
  %30 = phi i1 [ false, %18 ], [ %28, %24 ]
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %6, align 4
  br label %150

37:                                               ; preds = %29
  %38 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %39 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CXUSB_OPEN_INIT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %150

46:                                               ; preds = %37
  %47 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %48 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %127

51:                                               ; preds = %46
  %52 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %53 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i32, i32* %4, align 4
  %56 = zext i32 %55 to i64
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %58, label %117

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @CXUSB_OPEN_ANALOG, align 4
  %61 = icmp eq i32 %59, %60
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %64 = call i32 @deb_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @CXUSB_OPEN_ANALOG, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %93

68:                                               ; preds = %58
  %69 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %70 = call i32 @_cxusb_power_ctrl(%struct.dvb_usb_device* %69, i32 1)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %75 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @dev_warn(i32* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %73, %68
  %81 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %82 = call i32 @cxusb_medion_set_mode(%struct.dvb_usb_device* %81, i32 0)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %150

86:                                               ; preds = %80
  %87 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %88 = call i32 @cxusb_medion_analog_init(%struct.dvb_usb_device* %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %150

92:                                               ; preds = %86
  br label %112

93:                                               ; preds = %58
  %94 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %95 = call i32 @_cxusb_power_ctrl(%struct.dvb_usb_device* %94, i32 1)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %93
  %99 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %100 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @dev_warn(i32* %102, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %98, %93
  %106 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %107 = call i32 @cxusb_medion_set_mode(%struct.dvb_usb_device* %106, i32 1)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %150

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %116 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %115, i32 0, i32 0
  store i64 %114, i64* %116, align 8
  br label %124

117:                                              ; preds = %51
  %118 = load i32, i32* %4, align 4
  %119 = load i32, i32* @CXUSB_OPEN_ANALOG, align 4
  %120 = icmp eq i32 %118, %119
  %121 = zext i1 %120 to i64
  %122 = select i1 %120, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %123 = call i32 @deb_info(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i8* %122)
  br label %124

124:                                              ; preds = %117, %112
  %125 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %126 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %125, i32 0, i32 1
  store i32 1, i32* %126, align 8
  br label %149

127:                                              ; preds = %46
  %128 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %129 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = zext i32 %131 to i64
  %133 = icmp eq i64 %130, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %136 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 8
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @CXUSB_OPEN_ANALOG, align 4
  %141 = icmp eq i32 %139, %140
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %144 = call i32 @deb_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %143)
  br label %148

145:                                              ; preds = %127
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %6, align 4
  br label %148

148:                                              ; preds = %145, %134
  br label %149

149:                                              ; preds = %148, %124
  br label %150

150:                                              ; preds = %149, %110, %91, %85, %43, %34
  %151 = load %struct.cxusb_medion_dev*, %struct.cxusb_medion_dev** %5, align 8
  %152 = getelementptr inbounds %struct.cxusb_medion_dev, %struct.cxusb_medion_dev* %151, i32 0, i32 2
  %153 = call i32 @mutex_unlock(i32* %152)
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @deb_info(i8*, i8*) #1

declare dso_local i32 @_cxusb_power_ctrl(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @cxusb_medion_set_mode(%struct.dvb_usb_device*, i32) #1

declare dso_local i32 @cxusb_medion_analog_init(%struct.dvb_usb_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
