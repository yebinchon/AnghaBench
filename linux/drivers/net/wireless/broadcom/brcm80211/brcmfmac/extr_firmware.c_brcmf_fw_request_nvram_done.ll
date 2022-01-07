; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_request_nvram_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_request_nvram_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i64, i64 }
%struct.brcmf_fw = type { i64, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, i32, %struct.brcmf_fw_item* }
%struct.brcmf_fw_item = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i8* }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"enter: dev=%s\0A\00", align 1
@BRCMF_FW_REQF_OPTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"nvram %p len %d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.firmware*, i8*)* @brcmf_fw_request_nvram_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_fw_request_nvram_done(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.firmware*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.brcmf_fw*, align 8
  %7 = alloca %struct.brcmf_fw_item*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.firmware* %0, %struct.firmware** %4, align 8
  store i8* %1, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.brcmf_fw*
  store %struct.brcmf_fw* %15, %struct.brcmf_fw** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i32* null, i32** %12, align 8
  %16 = load i32, i32* @TRACE, align 4
  %17 = load %struct.brcmf_fw*, %struct.brcmf_fw** %6, align 8
  %18 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_name(i32 %19)
  %21 = sext i32 %20 to i64
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 (i32, i8*, i8*, ...) @brcmf_dbg(i32 %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %22)
  %24 = load %struct.brcmf_fw*, %struct.brcmf_fw** %6, align 8
  %25 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %27, align 8
  %29 = load %struct.brcmf_fw*, %struct.brcmf_fw** %6, align 8
  %30 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %28, i64 %31
  store %struct.brcmf_fw_item* %32, %struct.brcmf_fw_item** %7, align 8
  %33 = load %struct.firmware*, %struct.firmware** %4, align 8
  %34 = icmp ne %struct.firmware* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %2
  %36 = load %struct.firmware*, %struct.firmware** %4, align 8
  %37 = getelementptr inbounds %struct.firmware, %struct.firmware* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.firmware*, %struct.firmware** %4, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %12, align 8
  %45 = load %struct.firmware*, %struct.firmware** %4, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %13, align 8
  br label %67

48:                                               ; preds = %35, %2
  %49 = call i32* @bcm47xx_nvram_get_contents(i64* %13)
  store i32* %49, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32 1, i32* %8, align 4
  br label %66

52:                                               ; preds = %48
  %53 = call i32* @brcmf_fw_nvram_from_efi(i64* %13)
  store i32* %53, i32** %12, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  store i32 1, i32* %9, align 4
  br label %65

56:                                               ; preds = %52
  %57 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %7, align 8
  %58 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BRCMF_FW_REQF_OPTIONAL, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %56
  br label %122

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66, %40
  %68 = load i32*, i32** %12, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %67
  %71 = load i32*, i32** %12, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load %struct.brcmf_fw*, %struct.brcmf_fw** %6, align 8
  %74 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.brcmf_fw*, %struct.brcmf_fw** %6, align 8
  %79 = getelementptr inbounds %struct.brcmf_fw, %struct.brcmf_fw* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i8* @brcmf_fw_nvram_strip(i32* %71, i64 %72, i32* %10, i32 %77, i32 %82)
  store i8* %83, i8** %11, align 8
  br label %84

84:                                               ; preds = %70, %67
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load i32*, i32** %12, align 8
  %89 = call i32 @bcm47xx_nvram_release_contents(i32* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %90
  %94 = load i32*, i32** %12, align 8
  %95 = call i32 @kfree(i32* %94)
  br label %96

96:                                               ; preds = %93, %90
  %97 = load %struct.firmware*, %struct.firmware** %4, align 8
  %98 = call i32 @release_firmware(%struct.firmware* %97)
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %109, label %101

101:                                              ; preds = %96
  %102 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %7, align 8
  %103 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @BRCMF_FW_REQF_OPTIONAL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %101
  br label %122

109:                                              ; preds = %101, %96
  %110 = load i32, i32* @TRACE, align 4
  %111 = load i8*, i8** %11, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 (i32, i8*, i8*, ...) @brcmf_dbg(i32 %110, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %111, i32 %112)
  %114 = load i8*, i8** %11, align 8
  %115 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %7, align 8
  %116 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  store i8* %114, i8** %117, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.brcmf_fw_item*, %struct.brcmf_fw_item** %7, align 8
  %120 = getelementptr inbounds %struct.brcmf_fw_item, %struct.brcmf_fw_item* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  store i32 0, i32* %3, align 4
  br label %125

122:                                              ; preds = %108, %63
  %123 = load i32, i32* @ENOENT, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %122, %109
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*, ...) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32* @bcm47xx_nvram_get_contents(i64*) #1

declare dso_local i32* @brcmf_fw_nvram_from_efi(i64*) #1

declare dso_local i8* @brcmf_fw_nvram_strip(i32*, i64, i32*, i32, i32) #1

declare dso_local i32 @bcm47xx_nvram_release_contents(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
