; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_write_radio_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_cmn.c_write_radio_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i64, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32 }

@PHY_TYPE_SSN = common dso_local global i64 0, align 8
@radioregaddr = common dso_local global i32 0, align 4
@radioregdata = common dso_local global i32 0, align 4
@phy4waddr = common dso_local global i32 0, align 4
@phy4wdatalo = common dso_local global i32 0, align 4
@BCMA_HOSTTYPE_PCI = common dso_local global i64 0, align 8
@maccontrol = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_radio_reg(%struct.brcms_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @D11REV_GE(i32 %11, i32 24)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %3
  %15 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %16 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %15, i32 0, i32 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @D11REV_IS(i32 %19, i32 22)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %14
  %23 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %24 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PHY_TYPE_SSN, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %22, %3
  %30 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %31 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %30, i32 0, i32 2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %31, align 8
  %33 = load i32, i32* @radioregaddr, align 4
  %34 = call i32 @D11REGOFFS(i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @bcma_wflush16(%struct.TYPE_10__* %32, i32 %34, i32 %35)
  %37 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %38 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %37, i32 0, i32 2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = load i32, i32* @radioregdata, align 4
  %41 = call i32 @D11REGOFFS(i32 %40)
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @bcma_write16(%struct.TYPE_10__* %39, i32 %41, i32 %42)
  br label %59

44:                                               ; preds = %22, %14
  %45 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %46 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %45, i32 0, i32 2
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %46, align 8
  %48 = load i32, i32* @phy4waddr, align 4
  %49 = call i32 @D11REGOFFS(i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @bcma_wflush16(%struct.TYPE_10__* %47, i32 %49, i32 %50)
  %52 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %53 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %52, i32 0, i32 2
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %53, align 8
  %55 = load i32, i32* @phy4wdatalo, align 4
  %56 = call i32 @D11REGOFFS(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @bcma_write16(%struct.TYPE_10__* %54, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %44, %29
  %60 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %61 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %60, i32 0, i32 2
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @BCMA_HOSTTYPE_PCI, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %59
  %70 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %71 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %75 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp sge i64 %73, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %69
  %79 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %80 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %79, i32 0, i32 2
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = load i32, i32* @maccontrol, align 4
  %83 = call i32 @D11REGOFFS(i32 %82)
  %84 = call i32 @bcma_read32(%struct.TYPE_10__* %81, i32 %83)
  %85 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %86 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %85, i32 0, i32 0
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %78, %69, %59
  ret void
}

declare dso_local i64 @D11REV_GE(i32, i32) #1

declare dso_local i64 @D11REV_IS(i32, i32) #1

declare dso_local i32 @bcma_wflush16(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_write16(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @bcma_read32(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
