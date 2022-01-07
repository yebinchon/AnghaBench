; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_set_country.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_channel.c_brcms_c_set_country.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_cm_info = type { %struct.brcms_c_info* }
%struct.brcms_c_info = type { %struct.TYPE_4__*, i32*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.brcms_regd = type { i32 }

@SUPPORT_11N = common dso_local global i32 0, align 4
@BAND_2G_INDEX = common dso_local global i64 0, align 8
@BAND_5G_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_cm_info*, %struct.brcms_regd*)* @brcms_c_set_country to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_c_set_country(%struct.brcms_cm_info* %0, %struct.brcms_regd* %1) #0 {
  %3 = alloca %struct.brcms_cm_info*, align 8
  %4 = alloca %struct.brcms_regd*, align 8
  %5 = alloca %struct.brcms_c_info*, align 8
  store %struct.brcms_cm_info* %0, %struct.brcms_cm_info** %3, align 8
  store %struct.brcms_regd* %1, %struct.brcms_regd** %4, align 8
  %6 = load %struct.brcms_cm_info*, %struct.brcms_cm_info** %3, align 8
  %7 = getelementptr inbounds %struct.brcms_cm_info, %struct.brcms_cm_info* %6, i32 0, i32 0
  %8 = load %struct.brcms_c_info*, %struct.brcms_c_info** %7, align 8
  store %struct.brcms_c_info* %8, %struct.brcms_c_info** %5, align 8
  %9 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %10 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %9, i32 0, i32 2
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @SUPPORT_11N, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %17 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %24 = call i32 @brcms_c_set_nmode(%struct.brcms_c_info* %23)
  br label %25

25:                                               ; preds = %22, %2
  %26 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %27 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %28 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @BAND_2G_INDEX, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @brcms_c_stf_ss_update(%struct.brcms_c_info* %26, i32 %32)
  %34 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %35 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %36 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @BAND_5G_INDEX, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @brcms_c_stf_ss_update(%struct.brcms_c_info* %34, i32 %40)
  %42 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %43 = load %struct.brcms_c_info*, %struct.brcms_c_info** %5, align 8
  %44 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @brcms_c_set_gmode(%struct.brcms_c_info* %42, i32 %47, i32 0)
  ret void
}

declare dso_local i32 @brcms_c_set_nmode(%struct.brcms_c_info*) #1

declare dso_local i32 @brcms_c_stf_ss_update(%struct.brcms_c_info*, i32) #1

declare dso_local i32 @brcms_c_set_gmode(%struct.brcms_c_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
