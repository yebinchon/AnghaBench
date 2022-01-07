; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_fil_iovar_data_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_fil_iovar_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32, i32 }

@FIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ifidx=%d, name=%s, len=%d\0A\00", align 1
@uint = common dso_local global i32 0, align 4
@MAX_HEX_DUMP_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"data\0A\00", align 1
@BRCMF_C_SET_VAR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Creating iovar failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %0, i8* %1, i8* %2, i64 %3) #0 {
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
  %13 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %12, i32 0, i32 1
  %14 = load %struct.brcmf_pub*, %struct.brcmf_pub** %13, align 8
  store %struct.brcmf_pub* %14, %struct.brcmf_pub** %9, align 8
  %15 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %16 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* @FIL, align 4
  %19 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %20 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i32 @brcmf_dbg(i32 %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %21, i8* %22, i64 %23)
  %25 = call i32 (...) @BRCMF_FIL_ON()
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* @uint, align 4
  %28 = load i64, i64* %8, align 8
  %29 = load i32, i32* @MAX_HEX_DUMP_LEN, align 4
  %30 = call i32 @min_t(i32 %27, i64 %28, i32 %29)
  %31 = call i32 @brcmf_dbg_hex_dump(i32 %25, i8* %26, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i8*, i8** %6, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %36 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @brcmf_create_iovar(i8* %32, i8* %33, i64 %34, i32 %37, i32 4)
  store i64 %38, i64* %11, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %4
  %42 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %43 = load i32, i32* @BRCMF_C_SET_VAR, align 4
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %45 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @brcmf_fil_cmd_data(%struct.brcmf_if* %42, i32 %43, i32 %46, i64 %47, i32 1)
  store i32 %48, i32* %10, align 4
  br label %54

49:                                               ; preds = %4
  %50 = load i32, i32* @EPERM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %53 = call i32 @bphy_err(%struct.brcmf_pub* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %49, %41
  %55 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %56 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* %10, align 4
  ret i32 %58
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @brcmf_dbg_hex_dump(i32, i8*, i32, i8*) #1

declare dso_local i32 @BRCMF_FIL_ON(...) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i64 @brcmf_create_iovar(i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @brcmf_fil_cmd_data(%struct.brcmf_if*, i32, i32, i64, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
