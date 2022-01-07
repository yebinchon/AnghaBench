; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_upload_firmware1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-hdw.c_pvr2_upload_firmware1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.firmware = type { i32, i64 }

@FW1_STATE_OK = common dso_local global i32 0, align 4
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"Connected device type defines no firmware to upload; ignoring firmware\00", align 1
@ENOTTY = common dso_local global i32 0, align 4
@FW1_STATE_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"pvr2_upload_firmware1\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"fx2 controller\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@FW1_STATE_MISSING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [57 x i8] c"Wrong fx2 firmware size (expected 8192 or 16384, got %u)\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"Wrong fx2 firmware size (expected 8192, got %u)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"Upload done, releasing device's CPU\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"Upload done (%d bytes sent)\00", align 1
@FW1_STATE_RELOAD = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_hdw*)* @pvr2_upload_firmware1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pvr2_upload_firmware1(%struct.pvr2_hdw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store %struct.firmware* null, %struct.firmware** %4, align 8
  %10 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %11 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @FW1_STATE_OK, align 4
  %19 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %20 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %22 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %21, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOTTY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %166

25:                                               ; preds = %1
  %26 = load i32, i32* @FW1_STATE_FAILED, align 4
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %28 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = call i32 (i8*, ...) @trace_firmware(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %31 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %32 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %38 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %37, i32 0, i32 2
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pvr2_locate_firmware(%struct.pvr2_hdw* %30, %struct.firmware** %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %36, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %25
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ENOENT, align 4
  %49 = sub nsw i32 0, %48
  %50 = icmp eq i32 %47, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @FW1_STATE_MISSING, align 4
  %53 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %54 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %55

55:                                               ; preds = %51, %46
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %2, align 4
  br label %166

57:                                               ; preds = %25
  %58 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %59 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %62 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_sndbulkpipe(i32 %63, i32 0)
  %65 = call i32 @usb_clear_halt(i32 %60, i32 %64)
  %66 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %67 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @usb_sndctrlpipe(i32 %68, i32 0)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.firmware*, %struct.firmware** %4, align 8
  %71 = getelementptr inbounds %struct.firmware, %struct.firmware* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %73, 8192
  br i1 %74, label %75, label %105

75:                                               ; preds = %57
  %76 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %77 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %76, i32 0, i32 2
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 16384
  br i1 %84, label %105, label %85

85:                                               ; preds = %82, %75
  %86 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %87 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %86, i32 0, i32 2
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %85
  %93 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %93, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  br label %100

96:                                               ; preds = %85
  %97 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %98 = load i32, i32* %7, align 4
  %99 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %97, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i32 %98)
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.firmware*, %struct.firmware** %4, align 8
  %102 = call i32 @release_firmware(%struct.firmware* %101)
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %166

105:                                              ; preds = %82, %57
  %106 = load i32, i32* @GFP_KERNEL, align 4
  %107 = call i8* @kmalloc(i32 2048, i32 %106)
  store i8* %107, i8** %5, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %115

110:                                              ; preds = %105
  %111 = load %struct.firmware*, %struct.firmware** %4, align 8
  %112 = call i32 @release_firmware(%struct.firmware* %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %2, align 4
  br label %166

115:                                              ; preds = %105
  %116 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %117 = call i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw* %116, i32 1)
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %118

118:                                              ; preds = %143, %115
  %119 = load i32, i32* %9, align 4
  %120 = load i32, i32* %7, align 4
  %121 = icmp ult i32 %119, %120
  br i1 %121, label %122, label %146

122:                                              ; preds = %118
  %123 = load i8*, i8** %5, align 8
  %124 = load %struct.firmware*, %struct.firmware** %4, align 8
  %125 = getelementptr inbounds %struct.firmware, %struct.firmware* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = zext i32 %127 to i64
  %129 = add nsw i64 %126, %128
  %130 = call i32 @memcpy(i8* %123, i64 %129, i32 2048)
  %131 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %132 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* %6, align 4
  %135 = load i32, i32* %9, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = load i32, i32* @HZ, align 4
  %138 = call i64 @usb_control_msg(i32 %133, i32 %134, i32 160, i32 64, i32 %135, i32 0, i8* %136, i32 2048, i32 %137)
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %140, %138
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %122
  %144 = load i32, i32* %9, align 4
  %145 = add i32 %144, 2048
  store i32 %145, i32* %9, align 4
  br label %118

146:                                              ; preds = %118
  %147 = call i32 (i8*, ...) @trace_firmware(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %148 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %149 = call i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw* %148, i32 0)
  %150 = load i8*, i8** %5, align 8
  %151 = call i32 @kfree(i8* %150)
  %152 = load %struct.firmware*, %struct.firmware** %4, align 8
  %153 = call i32 @release_firmware(%struct.firmware* %152)
  %154 = load i32, i32* %8, align 4
  %155 = call i32 (i8*, ...) @trace_firmware(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %154)
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %146
  %160 = load i32, i32* @FW1_STATE_RELOAD, align 4
  %161 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %162 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  store i32 0, i32* %2, align 4
  br label %166

163:                                              ; preds = %146
  %164 = load i32, i32* @EIO, align 4
  %165 = sub nsw i32 0, %164
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %163, %159, %110, %100, %55, %17
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @trace_firmware(i8*, ...) #1

declare dso_local i32 @pvr2_locate_firmware(%struct.pvr2_hdw*, %struct.firmware**, i8*, i32, i32) #1

declare dso_local i32 @usb_clear_halt(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @pvr2_hdw_cpureset_assert(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @memcpy(i8*, i64, i32) #1

declare dso_local i64 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
