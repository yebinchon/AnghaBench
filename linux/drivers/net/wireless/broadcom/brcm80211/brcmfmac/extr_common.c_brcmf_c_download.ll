; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_c_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_common.c_brcmf_c_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }
%struct.brcmf_dload_data_le = type { i8*, i8*, i8*, i8* }

@DLOAD_HANDLER_VER = common dso_local global i32 0, align 4
@DLOAD_FLAG_VER_SHIFT = common dso_local global i32 0, align 4
@DL_TYPE_CLM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"clmload\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, i32, %struct.brcmf_dload_data_le*, i64)* @brcmf_c_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_c_download(%struct.brcmf_if* %0, i32 %1, %struct.brcmf_dload_data_le* %2, i64 %3) #0 {
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.brcmf_dload_data_le*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.brcmf_dload_data_le* %2, %struct.brcmf_dload_data_le** %7, align 8
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* @DLOAD_HANDLER_VER, align 4
  %11 = load i32, i32* @DLOAD_FLAG_VER_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %7, align 8
  %18 = getelementptr inbounds %struct.brcmf_dload_data_le, %struct.brcmf_dload_data_le* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @DL_TYPE_CLM, align 4
  %20 = call i8* @cpu_to_le16(i32 %19)
  %21 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %7, align 8
  %22 = getelementptr inbounds %struct.brcmf_dload_data_le, %struct.brcmf_dload_data_le* %21, i32 0, i32 2
  store i8* %20, i8** %22, align 8
  %23 = load i64, i64* %8, align 8
  %24 = call i8* @cpu_to_le32(i64 %23)
  %25 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %7, align 8
  %26 = getelementptr inbounds %struct.brcmf_dload_data_le, %struct.brcmf_dload_data_le* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = call i8* @cpu_to_le32(i64 0)
  %28 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %7, align 8
  %29 = getelementptr inbounds %struct.brcmf_dload_data_le, %struct.brcmf_dload_data_le* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load i64, i64* %8, align 8
  %31 = add i64 32, %30
  %32 = sub i64 %31, 1
  store i64 %32, i64* %8, align 8
  %33 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %34 = load %struct.brcmf_dload_data_le*, %struct.brcmf_dload_data_le** %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = call i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if* %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.brcmf_dload_data_le* %34, i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  ret i32 %37
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @brcmf_fil_iovar_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_dload_data_le*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
