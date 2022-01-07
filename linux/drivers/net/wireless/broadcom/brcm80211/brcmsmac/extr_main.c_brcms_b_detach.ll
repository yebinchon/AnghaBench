; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_detach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/extr_main.c_brcms_b_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_c_info = type { %struct.brcms_hardware* }
%struct.brcms_hardware = type { i64, i32*, i32, i32, %struct.brcms_hw_band**, %struct.brcms_hw_band* }
%struct.brcms_hw_band = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_c_info*)* @brcms_b_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @brcms_b_detach(%struct.brcms_c_info* %0) #0 {
  %2 = alloca %struct.brcms_c_info*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcms_hw_band*, align 8
  %5 = alloca %struct.brcms_hardware*, align 8
  store %struct.brcms_c_info* %0, %struct.brcms_c_info** %2, align 8
  %6 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %7 = getelementptr inbounds %struct.brcms_c_info, %struct.brcms_c_info* %6, i32 0, i32 0
  %8 = load %struct.brcms_hardware*, %struct.brcms_hardware** %7, align 8
  store %struct.brcms_hardware* %8, %struct.brcms_hardware** %5, align 8
  %9 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %10 = call i32 @brcms_b_detach_dmapio(%struct.brcms_hardware* %9)
  %11 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %12 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %11, i32 0, i32 5
  %13 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %12, align 8
  store %struct.brcms_hw_band* %13, %struct.brcms_hw_band** %4, align 8
  store i64 0, i64* %3, align 8
  br label %14

14:                                               ; preds = %40, %1
  %15 = load i64, i64* %3, align 8
  %16 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %17 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %15, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %14
  %21 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %4, align 8
  %22 = getelementptr inbounds %struct.brcms_hw_band, %struct.brcms_hw_band* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %4, align 8
  %27 = getelementptr inbounds %struct.brcms_hw_band, %struct.brcms_hw_band* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @wlc_phy_detach(i32* %28)
  %30 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %4, align 8
  %31 = getelementptr inbounds %struct.brcms_hw_band, %struct.brcms_hw_band* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %25, %20
  %33 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %34 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %33, i32 0, i32 4
  %35 = load %struct.brcms_hw_band**, %struct.brcms_hw_band*** %34, align 8
  %36 = load %struct.brcms_c_info*, %struct.brcms_c_info** %2, align 8
  %37 = call i64 @OTHERBANDUNIT(%struct.brcms_c_info* %36)
  %38 = getelementptr inbounds %struct.brcms_hw_band*, %struct.brcms_hw_band** %35, i64 %37
  %39 = load %struct.brcms_hw_band*, %struct.brcms_hw_band** %38, align 8
  store %struct.brcms_hw_band* %39, %struct.brcms_hw_band** %4, align 8
  br label %40

40:                                               ; preds = %32
  %41 = load i64, i64* %3, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, i64* %3, align 8
  br label %14

43:                                               ; preds = %14
  %44 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %45 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @kfree(i32 %46)
  %48 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %49 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @wlc_phy_shim_detach(i32 %50)
  %52 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %53 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %43
  %57 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %58 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @ai_detach(i32* %59)
  %61 = load %struct.brcms_hardware*, %struct.brcms_hardware** %5, align 8
  %62 = getelementptr inbounds %struct.brcms_hardware, %struct.brcms_hardware* %61, i32 0, i32 1
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %43
  ret void
}

declare dso_local i32 @brcms_b_detach_dmapio(%struct.brcms_hardware*) #1

declare dso_local i32 @wlc_phy_detach(i32*) #1

declare dso_local i64 @OTHERBANDUNIT(%struct.brcms_c_info*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wlc_phy_shim_detach(i32) #1

declare dso_local i32 @ai_detach(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
