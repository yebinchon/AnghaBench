; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_feature.c_brcmf_feat_iovar_data_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_feature.c_brcmf_feat_iovar_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BRCMF_FW_UNSUPPORTED = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"enabling feature: %s\0A\00", align 1
@brcmf_feat_names = common dso_local global i32* null, align 8
@TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s feature check failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcmf_if*, i32, i8*, i8*, i64)* @brcmf_feat_iovar_data_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcmf_feat_iovar_data_set(%struct.brcmf_if* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.brcmf_if*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %14, i8* %15, i8* %16, i64 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @BRCMF_FW_UNSUPPORTED, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %5
  %24 = load i32, i32* @INFO, align 4
  %25 = load i32*, i32** @brcmf_feat_names, align 8
  %26 = load i32, i32* %7, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %34 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %48

39:                                               ; preds = %5
  %40 = load i32, i32* @TRACE, align 4
  %41 = load i32*, i32** @brcmf_feat_names, align 8
  %42 = load i32, i32* %7, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (i32, i8*, i32, ...) @brcmf_dbg(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %23
  %49 = load %struct.brcmf_if*, %struct.brcmf_if** %6, align 8
  %50 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  ret void
}

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, i8*, i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
