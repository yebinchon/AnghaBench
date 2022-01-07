; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_load_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/atmel/extr_at76c50x-usb.c_at76_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fwentry = type { i32, i8*, i32, i32, i32, i32*, i32*, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.usb_device = type { i32 }
%struct.at76_fw_header = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@firmwares = common dso_local global %struct.fwentry* null, align 8
@fw_mutex = common dso_local global i32 0, align 4
@DBG_FW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"re-using previously loaded fw\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"downloading firmware %s\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"firmware %s not found!\0A\00", align 1
@.str.3 = private unnamed_addr constant [92 x i8] c"you may need to download the firmware from http://developer.berlios.de/projects/at76c503a/\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"got it.\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"firmware is too short (0x%zx)\0A\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"board type mismatch, requested %u, got %u\0A\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"using firmware %s (version %d.%d.%d-%d)\0A\00", align 1
@DBG_DEVSTART = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"board %u, int %d:%d, ext %d:%d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"firmware id %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.fwentry* (%struct.usb_device*, i32)* @at76_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.fwentry* @at76_load_firmware(%struct.usb_device* %0, i32 %1) #0 {
  %3 = alloca %struct.fwentry*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.at76_fw_header*, align 8
  %9 = alloca %struct.fwentry*, align 8
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.fwentry*, %struct.fwentry** @firmwares, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %10, i64 %12
  store %struct.fwentry* %13, %struct.fwentry** %9, align 8
  %14 = call i32 @mutex_lock(i32* @fw_mutex)
  %15 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %16 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @DBG_FW, align 4
  %21 = call i32 (i32, i8*, ...) @at76_dbg(i32 %20, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %201

22:                                               ; preds = %2
  %23 = load i32, i32* @DBG_FW, align 4
  %24 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %25 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32, i8*, ...) @at76_dbg(i32 %23, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %29 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %28, i32 0, i32 8
  %30 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %31 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %34 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %33, i32 0, i32 0
  %35 = call i32 @request_firmware(%struct.TYPE_4__** %29, i8* %32, i32* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %22
  %39 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %40 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %39, i32 0, i32 0
  %41 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %42 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32*, i8*, ...) @dev_err(i32* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  %45 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %46 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %45, i32 0, i32 0
  %47 = call i32 (i32*, i8*, ...) @dev_err(i32* %46, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0))
  br label %201

48:                                               ; preds = %22
  %49 = load i32, i32* @DBG_FW, align 4
  %50 = call i32 (i32, i8*, ...) @at76_dbg(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0))
  %51 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %52 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %51, i32 0, i32 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.at76_fw_header*
  store %struct.at76_fw_header* %56, %struct.at76_fw_header** %8, align 8
  %57 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %58 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %57, i32 0, i32 8
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp ule i64 %62, 40
  br i1 %63, label %64, label %73

64:                                               ; preds = %48
  %65 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %66 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %65, i32 0, i32 0
  %67 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %68 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %67, i32 0, i32 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %71)
  br label %201

73:                                               ; preds = %48
  %74 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %75 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %74, i32 0, i32 9
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @le32_to_cpu(i32 %76)
  %78 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %79 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %78, i32 0, i32 2
  store i32 %77, i32* %79, align 8
  %80 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %81 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %73
  %86 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %87 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %86, i32 0, i32 0
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %90 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i32*, i8*, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i32 %88, i32 %91)
  br label %201

93:                                               ; preds = %73
  %94 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %95 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %94, i32 0, i32 7
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %98 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 3
  store i32 %96, i32* %99, align 4
  %100 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %101 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %104 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i32 %102, i32* %105, align 8
  %106 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %107 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %110 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %113 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %116 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 8
  %118 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %119 = bitcast %struct.at76_fw_header* %118 to i8*
  %120 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %121 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %120, i32 0, i32 8
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @le32_to_cpu(i32 %122)
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %119, i64 %124
  store i8* %125, i8** %7, align 8
  %126 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %127 = bitcast %struct.at76_fw_header* %126 to i32*
  %128 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %129 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @le32_to_cpu(i32 %130)
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %127, i64 %132
  %134 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %135 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %134, i32 0, i32 6
  store i32* %133, i32** %135, align 8
  %136 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %137 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @le32_to_cpu(i32 %138)
  %140 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %141 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %143 = bitcast %struct.at76_fw_header* %142 to i32*
  %144 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %145 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @le32_to_cpu(i32 %146)
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %143, i64 %148
  %150 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %151 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %150, i32 0, i32 5
  store i32* %149, i32** %151, align 8
  %152 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %153 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @le32_to_cpu(i32 %154)
  %156 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %157 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %159 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %158, i32 0, i32 0
  store i32 1, i32* %159, align 8
  %160 = load i32, i32* @KERN_DEBUG, align 4
  %161 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %162 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %161, i32 0, i32 0
  %163 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %164 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %167 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %166, i32 0, i32 7
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %170 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %173 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %176 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @dev_printk(i32 %160, i32* %162, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* %165, i32 %168, i32 %171, i32 %174, i32 %177)
  %179 = load i32, i32* @DBG_DEVSTART, align 4
  %180 = load i32, i32* %5, align 4
  %181 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %182 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @le32_to_cpu(i32 %183)
  %185 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %186 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @le32_to_cpu(i32 %187)
  %189 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %190 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @le32_to_cpu(i32 %191)
  %193 = load %struct.at76_fw_header*, %struct.at76_fw_header** %8, align 8
  %194 = getelementptr inbounds %struct.at76_fw_header, %struct.at76_fw_header* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @le32_to_cpu(i32 %195)
  %197 = call i32 (i32, i8*, ...) @at76_dbg(i32 %179, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %180, i32 %184, i32 %188, i32 %192, i32 %196)
  %198 = load i32, i32* @DBG_DEVSTART, align 4
  %199 = load i8*, i8** %7, align 8
  %200 = call i32 (i32, i8*, ...) @at76_dbg(i32 %198, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* %199)
  br label %201

201:                                              ; preds = %93, %85, %64, %38, %19
  %202 = call i32 @mutex_unlock(i32* @fw_mutex)
  %203 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  %204 = getelementptr inbounds %struct.fwentry, %struct.fwentry* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %201
  %208 = load %struct.fwentry*, %struct.fwentry** %9, align 8
  store %struct.fwentry* %208, %struct.fwentry** %3, align 8
  br label %210

209:                                              ; preds = %201
  store %struct.fwentry* null, %struct.fwentry** %3, align 8
  br label %210

210:                                              ; preds = %209, %207
  %211 = load %struct.fwentry*, %struct.fwentry** %3, align 8
  ret %struct.fwentry* %211
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @at76_dbg(i32, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.TYPE_4__**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
