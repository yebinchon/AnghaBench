; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_fil_iovar_data_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_fwil.c_brcmf_fil_iovar_data_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32, %struct.brcmf_pub* }
%struct.brcmf_pub = type { i32, i32 }

@BRCMF_C_GET_VAR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Creating iovar failed\0A\00", align 1
@FIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ifidx=%d, name=%s, len=%d\0A\00", align 1
@uint = common dso_local global i32 0, align 4
@MAX_HEX_DUMP_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"data\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_fil_iovar_data_get(%struct.brcmf_if* %0, i8* %1, i8* %2, i64 %3) #0 {
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
  %18 = load i8*, i8** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %22 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @brcmf_create_iovar(i8* %18, i8* %19, i64 %20, i32 %23, i32 4)
  store i64 %24, i64* %11, align 8
  %25 = load i64, i64* %11, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %29 = load i32, i32* @BRCMF_C_GET_VAR, align 4
  %30 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %31 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %11, align 8
  %34 = call i32 @brcmf_fil_cmd_data(%struct.brcmf_if* %28, i32 %29, i32 %32, i64 %33, i32 0)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %27
  %38 = load i8*, i8** %7, align 8
  %39 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %40 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @memcpy(i8* %38, i32 %41, i64 %42)
  br label %44

44:                                               ; preds = %37, %27
  br label %50

45:                                               ; preds = %4
  %46 = load i32, i32* @EPERM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %10, align 4
  %48 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %49 = call i32 @bphy_err(%struct.brcmf_pub* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %44
  %51 = load i32, i32* @FIL, align 4
  %52 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %53 = getelementptr inbounds %struct.brcmf_if, %struct.brcmf_if* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i64, i64* %8, align 8
  %57 = call i32 @brcmf_dbg(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %54, i8* %55, i64 %56)
  %58 = call i32 (...) @BRCMF_FIL_ON()
  %59 = load i8*, i8** %7, align 8
  %60 = load i32, i32* @uint, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* @MAX_HEX_DUMP_LEN, align 4
  %63 = call i32 @min_t(i32 %60, i64 %61, i32 %62)
  %64 = call i32 @brcmf_dbg_hex_dump(i32 %58, i8* %59, i32 %63, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %65 = load %struct.brcmf_pub*, %struct.brcmf_pub** %9, align 8
  %66 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %10, align 4
  ret i32 %68
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @brcmf_create_iovar(i8*, i8*, i64, i32, i32) #1

declare dso_local i32 @brcmf_fil_cmd_data(%struct.brcmf_if*, i32, i32, i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i32, i8*, i64) #1

declare dso_local i32 @brcmf_dbg_hex_dump(i32, i8*, i32, i8*) #1

declare dso_local i32 @BRCMF_FIL_ON(...) #1

declare dso_local i32 @min_t(i32, i64, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
