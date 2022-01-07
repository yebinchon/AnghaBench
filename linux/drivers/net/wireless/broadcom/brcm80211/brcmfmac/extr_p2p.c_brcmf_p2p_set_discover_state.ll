; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_set_discover_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_p2p.c_brcmf_p2p_set_discover_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_if = type { i32 }
%struct.brcmf_p2p_disc_st_le = type { i8*, i8*, i32 }

@TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"p2p_state\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_if*, i32, i32, i32)* @brcmf_p2p_set_discover_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_p2p_set_discover_state(%struct.brcmf_if* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcmf_if*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.brcmf_p2p_disc_st_le, align 8
  %10 = alloca i32, align 4
  store %struct.brcmf_if* %0, %struct.brcmf_if** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @TRACE, align 4
  %12 = call i32 @brcmf_dbg(i32 %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, %struct.brcmf_p2p_disc_st_le* %9, i32 0, i32 2
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @cpu_to_le16(i32 %15)
  %17 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, %struct.brcmf_p2p_disc_st_le* %9, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i8* @cpu_to_le16(i32 %18)
  %20 = getelementptr inbounds %struct.brcmf_p2p_disc_st_le, %struct.brcmf_p2p_disc_st_le* %9, i32 0, i32 0
  store i8* %19, i8** %20, align 8
  %21 = load %struct.brcmf_if*, %struct.brcmf_if** %5, align 8
  %22 = call i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.brcmf_p2p_disc_st_le* %9, i32 24)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  ret i32 %23
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @brcmf_fil_bsscfg_data_set(%struct.brcmf_if*, i8*, %struct.brcmf_p2p_disc_st_le*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
