; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_typhoon.c_typhoon_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.typhoon = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.typhoon_file_header = type { i32, i32 }
%struct.typhoon_section_header = type { i32 }

@typhoon_fw = common dso_local global %struct.TYPE_6__* null, align 8
@FIRMWARE_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to load firmware \22%s\22\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"TYPHOON\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Invalid firmware image\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typhoon*)* @typhoon_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @typhoon_request_firmware(%struct.typhoon* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.typhoon*, align 8
  %4 = alloca %struct.typhoon_file_header*, align 8
  %5 = alloca %struct.typhoon_section_header*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.typhoon* %0, %struct.typhoon** %3, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @typhoon_fw, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %101

14:                                               ; preds = %1
  %15 = load i32, i32* @FIRMWARE_NAME, align 4
  %16 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %17 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = call i32 @request_firmware(%struct.TYPE_6__** @typhoon_fw, i32 %15, i32* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %14
  %24 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %25 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @FIRMWARE_NAME, align 4
  %28 = call i32 (i32, i8*, ...) @netdev_err(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %2, align 4
  br label %101

30:                                               ; preds = %14
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @typhoon_fw, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @typhoon_fw, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = icmp ult i64 %38, 8
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %92

41:                                               ; preds = %30
  %42 = load i32*, i32** %6, align 8
  %43 = bitcast i32* %42 to %struct.typhoon_file_header*
  store %struct.typhoon_file_header* %43, %struct.typhoon_file_header** %4, align 8
  %44 = load %struct.typhoon_file_header*, %struct.typhoon_file_header** %4, align 8
  %45 = getelementptr inbounds %struct.typhoon_file_header, %struct.typhoon_file_header* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @memcmp(i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %92

50:                                               ; preds = %41
  %51 = load %struct.typhoon_file_header*, %struct.typhoon_file_header** %4, align 8
  %52 = getelementptr inbounds %struct.typhoon_file_header, %struct.typhoon_file_header* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le32_to_cpu(i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 8
  store i32* %56, i32** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = sub i64 %58, 8
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %83, %50
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  %64 = icmp ne i32 %62, 0
  br i1 %64, label %65, label %91

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = icmp ult i64 %67, 4
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  br label %92

70:                                               ; preds = %65
  %71 = load i32*, i32** %6, align 8
  %72 = bitcast i32* %71 to %struct.typhoon_section_header*
  store %struct.typhoon_section_header* %72, %struct.typhoon_section_header** %5, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 4
  store i32* %74, i32** %6, align 8
  %75 = load %struct.typhoon_section_header*, %struct.typhoon_section_header** %5, align 8
  %76 = getelementptr inbounds %struct.typhoon_section_header, %struct.typhoon_section_header* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @le32_to_cpu(i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %8, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %70
  br label %92

83:                                               ; preds = %70
  %84 = load i32, i32* %8, align 4
  %85 = load i32*, i32** %6, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32* %87, i32** %6, align 8
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %61

91:                                               ; preds = %61
  store i32 0, i32* %2, align 4
  br label %101

92:                                               ; preds = %82, %69, %49, %40
  %93 = load %struct.typhoon*, %struct.typhoon** %3, align 8
  %94 = getelementptr inbounds %struct.typhoon, %struct.typhoon* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (i32, i8*, ...) @netdev_err(i32 %95, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** @typhoon_fw, align 8
  %98 = call i32 @release_firmware(%struct.TYPE_6__* %97)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** @typhoon_fw, align 8
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %92, %91, %23, %13
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @request_firmware(%struct.TYPE_6__**, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @release_firmware(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
