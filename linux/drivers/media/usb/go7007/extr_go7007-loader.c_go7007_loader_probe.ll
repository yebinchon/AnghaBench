; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-loader.c_go7007_loader_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-loader.c_go7007_loader_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i64, i64, i8* }
%struct.usb_interface = type { i32 }
%struct.usb_device_id = type { i32 }
%struct.usb_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"can't handle multiple config\0A\00", align 1
@fw_configs = common dso_local global %struct.TYPE_4__* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"loading firmware %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"unable to load firmware from file \22%s\22\0A\00", align 1
@CYPRESS_FX2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"loader download failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"firmware download failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"probe failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_interface*, %struct.usb_device_id*)* @go7007_loader_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @go7007_loader_probe(%struct.usb_interface* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_interface*, align 8
  %5 = alloca %struct.usb_device_id*, align 8
  %6 = alloca %struct.usb_device*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_interface* %0, %struct.usb_interface** %4, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %5, align 8
  %14 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %15 = call i32 @interface_to_usbdev(%struct.usb_interface* %14)
  %16 = call %struct.usb_device* @usb_get_dev(i32 %15)
  store %struct.usb_device* %16, %struct.usb_device** %6, align 8
  %17 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %18 = icmp ne %struct.usb_device* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %150

20:                                               ; preds = %2
  %21 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %22 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %28 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %27, i32 0, i32 0
  %29 = call i32 (i32*, i8*, ...) @dev_err(i32* %28, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %150

30:                                               ; preds = %20
  %31 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %32 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @le16_to_cpu(i32 %34)
  store i64 %35, i64* %8, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @le16_to_cpu(i32 %39)
  store i64 %40, i64* %9, align 8
  store i32 0, i32* %13, align 4
  br label %41

41:                                               ; preds = %69, %30
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fw_configs, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %41
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fw_configs, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %49
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fw_configs, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %9, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %72

68:                                               ; preds = %58, %49
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %41

72:                                               ; preds = %67, %41
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fw_configs, align 8
  %74 = load i32, i32* %13, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i8*, i8** %77, align 8
  %79 = icmp eq i8* %78, null
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %150

81:                                               ; preds = %72
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fw_configs, align 8
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  store i8* %87, i8** %10, align 8
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** @fw_configs, align 8
  %89 = load i32, i32* %13, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  store i8* %93, i8** %11, align 8
  %94 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %95 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %94, i32 0, i32 0
  %96 = load i8*, i8** %10, align 8
  %97 = call i32 @dev_info(i32* %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %96)
  %98 = load i8*, i8** %10, align 8
  %99 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %100 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %99, i32 0, i32 0
  %101 = call i64 @request_firmware(%struct.firmware** %7, i8* %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %81
  %104 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %105 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %104, i32 0, i32 0
  %106 = load i8*, i8** %10, align 8
  %107 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %106)
  br label %150

108:                                              ; preds = %81
  %109 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %110 = load %struct.firmware*, %struct.firmware** %7, align 8
  %111 = load i32, i32* @CYPRESS_FX2, align 4
  %112 = call i32 @cypress_load_firmware(%struct.usb_device* %109, %struct.firmware* %110, i32 %111)
  store i32 %112, i32* %12, align 4
  %113 = load %struct.firmware*, %struct.firmware** %7, align 8
  %114 = call i32 @release_firmware(%struct.firmware* %113)
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 0, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %119 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %118, i32 0, i32 0
  %120 = call i32 (i32*, i8*, ...) @dev_err(i32* %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %150

121:                                              ; preds = %108
  %122 = load i8*, i8** %11, align 8
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %121
  store i32 0, i32* %3, align 4
  br label %158

125:                                              ; preds = %121
  %126 = load i8*, i8** %11, align 8
  %127 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %128 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %127, i32 0, i32 0
  %129 = call i64 @request_firmware(%struct.firmware** %7, i8* %126, i32* %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %133 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %132, i32 0, i32 0
  %134 = load i8*, i8** %11, align 8
  %135 = call i32 (i32*, i8*, ...) @dev_err(i32* %133, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i8* %134)
  br label %150

136:                                              ; preds = %125
  %137 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %138 = load %struct.firmware*, %struct.firmware** %7, align 8
  %139 = load i32, i32* @CYPRESS_FX2, align 4
  %140 = call i32 @cypress_load_firmware(%struct.usb_device* %137, %struct.firmware* %138, i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load %struct.firmware*, %struct.firmware** %7, align 8
  %142 = call i32 @release_firmware(%struct.firmware* %141)
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 0, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %136
  %146 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %147 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %146, i32 0, i32 0
  %148 = call i32 (i32*, i8*, ...) @dev_err(i32* %147, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %150

149:                                              ; preds = %136
  store i32 0, i32* %3, align 4
  br label %158

150:                                              ; preds = %145, %131, %117, %103, %80, %26, %19
  %151 = load %struct.usb_device*, %struct.usb_device** %6, align 8
  %152 = call i32 @usb_put_dev(%struct.usb_device* %151)
  %153 = load %struct.usb_interface*, %struct.usb_interface** %4, align 8
  %154 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %153, i32 0, i32 0
  %155 = call i32 (i32*, i8*, ...) @dev_err(i32* %154, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %156 = load i32, i32* @ENODEV, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %150, %149, %124
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local %struct.usb_device* @usb_get_dev(i32) #1

declare dso_local i32 @interface_to_usbdev(%struct.usb_interface*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i8*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @cypress_load_firmware(%struct.usb_device*, %struct.firmware*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @usb_put_dev(%struct.usb_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
