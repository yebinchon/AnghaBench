; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_download_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/wl128x/extr_fmdrv_common.c_fm_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fmdev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.bts_header = type { i64 }
%struct.bts_action = type { i32, i64, i64 }
%struct.bts_action_delay = type { i32 }

@FM_FW_DW_INPROGRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Unable to read firmware(%s) content\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Firmware(%s) length : %zu bytes\0A\00", align 1
@FM_FW_FILE_HEADER_MAGIC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"%s not a legal TI firmware file\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"FW(%s) magic number : 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Firmware commands(%d) loaded to chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fmdev*, i32*)* @fm_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm_download_firmware(%struct.fmdev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fmdev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca %struct.bts_header*, align 8
  %8 = alloca %struct.bts_action*, align 8
  %9 = alloca %struct.bts_action_delay*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fmdev* %0, %struct.fmdev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* @FM_FW_DW_INPROGRESS, align 4
  %15 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %16 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %15, i32 0, i32 0
  %17 = call i32 @set_bit(i32 %14, i32* %16)
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %20 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i32 @request_firmware(%struct.firmware** %6, i32* %18, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32*, i32** %5, align 8
  %28 = call i32 @fmerr(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32* %27)
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %3, align 4
  br label %134

30:                                               ; preds = %2
  %31 = load i32*, i32** %5, align 8
  %32 = ptrtoint i32* %31 to i32
  %33 = load %struct.firmware*, %struct.firmware** %6, align 8
  %34 = getelementptr inbounds %struct.firmware, %struct.firmware* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i8*, i32, ...) @fmdbg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35)
  %37 = load %struct.firmware*, %struct.firmware** %6, align 8
  %38 = getelementptr inbounds %struct.firmware, %struct.firmware* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %10, align 8
  %42 = load %struct.firmware*, %struct.firmware** %6, align 8
  %43 = getelementptr inbounds %struct.firmware, %struct.firmware* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = bitcast i32* %45 to %struct.bts_header*
  store %struct.bts_header* %46, %struct.bts_header** %7, align 8
  %47 = load %struct.bts_header*, %struct.bts_header** %7, align 8
  %48 = getelementptr inbounds %struct.bts_header, %struct.bts_header* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @FM_FW_FILE_HEADER_MAGIC, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %30
  %53 = load i32*, i32** %5, align 8
  %54 = call i32 @fmerr(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32* %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %11, align 4
  br label %126

57:                                               ; preds = %30
  %58 = load i32*, i32** %5, align 8
  %59 = ptrtoint i32* %58 to i32
  %60 = load %struct.bts_header*, %struct.bts_header** %7, align 8
  %61 = getelementptr inbounds %struct.bts_header, %struct.bts_header* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i8*, i32, ...) @fmdbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %59, i64 %62)
  %64 = load i32*, i32** %10, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 8
  store i32* %65, i32** %10, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = sub i64 %67, 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  br label %70

70:                                               ; preds = %108, %57
  %71 = load i32*, i32** %10, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %74, 0
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ false, %70 ], [ %75, %73 ]
  br i1 %77, label %78, label %123

78:                                               ; preds = %76
  %79 = load i32*, i32** %10, align 8
  %80 = bitcast i32* %79 to %struct.bts_action*
  store %struct.bts_action* %80, %struct.bts_action** %8, align 8
  %81 = load %struct.bts_action*, %struct.bts_action** %8, align 8
  %82 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %108 [
    i32 128, label %84
    i32 129, label %99
  ]

84:                                               ; preds = %78
  %85 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %86 = load %struct.bts_action*, %struct.bts_action** %8, align 8
  %87 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bts_action*, %struct.bts_action** %8, align 8
  %90 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @fmc_send_cmd(%struct.fmdev* %85, i32 0, i32 0, i64 %88, i64 %91, i32* null, i32* null)
  store i32 %92, i32* %11, align 4
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %84
  br label %126

96:                                               ; preds = %84
  %97 = load i32, i32* %13, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %13, align 4
  br label %108

99:                                               ; preds = %78
  %100 = load %struct.bts_action*, %struct.bts_action** %8, align 8
  %101 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.bts_action_delay*
  store %struct.bts_action_delay* %103, %struct.bts_action_delay** %9, align 8
  %104 = load %struct.bts_action_delay*, %struct.bts_action_delay** %9, align 8
  %105 = getelementptr inbounds %struct.bts_action_delay, %struct.bts_action_delay* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @mdelay(i32 %106)
  br label %108

108:                                              ; preds = %78, %99, %96
  %109 = load %struct.bts_action*, %struct.bts_action** %8, align 8
  %110 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = add i64 24, %111
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 %112
  store i32* %114, i32** %10, align 8
  %115 = load %struct.bts_action*, %struct.bts_action** %8, align 8
  %116 = getelementptr inbounds %struct.bts_action, %struct.bts_action* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = add i64 24, %117
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = sub i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %12, align 4
  br label %70

123:                                              ; preds = %76
  %124 = load i32, i32* %13, align 4
  %125 = call i32 (i8*, i32, ...) @fmdbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  br label %126

126:                                              ; preds = %123, %95, %52
  %127 = load %struct.firmware*, %struct.firmware** %6, align 8
  %128 = call i32 @release_firmware(%struct.firmware* %127)
  %129 = load i32, i32* @FM_FW_DW_INPROGRESS, align 4
  %130 = load %struct.fmdev*, %struct.fmdev** %4, align 8
  %131 = getelementptr inbounds %struct.fmdev, %struct.fmdev* %130, i32 0, i32 0
  %132 = call i32 @clear_bit(i32 %129, i32* %131)
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %126, %26
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i32*, i32*) #1

declare dso_local i32 @fmerr(i8*, i32*) #1

declare dso_local i32 @fmdbg(i8*, i32, ...) #1

declare dso_local i32 @fmc_send_cmd(%struct.fmdev*, i32, i32, i64, i64, i32*, i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
