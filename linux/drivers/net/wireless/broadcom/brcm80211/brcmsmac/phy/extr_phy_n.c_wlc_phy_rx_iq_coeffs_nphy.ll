; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rx_iq_coeffs_nphy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_n.c_wlc_phy_rx_iq_coeffs_nphy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.nphy_iq_comp = type { i8*, i8*, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_rx_iq_coeffs_nphy(%struct.brcms_phy* %0, i64 %1, %struct.nphy_iq_comp* %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nphy_iq_comp*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.nphy_iq_comp* %2, %struct.nphy_iq_comp** %6, align 8
  %7 = load i64, i64* %5, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %3
  %10 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %11 = load %struct.nphy_iq_comp*, %struct.nphy_iq_comp** %6, align 8
  %12 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %11, i32 0, i32 3
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @write_phy_reg(%struct.brcms_phy* %10, i32 154, i8* %13)
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %16 = load %struct.nphy_iq_comp*, %struct.nphy_iq_comp** %6, align 8
  %17 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %16, i32 0, i32 2
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @write_phy_reg(%struct.brcms_phy* %15, i32 155, i8* %18)
  %20 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %21 = load %struct.nphy_iq_comp*, %struct.nphy_iq_comp** %6, align 8
  %22 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @write_phy_reg(%struct.brcms_phy* %20, i32 156, i8* %23)
  %25 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %26 = load %struct.nphy_iq_comp*, %struct.nphy_iq_comp** %6, align 8
  %27 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @write_phy_reg(%struct.brcms_phy* %25, i32 157, i8* %28)
  br label %47

30:                                               ; preds = %3
  %31 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %32 = call i8* @read_phy_reg(%struct.brcms_phy* %31, i32 154)
  %33 = load %struct.nphy_iq_comp*, %struct.nphy_iq_comp** %6, align 8
  %34 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %36 = call i8* @read_phy_reg(%struct.brcms_phy* %35, i32 155)
  %37 = load %struct.nphy_iq_comp*, %struct.nphy_iq_comp** %6, align 8
  %38 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %40 = call i8* @read_phy_reg(%struct.brcms_phy* %39, i32 156)
  %41 = load %struct.nphy_iq_comp*, %struct.nphy_iq_comp** %6, align 8
  %42 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %44 = call i8* @read_phy_reg(%struct.brcms_phy* %43, i32 157)
  %45 = load %struct.nphy_iq_comp*, %struct.nphy_iq_comp** %6, align 8
  %46 = getelementptr inbounds %struct.nphy_iq_comp, %struct.nphy_iq_comp* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  br label %47

47:                                               ; preds = %30, %9
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i32, i8*) #1

declare dso_local i8* @read_phy_reg(%struct.brcms_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
