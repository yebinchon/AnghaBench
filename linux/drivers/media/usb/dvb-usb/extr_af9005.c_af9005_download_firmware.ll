; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_af9005.c_af9005_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i64 }

@FW_BULKOUT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FW_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"before downloading firmware, FW_CONFIG expected 0x01, received 0x%x\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"firmware download failed at packet %d with code %d\00", align 1
@FW_CONFIRM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"after downloading firmware, FW_CONFIRM expected 0x%x, received 0x%x\00", align 1
@FW_BOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"after downloading firmware, FW_CONFIG expected 0x02, received 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @af9005_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_download_firmware(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %12 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %13 = add nsw i32 %12, 2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i32* @kmalloc(i32 %13, i32 %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %148

21:                                               ; preds = %2
  %22 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %23 = load i32, i32* @FW_CONFIG, align 4
  %24 = load i32*, i32** %10, align 8
  %25 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %26 = add nsw i32 %25, 2
  %27 = call i32 @af9005_boot_packet(%struct.usb_device* %22, i32 %23, i32* %11, i32* %24, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %144

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 1
  br i1 %33, label %34, label %39

34:                                               ; preds = %31
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %144

39:                                               ; preds = %31
  %40 = load %struct.firmware*, %struct.firmware** %5, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %46 = and i32 %45, 255
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %50 = ashr i32 %49, 8
  %51 = and i32 %50, 255
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %90, %39
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %54
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load %struct.firmware*, %struct.firmware** %5, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %66 = mul nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %63, %67
  %69 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %70 = call i32 @memcpy(i32* %60, i64 %68, i32 %69)
  %71 = call i32 @deb_fw(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %74 = add nsw i32 %73, 2
  %75 = call i32 @debug_dump(i32* %72, i32 %74, i32 (i8*)* @deb_fw)
  %76 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %77 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %78 = call i32 @usb_sndbulkpipe(%struct.usb_device* %77, i32 2)
  %79 = load i32*, i32** %10, align 8
  %80 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %81 = add nsw i32 %80, 2
  %82 = call i32 @usb_bulk_msg(%struct.usb_device* %76, i32 %78, i32* %79, i32 %81, i32* %9, i32 1000)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %58
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %87)
  br label %144

89:                                               ; preds = %58
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  br label %54

93:                                               ; preds = %54
  %94 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %95 = load i32, i32* @FW_CONFIRM, align 4
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %98 = add nsw i32 %97, 2
  %99 = call i32 @af9005_boot_packet(%struct.usb_device* %94, i32 %95, i32* %11, i32* %96, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %93
  br label %144

103:                                              ; preds = %93
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %7, align 4
  %106 = and i32 %105, 255
  %107 = icmp ne i32 %104, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = and i32 %109, 255
  %111 = load i32, i32* %11, align 4
  %112 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %110, i32 %111)
  %113 = load i32, i32* @EIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %8, align 4
  br label %144

115:                                              ; preds = %103
  %116 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %117 = load i32, i32* @FW_BOOT, align 4
  %118 = load i32*, i32** %10, align 8
  %119 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %120 = add nsw i32 %119, 2
  %121 = call i32 @af9005_boot_packet(%struct.usb_device* %116, i32 %117, i32* %11, i32* %118, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %115
  br label %144

125:                                              ; preds = %115
  %126 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %127 = load i32, i32* @FW_CONFIG, align 4
  %128 = load i32*, i32** %10, align 8
  %129 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %130 = add nsw i32 %129, 2
  %131 = call i32 @af9005_boot_packet(%struct.usb_device* %126, i32 %127, i32* %11, i32* %128, i32 %130)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %144

135:                                              ; preds = %125
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 2
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %11, align 4
  %140 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %8, align 4
  br label %144

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %138, %134, %124, %108, %102, %85, %34, %30
  %145 = load i32*, i32** %10, align 8
  %146 = call i32 @kfree(i32* %145)
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %144, %18
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @af9005_boot_packet(%struct.usb_device*, i32, i32*, i32*, i32) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i32 @deb_fw(i8*) #1

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #1

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
