; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_config_wowl_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_cfg80211.c_brcmf_config_wowl_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }
%struct.brcmf_fil_wowl_pattern_le = type { i8*, i8*, i8*, i8*, i8*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@BRCMF_WOWL_PATTERN_TYPE_BITMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"wowl_pattern\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, i32*, i32*, i32, i32*, i32)* @brcmf_config_wowl_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_config_wowl_pattern(%struct.brcmf_if* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.brcmf_if*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.brcmf_fil_wowl_pattern_le*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %20 = load i32, i32* %11, align 4
  %21 = add nsw i32 %20, 7
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %15, align 4
  %23 = load i32, i32* %15, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 40, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 48, %28
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %18, align 4
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32* @kzalloc(i32 %34, i32 %35)
  store i32* %36, i32** %17, align 8
  %37 = load i32*, i32** %17, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %6
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %104

42:                                               ; preds = %6
  %43 = load i32*, i32** %17, align 8
  %44 = bitcast i32* %43 to %struct.brcmf_fil_wowl_pattern_le*
  store %struct.brcmf_fil_wowl_pattern_le* %44, %struct.brcmf_fil_wowl_pattern_le** %14, align 8
  %45 = load %struct.brcmf_fil_wowl_pattern_le*, %struct.brcmf_fil_wowl_pattern_le** %14, align 8
  %46 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, %struct.brcmf_fil_wowl_pattern_le* %45, i32 0, i32 5
  %47 = load i32*, i32** %46, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = call i32 @memcpy(i32* %47, i32* %48, i32 4)
  %50 = load i32, i32* %15, align 4
  %51 = call i8* @cpu_to_le32(i32 %50)
  %52 = load %struct.brcmf_fil_wowl_pattern_le*, %struct.brcmf_fil_wowl_pattern_le** %14, align 8
  %53 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, %struct.brcmf_fil_wowl_pattern_le* %52, i32 0, i32 4
  store i8* %51, i8** %53, align 8
  %54 = load i32, i32* %13, align 4
  %55 = call i8* @cpu_to_le32(i32 %54)
  %56 = load %struct.brcmf_fil_wowl_pattern_le*, %struct.brcmf_fil_wowl_pattern_le** %14, align 8
  %57 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, %struct.brcmf_fil_wowl_pattern_le* %56, i32 0, i32 3
  store i8* %55, i8** %57, align 8
  %58 = load i32, i32* %16, align 4
  %59 = call i8* @cpu_to_le32(i32 %58)
  %60 = load %struct.brcmf_fil_wowl_pattern_le*, %struct.brcmf_fil_wowl_pattern_le** %14, align 8
  %61 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, %struct.brcmf_fil_wowl_pattern_le* %60, i32 0, i32 2
  store i8* %59, i8** %61, align 8
  %62 = load i32, i32* %11, align 4
  %63 = call i8* @cpu_to_le32(i32 %62)
  %64 = load %struct.brcmf_fil_wowl_pattern_le*, %struct.brcmf_fil_wowl_pattern_le** %14, align 8
  %65 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, %struct.brcmf_fil_wowl_pattern_le* %64, i32 0, i32 1
  store i8* %63, i8** %65, align 8
  %66 = load i32, i32* @BRCMF_WOWL_PATTERN_TYPE_BITMAP, align 4
  %67 = call i8* @cpu_to_le32(i32 %66)
  %68 = load %struct.brcmf_fil_wowl_pattern_le*, %struct.brcmf_fil_wowl_pattern_le** %14, align 8
  %69 = getelementptr inbounds %struct.brcmf_fil_wowl_pattern_le, %struct.brcmf_fil_wowl_pattern_le* %68, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %81

72:                                               ; preds = %42
  %73 = load i32, i32* %15, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load i32*, i32** %17, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 48
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %15, align 4
  %80 = call i32 @memcpy(i32* %77, i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %75, %72, %42
  %82 = load i32*, i32** %10, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i32*, i32** %17, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 48
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32*, i32** %10, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @memcpy(i32* %92, i32* %93, i32 %94)
  br label %96

96:                                               ; preds = %87, %84, %81
  %97 = load %struct.brcmf_if*, %struct.brcmf_if** %8, align 8
  %98 = load i32*, i32** %17, align 8
  %99 = load i32, i32* %18, align 4
  %100 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %98, i32 %99)
  store i32 %100, i32* %19, align 4
  %101 = load i32*, i32** %17, align 8
  %102 = call i32 @kfree(i32* %101)
  %103 = load i32, i32* %19, align 4
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %96, %39
  %105 = load i32, i32* %7, align 4
  ret i32 %105
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
