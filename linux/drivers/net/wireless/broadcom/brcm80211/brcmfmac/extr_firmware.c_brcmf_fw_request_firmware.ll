; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32 }
%struct.brcmf_fw = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %struct.brcmf_fw_item* }
%struct.brcmf_fw_item = type { i64, i8* }

@BRCMF_FW_TYPE_NVRAM = common dso_local global i64 0, align 8
@BRCMF_FW_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".txt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware**, %struct.brcmf_fw*)* @brcmf_fw_request_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_fw_request_firmware(%struct.firmware** %0, %struct.brcmf_fw* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firmware**, align 8
  %5 = alloca %struct.brcmf_fw*, align 8
  %6 = alloca %struct.brcmf_fw_item*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.firmware** %0, %struct.firmware*** %4, align 8
  store %struct.brcmf_fw* %1, %struct.brcmf_fw** %5, align 8
  %11 = load %struct.brcmf_fw*, %struct.brcmf_fw** %5, align 8
  %12 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %14, align 8
  %16 = load %struct.brcmf_fw*, %struct.brcmf_fw** %5, align 8
  %17 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %15, i64 %18
  store %struct.brcmf_fw_item* %19, %struct.brcmf_fw_item** %6, align 8
  %20 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %6, align 8
  %21 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BRCMF_FW_TYPE_NVRAM, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %71

25:                                               ; preds = %2
  %26 = load %struct.brcmf_fw*, %struct.brcmf_fw** %5, align 8
  %27 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %71

32:                                               ; preds = %25
  %33 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %8, align 8
  %36 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %9, align 8
  %37 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %6, align 8
  %38 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %41 = call i32 @strlcpy(i8* %36, i8* %39, i32 %40)
  %42 = call i32 @strlen(i8* %36)
  %43 = sub nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %36, i64 %44
  store i8 0, i8* %45, align 1
  %46 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %47 = call i32 @strlcat(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.brcmf_fw*, %struct.brcmf_fw** %5, align 8
  %49 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %54 = call i32 @strlcat(i8* %36, i8* %52, i32 %53)
  %55 = load i32, i32* @BRCMF_FW_NAME_LEN, align 4
  %56 = call i32 @strlcat(i8* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.firmware**, %struct.firmware*** %4, align 8
  %58 = load %struct.brcmf_fw*, %struct.brcmf_fw** %5, align 8
  %59 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @request_firmware(%struct.firmware** %57, i8* %36, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %32
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %67

66:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %66, %64
  %68 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %68)
  %69 = load i32, i32* %10, align 4
  switch i32 %69, label %82 [
    i32 0, label %70
    i32 1, label %80
  ]

70:                                               ; preds = %67
  br label %71

71:                                               ; preds = %70, %25, %2
  %72 = load %struct.firmware**, %struct.firmware*** %4, align 8
  %73 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %6, align 8
  %74 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %73, i32 0, i32 1
  %75 = load i8*, i8** %74, align 8
  %76 = load %struct.brcmf_fw*, %struct.brcmf_fw** %5, align 8
  %77 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @request_firmware(%struct.firmware** %72, i8* %75, i32 %78)
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %71, %67
  %81 = load i32, i32* %3, align 4
  ret i32 %81

82:                                               ; preds = %67
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
