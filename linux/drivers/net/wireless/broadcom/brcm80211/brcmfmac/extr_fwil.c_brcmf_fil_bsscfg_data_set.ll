; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_fil_bsscfg_data_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_fil_bsscfg_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32, i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32, i32 }

@FIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"ifidx=%d, bsscfgidx=%d, name=%s, len=%d\0A\00", align 1
@uint = common dso_local global i32 0, align 4
@MAX_HEX_DUMP_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"data\0A\00", align 1
@BRCMF_C_SET_VAR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Creating bsscfg failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if* %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.brcmf_pub*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 2
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  store %struct.brcmf_pub* %14, %struct.brcmf_pub** %9, align 8
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %16 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @FIL, align 4
  %19 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %23 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @brcmf_dbg(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i8* %25, i64 %26)
  %28 = call i32 (...) @BRCMF_FIL_ON()
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* @uint, align 4
  %31 = load i64, i64* %8, align 8
  %32 = load i32, i32* @MAX_HEX_DUMP_LEN, align 4
  %33 = call i32 @min_t(i32 %30, i64 %31, i32 %32)
  %34 = call i32 @brcmf_dbg_hex_dump(i32 %28, i8* %29, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %36 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %42 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @brcmf_create_bsscfg(i32 %37, i8* %38, i8* %39, i64 %40, i32 %43, i32 4)
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %11, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %4
  %48 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %49 = load i32, i32* @BRCMF_C_SET_VAR, align 4
  %50 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %51 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i64, i64* %11, align 8
  %54 = call i32 @brcmf_fil_cmd_data(%struct.brcmf_if* %48, i32 %49, i32 %52, i64 %53, i32 1)
  store i32 %54, i32* %10, align 4
  br label %60

55:                                               ; preds = %4
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %59 = call i32 @bphy_err(%struct.brcmf_pub* %58, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %47
  %61 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %62 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i32, i8*, i64) #1

declare dso_local i32 @brcmf_dbg_hex_dump(i32, i8*, i32, i8*) #1

declare dso_local i32 @BRCMF_FIL_ON(...) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i64 @brcmf_create_bsscfg(i32, i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @brcmf_fil_cmd_data(%struct.brcmf_if*, i32, i32, i64, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
