; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_mod_prb_rsp_rate_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_c_mod_prb_rsp_rate_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.brcms_c_rateset = type { i64, i32* }

@D11_PHY_HDR_LEN = common dso_local global i32 0, align 4
@BRCMS_RATE_MASK = common dso_local global i32 0, align 4
@BRCMS_LONG_PREAMBLE = common dso_local global i32 0, align 4
@M_RT_PRS_PLCP_POS = common dso_local global i64 0, align 8
@M_RT_PRS_DUR_POS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*, i64)* @brcms_c_mod_prb_rsp_rate_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_mod_prb_rsp_rate_table(%struct.brcms_c_info* %0, i64 %1) #0 {
  %3 = alloca %struct.brcms_c_info*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.brcms_c_rateset*, align 8
  %6 = alloca %struct.brcms_c_rateset, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %3, align 8
  store i64 %1, i64* %4, align 8
  %14 = load i32, i32* @D11_PHY_HDR_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %9, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %10, align 8
  %18 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %19 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @get_sifs(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %23 = call %struct.brcms_c_rateset* @brcms_c_rateset_get_hwrs(%struct.brcms_c_info* %22)
  store %struct.brcms_c_rateset* %23, %struct.brcms_c_rateset** %5, align 8
  %24 = load %struct.brcms_c_rateset*, %struct.brcms_c_rateset** %5, align 8
  %25 = call i32 @brcms_c_rateset_copy(%struct.brcms_c_rateset* %24, %struct.brcms_c_rateset* %6)
  %26 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %27 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @brcms_c_rateset_mcs_upd(%struct.brcms_c_rateset* %6, i32 %30)
  store i64 0, i64* %13, align 8
  br label %32

32:                                               ; preds = %99, %2
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %6, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ult i64 %33, %35
  br i1 %36, label %37, label %102

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.brcms_c_rateset, %struct.brcms_c_rateset* %6, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* %13, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @BRCMS_RATE_MASK, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %7, align 4
  %45 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %46 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i64 @brcms_b_rate_shm_offset(i32 %47, i32 %48)
  store i64 %49, i64* %8, align 8
  %50 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @brcms_c_compute_plcp(%struct.brcms_c_info* %50, i32 %51, i64 %52, i32* %17)
  %54 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @BRCMS_LONG_PREAMBLE, align 4
  %57 = load i64, i64* %4, align 8
  %58 = call i64 @brcms_c_calc_frame_time(%struct.brcms_c_info* %54, i32 %55, i32 %56, i64 %57)
  store i64 %58, i64* %11, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %11, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %63 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = load i64, i64* @M_RT_PRS_PLCP_POS, align 8
  %67 = add nsw i64 %65, %66
  %68 = getelementptr inbounds i32, i32* %17, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = getelementptr inbounds i32, i32* %17, i64 1
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 8
  %73 = add nsw i32 %69, %72
  %74 = sext i32 %73 to i64
  %75 = call i32 @brcms_b_write_shm(i32 %64, i64 %67, i64 %74)
  %76 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %77 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @M_RT_PRS_PLCP_POS, align 8
  %81 = add nsw i64 %79, %80
  %82 = add nsw i64 %81, 2
  %83 = getelementptr inbounds i32, i32* %17, i64 2
  %84 = load i32, i32* %83, align 8
  %85 = getelementptr inbounds i32, i32* %17, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 8
  %88 = add nsw i32 %84, %87
  %89 = sext i32 %88 to i64
  %90 = call i32 @brcms_b_write_shm(i32 %78, i64 %82, i64 %89)
  %91 = load %struct.brcms_c_info*, %struct.brcms_c_info** %3, align 8
  %92 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @M_RT_PRS_DUR_POS, align 8
  %96 = add nsw i64 %94, %95
  %97 = load i64, i64* %11, align 8
  %98 = call i32 @brcms_b_write_shm(i32 %93, i64 %96, i64 %97)
  br label %99

99:                                               ; preds = %37
  %100 = load i64, i64* %13, align 8
  %101 = add i64 %100, 1
  store i64 %101, i64* %13, align 8
  br label %32

102:                                              ; preds = %32
  %103 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %103)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @get_sifs(i32) #2

declare dso_local %struct.brcms_c_rateset* @brcms_c_rateset_get_hwrs(%struct.brcms_c_info*) #2

declare dso_local i32 @brcms_c_rateset_copy(%struct.brcms_c_rateset*, %struct.brcms_c_rateset*) #2

declare dso_local i32 @brcms_c_rateset_mcs_upd(%struct.brcms_c_rateset*, i32) #2

declare dso_local i64 @brcms_b_rate_shm_offset(i32, i32) #2

declare dso_local i32 @brcms_c_compute_plcp(%struct.brcms_c_info*, i32, i64, i32*) #2

declare dso_local i64 @brcms_c_calc_frame_time(%struct.brcms_c_info*, i32, i32, i64) #2

declare dso_local i32 @brcms_b_write_shm(i32, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
