; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_firmware_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_m920x.c_m920x_firmware_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M9206_FILTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%*ph\0A\00", align 1
@M9206_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error while uploading fw!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"bad firmware file!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M9206_CORE = common dso_local global i32 0, align 4
@M9206_FW_GO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"firmware uploaded!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @m920x_firmware_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m920x_firmware_download(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 65536, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %163

21:                                               ; preds = %2
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i32* @kmalloc(i32 4, i32 %22)
  store i32* %23, i32** %9, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %163

31:                                               ; preds = %21
  %32 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %33 = load i32, i32* @M9206_FILTER, align 4
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @m920x_read(%struct.usb_device* %32, i32 %33, i32 0, i32 32768, i32* %34, i32 4)
  store i32 %35, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %157

38:                                               ; preds = %31
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 4, i32* %39)
  %41 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %42 = load i32, i32* @M9206_FW, align 4
  %43 = load i32*, i32** %9, align 8
  %44 = call i32 @m920x_read(%struct.usb_device* %41, i32 %42, i32 0, i32 0, i32* %43, i32 1)
  store i32 %44, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %157

47:                                               ; preds = %38
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  store i32 0, i32* %12, align 4
  br label %52

52:                                               ; preds = %147, %47
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 2
  br i1 %54, label %55, label %150

55:                                               ; preds = %52
  store i32 0, i32* %11, align 4
  br label %56

56:                                               ; preds = %132, %55
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, 12
  %60 = load %struct.firmware*, %struct.firmware** %5, align 8
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp ult i64 %59, %63
  br i1 %64, label %65, label %136

65:                                               ; preds = %56
  %66 = load %struct.firmware*, %struct.firmware** %5, align 8
  %67 = getelementptr inbounds %struct.firmware, %struct.firmware* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = call i32 @get_unaligned_le16(i64 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %11, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 4
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %11, align 4
  %77 = load %struct.firmware*, %struct.firmware** %5, align 8
  %78 = getelementptr inbounds %struct.firmware, %struct.firmware* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = call i32 @get_unaligned_le16(i64 %82)
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %11, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 %85, 4
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %11, align 4
  %88 = load %struct.firmware*, %struct.firmware** %5, align 8
  %89 = getelementptr inbounds %struct.firmware, %struct.firmware* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %90, %92
  %94 = call i32 @get_unaligned_le16(i64 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %11, align 4
  %96 = sext i32 %95 to i64
  %97 = add i64 %96, 4
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %132

101:                                              ; preds = %65
  %102 = load i32*, i32** %10, align 8
  %103 = load %struct.firmware*, %struct.firmware** %5, align 8
  %104 = getelementptr inbounds %struct.firmware, %struct.firmware* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %105, %107
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @memcpy(i32* %102, i64 %108, i32 %109)
  %111 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %112 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %113 = call i32 @usb_sndctrlpipe(%struct.usb_device* %112, i32 0)
  %114 = load i32, i32* @M9206_FW, align 4
  %115 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %116 = load i32, i32* @USB_DIR_OUT, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32*, i32** %10, align 8
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @usb_control_msg(%struct.usb_device* %111, i32 %113, i32 %114, i32 %117, i32 %118, i32 %119, i32* %120, i32 %121, i32 20)
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %13, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %123, %124
  br i1 %125, label %126, label %130

126:                                              ; preds = %101
  %127 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %128 = load i32, i32* @EIO, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %13, align 4
  br label %157

130:                                              ; preds = %101
  %131 = call i32 @msleep(i32 3)
  br label %132

132:                                              ; preds = %130, %65
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %11, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %11, align 4
  br label %56

136:                                              ; preds = %56
  %137 = load i32, i32* %11, align 4
  %138 = load %struct.firmware*, %struct.firmware** %5, align 8
  %139 = getelementptr inbounds %struct.firmware, %struct.firmware* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %137, %140
  br i1 %141, label %142, label %146

142:                                              ; preds = %136
  %143 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %13, align 4
  br label %157

146:                                              ; preds = %136
  br label %147

147:                                              ; preds = %146
  %148 = load i32, i32* %12, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %12, align 4
  br label %52

150:                                              ; preds = %52
  %151 = call i32 @msleep(i32 36)
  %152 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %153 = load i32, i32* @M9206_CORE, align 4
  %154 = load i32, i32* @M9206_FW_GO, align 4
  %155 = call i32 @m920x_write(%struct.usb_device* %152, i32 %153, i32 1, i32 %154)
  %156 = call i32 (i8*, ...) @deb(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %157

157:                                              ; preds = %150, %142, %126, %46, %37
  %158 = load i32*, i32** %9, align 8
  %159 = call i32 @kfree(i32* %158)
  %160 = load i32*, i32** %10, align 8
  %161 = call i32 @kfree(i32* %160)
  %162 = load i32, i32* %13, align 4
  store i32 %162, i32* %3, align 4
  br label %163

163:                                              ; preds = %157, %26, %18
  %164 = load i32, i32* %3, align 4
  ret i32 %164
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @m920x_read(%struct.usb_device*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @deb(i8*, ...) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @m920x_write(%struct.usb_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
