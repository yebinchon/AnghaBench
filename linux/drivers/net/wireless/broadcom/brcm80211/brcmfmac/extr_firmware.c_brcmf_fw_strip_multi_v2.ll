; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_strip_multi_v2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_firmware.c_brcmf_fw_strip_multi_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvram_parser = type { i32, i64*, i32 }

@BRCMF_FW_NVRAM_PCIEDEV_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"pcie/%d/%d/\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"boardrev\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvram_parser*, i32, i32)* @brcmf_fw_strip_multi_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_fw_strip_multi_v2(%struct.nvram_parser* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nvram_parser*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  store %struct.nvram_parser* %0, %struct.nvram_parser** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32, i32* @BRCMF_FW_NVRAM_PCIEDEV_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  %18 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %19 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  %22 = add nsw i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = add i64 %23, 8
  %25 = trunc i64 %24 to i32
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i64* @kzalloc(i32 %25, i32 %26)
  store i64* %27, i64** %12, align 8
  %28 = load i64*, i64** %12, align 8
  %29 = icmp ne i64* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %3
  br label %126

31:                                               ; preds = %3
  %32 = trunc i64 %15 to i32
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @snprintf(i8* %17, i32 %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = call i64 @strlen(i8* %17)
  store i64 %36, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %37

37:                                               ; preds = %111, %31
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %40 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %42, %43
  %45 = icmp ult i64 %38, %44
  br i1 %45, label %46, label %114

46:                                               ; preds = %37
  %47 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %48 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %10, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %9, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @strncmp(i64* %51, i8* %17, i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %99

56:                                               ; preds = %46
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* %10, align 8
  %59 = add i64 %58, %57
  store i64 %59, i64* %10, align 8
  %60 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %61 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = call i64 @strncmp(i64* %64, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %69 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %68, i32 0, i32 2
  store i32 1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %56
  br label %71

71:                                               ; preds = %79, %70
  %72 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %73 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %93

79:                                               ; preds = %71
  %80 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %81 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = load i64*, i64** %12, align 8
  %87 = load i64, i64* %11, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  store i64 %85, i64* %88, align 8
  %89 = load i64, i64* %10, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %11, align 8
  br label %71

93:                                               ; preds = %71
  %94 = load i64*, i64** %12, align 8
  %95 = load i64, i64* %11, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  store i64 0, i64* %96, align 8
  %97 = load i64, i64* %11, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %11, align 8
  br label %99

99:                                               ; preds = %93, %46
  br label %100

100:                                              ; preds = %108, %99
  %101 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %102 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %101, i32 0, i32 1
  %103 = load i64*, i64** %102, align 8
  %104 = load i64, i64* %10, align 8
  %105 = getelementptr inbounds i64, i64* %103, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load i64, i64* %10, align 8
  %110 = add i64 %109, 1
  store i64 %110, i64* %10, align 8
  br label %100

111:                                              ; preds = %100
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %10, align 8
  br label %37

114:                                              ; preds = %37
  %115 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %116 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %115, i32 0, i32 1
  %117 = load i64*, i64** %116, align 8
  %118 = call i32 @kfree(i64* %117)
  %119 = load i64*, i64** %12, align 8
  %120 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %121 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %120, i32 0, i32 1
  store i64* %119, i64** %121, align 8
  %122 = load i64, i64* %11, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %125 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 8
  store i32 1, i32* %13, align 4
  br label %131

126:                                              ; preds = %30
  %127 = load i64*, i64** %12, align 8
  %128 = call i32 @kfree(i64* %127)
  %129 = load %struct.nvram_parser*, %struct.nvram_parser** %4, align 8
  %130 = getelementptr inbounds %struct.nvram_parser, %struct.nvram_parser* %129, i32 0, i32 0
  store i32 0, i32* %130, align 8
  store i32 0, i32* %13, align 4
  br label %131

131:                                              ; preds = %126, %114
  %132 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %132)
  %133 = load i32, i32* %13, align 4
  switch i32 %133, label %135 [
    i32 0, label %134
    i32 1, label %134
  ]

134:                                              ; preds = %131, %131
  ret void

135:                                              ; preds = %131
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64* @kzalloc(i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @strncmp(i64*, i8*, i32) #2

declare dso_local i32 @kfree(i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
