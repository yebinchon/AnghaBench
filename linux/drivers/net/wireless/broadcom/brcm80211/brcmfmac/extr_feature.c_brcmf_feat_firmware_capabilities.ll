; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_feature.c_brcmf_feat_firmware_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_feature.c_brcmf_feat_firmware_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.brcmf_if = type { %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32 }

@MAX_CAPS_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"cap\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"could not get firmware cap (%d)\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"[ %s]\0A\00", align 1
@brcmf_fwcap_map = common dso_local global %struct.TYPE_3__* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"enabling feature: %s\0A\00", align 1
@brcmf_feat_names = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_if*)* @brcmf_feat_firmware_capabilities to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_feat_firmware_capabilities(%struct.brcmf_if* %0) #0 {
  %2 = alloca %struct.brcmf_if*, align 8
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %2, align 8
  %10 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %11 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %10, i32 0, i32 0
  %12 = load %struct.brcmf_pub*, %struct.brcmf_pub** %11, align 8
  store %struct.brcmf_pub* %12, %struct.brcmf_pub** %3, align 8
  %13 = load i32, i32* @MAX_CAPS_BUFFER_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %4, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %5, align 8
  %17 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %18 = trunc i64 %14 to i32
  %19 = call i32 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %1
  %23 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @bphy_err(%struct.brcmf_pub* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i32 1, i32* %9, align 4
  br label %71

26:                                               ; preds = %1
  %27 = load i32, i32* @INFO, align 4
  %28 = call i32 @brcmf_dbg(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* %16)
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %67, %26
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** @brcmf_fwcap_map, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %70

34:                                               ; preds = %29
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** @brcmf_fwcap_map, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = trunc i64 %14 to i32
  %42 = call i64 @strnstr(i8* %16, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %34
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @brcmf_fwcap_map, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* @INFO, align 4
  %52 = load i8**, i8*** @brcmf_feat_names, align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %52, i64 %54
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @brcmf_dbg(i32 %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %56)
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @BIT(i32 %58)
  %60 = load %struct.brcmf_if*, %struct.brcmf_if** %2, align 8
  %61 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %60, i32 0, i32 0
  %62 = load %struct.brcmf_pub*, %struct.brcmf_pub** %61, align 8
  %63 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %59
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %44, %34
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %7, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %7, align 4
  br label %29

70:                                               ; preds = %29
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %70, %22
  %72 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %72)
  %73 = load i32, i32* %9, align 4
  switch i32 %73, label %75 [
    i32 0, label %74
    i32 1, label %74
  ]

74:                                               ; preds = %71, %71
  ret void

75:                                               ; preds = %71
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @brcmf_fil_iovar_data_get(%struct.brcmf_if*, i8*, i8*, i32) #2

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, i32) #2

declare dso_local i32 @brcmf_dbg(i32, i8*, i8*) #2

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #2

declare dso_local i64 @strnstr(i8*, i32, i32) #2

declare dso_local i32 @BIT(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
