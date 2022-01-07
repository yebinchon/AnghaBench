; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_request_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_mac80211_if.c_brcms_request_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32*, i32, %struct.TYPE_3__**, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { i32 }
%struct.bcma_device = type { %struct.device }
%struct.device = type { i32 }

@MAX_FW_IMAGES = common dso_local global i32 0, align 4
@brcms_firmwares = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%s-%d.fw\00", align 1
@UCODE_LOADER_API_VER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"%s: fail to load firmware %s\0A\00", align 1
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"%s_hdr-%d.fw\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcms_info*, %struct.bcma_device*)* @brcms_request_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcms_request_fw(%struct.brcms_info* %0, %struct.bcma_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.brcms_info*, align 8
  %5 = alloca %struct.bcma_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca [100 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.brcms_info* %0, %struct.brcms_info** %4, align 8
  store %struct.bcma_device* %1, %struct.bcma_device** %5, align 8
  %10 = load %struct.bcma_device*, %struct.bcma_device** %5, align 8
  %11 = getelementptr inbounds %struct.bcma_device, %struct.bcma_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %13 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %12, i32 0, i32 1
  %14 = call i32 @memset(%struct.TYPE_4__* %13, i32 0, i32 4)
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %106, %2
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @MAX_FW_IMAGES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %109

19:                                               ; preds = %15
  %20 = load i8**, i8*** @brcms_firmwares, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %109

27:                                               ; preds = %19
  %28 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %29 = load i8**, i8*** @brcms_firmwares, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8*, i8** %29, i64 %31
  %33 = load i8*, i8** %32, align 8
  %34 = load i32, i32* @UCODE_LOADER_API_VER, align 4
  %35 = call i32 @sprintf(i8* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %33, i32 %34)
  %36 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %37 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %44 = load %struct.device*, %struct.device** %7, align 8
  %45 = call i32 @request_firmware(%struct.TYPE_3__** %42, i8* %43, %struct.device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %27
  %49 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %50 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @KBUILD_MODNAME, align 4
  %53 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %54 = call i32 @wiphy_err(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %52, i8* %53)
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %3, align 4
  br label %121

56:                                               ; preds = %27
  %57 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %58 = load i8**, i8*** @brcms_firmwares, align 8
  %59 = load i32, i32* %9, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i32, i32* @UCODE_LOADER_API_VER, align 4
  %64 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* %62, i32 %63)
  %65 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %66 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %67, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %68, i64 %70
  %72 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %73 = load %struct.device*, %struct.device** %7, align 8
  %74 = call i32 @request_firmware(%struct.TYPE_3__** %71, i8* %72, %struct.device* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %56
  %78 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %79 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @KBUILD_MODNAME, align 4
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0
  %83 = call i32 @wiphy_err(i32 %80, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %81, i8* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %121

85:                                               ; preds = %56
  %86 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %87 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %88, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %89, i64 %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = udiv i64 %96, 4
  %98 = trunc i64 %97 to i32
  %99 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %100 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %9, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %98, i32* %105, align 4
  br label %106

106:                                              ; preds = %85
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %15

109:                                              ; preds = %26, %15
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %112 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  store i32 %110, i32* %113, align 8
  %114 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %115 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %116 = getelementptr inbounds %struct.brcms_info, %struct.brcms_info* %115, i32 0, i32 0
  %117 = call i32 @brcms_ucode_data_init(%struct.brcms_info* %114, i32* %116)
  store i32 %117, i32* %6, align 4
  %118 = load %struct.brcms_info*, %struct.brcms_info** %4, align 8
  %119 = call i32 @brcms_release_fw(%struct.brcms_info* %118)
  %120 = load i32, i32* %6, align 4
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %109, %77, %48
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

declare dso_local i32 @request_firmware(%struct.TYPE_3__**, i8*, %struct.device*) #1

declare dso_local i32 @wiphy_err(i32, i8*, i32, i8*) #1

declare dso_local i32 @brcms_ucode_data_init(%struct.brcms_info*, i32*) #1

declare dso_local i32 @brcms_release_fw(%struct.brcms_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
