; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_table_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_wlc_phy_table_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32, i32, i8*, %struct.TYPE_2__*, i8*, i8* }
%struct.TYPE_2__ = type { i64, i32 }

@BCMA_CHIP_ID_BCM43224 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wlc_phy_table_addr(%struct.brcms_phy* %0, i32 %1, i32 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.brcms_phy*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.brcms_phy* %0, %struct.brcms_phy** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = shl i32 %15, 10
  %17 = load i32, i32* %9, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @write_phy_reg(%struct.brcms_phy* %13, i8* %14, i32 %18)
  %20 = load i8*, i8** %11, align 8
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 5
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %25 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %24, i32 0, i32 4
  store i8* %23, i8** %25, align 8
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %27 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BCMA_CHIP_ID_BCM43224, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %50

33:                                               ; preds = %6
  %34 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %35 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %50

40:                                               ; preds = %33
  %41 = load i8*, i8** %10, align 8
  %42 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %43 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %42, i32 0, i32 2
  store i8* %41, i8** %43, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %7, align 8
  %49 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %33, %6
  ret void
}

declare dso_local i32 @write_phy_reg(%struct.brcms_phy*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
