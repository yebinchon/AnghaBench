; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_lmedm04.c_lme2510_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32 }
%struct.firmware = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"FRM Could not start Firmware Download(Buffer allocation failed)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"FRM Starting Firmware Download\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Data S=%02x:E=%02x CS= %02x\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"FRM Firmware Download Failed (%04x)\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"FRM Firmware Download Completed - Resetting Device\00", align 1
@RECONNECTS_USB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_device*, %struct.firmware*)* @lme2510_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lme2510_download_firmware(%struct.dvb_usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 49, i32* %13, align 4
  store i32 1, i32* %10, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kzalloc(i32 128, i32 %17)
  store i32* %18, i32** %7, align 8
  %19 = load i32*, i32** %7, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %158

25:                                               ; preds = %2
  %26 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  br label %27

27:                                               ; preds = %133, %25
  %28 = load i32, i32* %15, align 4
  %29 = icmp slt i32 %28, 3
  br i1 %29, label %30, label %136

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 0, i32 512
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %15, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  br label %42

42:                                               ; preds = %38, %37
  %43 = phi i32 [ 512, %37 ], [ %41, %38 ]
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %127, %42
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %132

49:                                               ; preds = %45
  %50 = load %struct.firmware*, %struct.firmware** %5, align 8
  %51 = getelementptr inbounds %struct.firmware, %struct.firmware* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %16, align 8
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %8, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load i32, i32* %13, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %49
  %63 = load i32, i32* %15, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* %13, align 4
  store i32 %66, i32* %14, align 4
  br label %76

67:                                               ; preds = %49
  %68 = load i32, i32* %15, align 4
  %69 = or i32 %68, 128
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %72, %73
  %75 = sub nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %76

76:                                               ; preds = %67, %62
  %77 = load i32, i32* %14, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  %80 = load i32*, i32** %7, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32*, i32** %16, align 8
  %83 = load i32, i32* %14, align 4
  %84 = add nsw i32 %83, 1
  %85 = call i32 @memcpy(i32* %81, i32* %82, i32 %84)
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, 4
  store i32 %87, i32* %9, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %14, align 4
  %90 = add nsw i32 %89, 1
  %91 = call i32 @check_sum(i32* %88, i32 %90)
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sub nsw i32 %93, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  store i32 %91, i32* %96, align 4
  %97 = load i32*, i32** %7, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %101, 2
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32*, i32** %7, align 8
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %107, 3
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %106, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @deb_info(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %99, i32 %105, i32 %111)
  %113 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %10, align 4
  %118 = call i32 @lme2510_usb_talk(%struct.dvb_usb_device* %113, i32* %114, i32 %115, i32* %116, i32 %117)
  %119 = load i32*, i32** %7, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 136
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i32 0, i32 -1
  %125 = load i32, i32* %6, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %6, align 4
  br label %127

127:                                              ; preds = %76
  %128 = load i32, i32* %13, align 4
  %129 = add nsw i32 %128, 1
  %130 = load i32, i32* %8, align 4
  %131 = add nsw i32 %130, %129
  store i32 %131, i32* %8, align 4
  br label %45

132:                                              ; preds = %45
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %15, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %15, align 4
  br label %27

136:                                              ; preds = %27
  %137 = load i32*, i32** %7, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 0
  store i32 138, i32* %138, align 4
  store i32 1, i32* %10, align 4
  %139 = call i32 @msleep(i32 2000)
  %140 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %4, align 8
  %141 = load i32*, i32** %7, align 8
  %142 = load i32, i32* %10, align 4
  %143 = load i32*, i32** %7, align 8
  %144 = load i32, i32* %10, align 4
  %145 = call i32 @lme2510_usb_talk(%struct.dvb_usb_device* %140, i32* %141, i32 %142, i32* %143, i32 %144)
  %146 = call i32 @msleep(i32 400)
  %147 = load i32, i32* %6, align 4
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %136
  %150 = load i32, i32* %6, align 4
  %151 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %150)
  br label %154

152:                                              ; preds = %136
  %153 = call i32 (i8*, ...) @info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %149
  %155 = load i32*, i32** %7, align 8
  %156 = call i32 @kfree(i32* %155)
  %157 = load i32, i32* @RECONNECTS_USB, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %21
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @info(i8*, ...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @check_sum(i32*, i32) #1

declare dso_local i32 @deb_info(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lme2510_usb_talk(%struct.dvb_usb_device*, i32*, i32, i32*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
