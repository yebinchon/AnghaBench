; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_write_bbp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_write_bbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32 }

@BBPCTL = common dso_local global i32 0, align 4
@ADM8211_BBPCTL_WR = common dso_local global i32 0, align 4
@ADM8211_BBPCTL_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"adm8211_write_bbp(%d,%d) failed prewrite (reg=0x%08x)\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@ADM8211_BBPCTL_MMISEL = common dso_local global i32 0, align 4
@ADM8211_BBPCTL_TXCE = common dso_local global i32 0, align 4
@ADM8211_BBPCTL_CCAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"adm8211_write_bbp(%d,%d) failed postwrite (reg=0x%08x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32, i32)* @adm8211_write_bbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adm8211_write_bbp(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adm8211_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 1
  %13 = load %struct.adm8211_priv*, %struct.adm8211_priv** %12, align 8
  store %struct.adm8211_priv* %13, %struct.adm8211_priv** %8, align 8
  store i32 10, i32* %9, align 4
  br label %14

14:                                               ; preds = %27, %3
  %15 = load i32, i32* %9, align 4
  %16 = icmp ugt i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load i32, i32* @BBPCTL, align 4
  %19 = call i32 @ADM8211_CSR_READ(i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @ADM8211_BBPCTL_WR, align 4
  %22 = load i32, i32* @ADM8211_BBPCTL_RD, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %17
  br label %31

27:                                               ; preds = %17
  %28 = load i32, i32* %9, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %9, align 4
  %30 = call i32 @msleep(i32 2)
  br label %14

31:                                               ; preds = %26, %14
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %10, align 4
  %41 = call i32 @wiphy_debug(i32 %37, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @ETIMEDOUT, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %110

44:                                               ; preds = %31
  %45 = load %struct.adm8211_priv*, %struct.adm8211_priv** %8, align 8
  %46 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %62 [
    i32 129, label %48
    i32 128, label %50
    i32 130, label %56
  ]

48:                                               ; preds = %44
  %49 = load i32, i32* @ADM8211_BBPCTL_MMISEL, align 4
  store i32 %49, i32* %10, align 4
  br label %62

50:                                               ; preds = %44
  %51 = load i32, i32* @ADM8211_BBPCTL_TXCE, align 4
  %52 = or i32 536870912, %51
  %53 = load i32, i32* @ADM8211_BBPCTL_CCAP, align 4
  %54 = or i32 %52, %53
  %55 = or i32 %54, 262144
  store i32 %55, i32* %10, align 4
  br label %62

56:                                               ; preds = %44
  %57 = load i32, i32* @ADM8211_BBPCTL_TXCE, align 4
  %58 = or i32 536870912, %57
  %59 = load i32, i32* @ADM8211_BBPCTL_CCAP, align 4
  %60 = or i32 %58, %59
  %61 = or i32 %60, 1310720
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %44, %56, %50, %48
  %63 = load i32, i32* @ADM8211_BBPCTL_WR, align 4
  %64 = load i32, i32* %6, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %63, %65
  %67 = load i32, i32* %7, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @BBPCTL, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @ADM8211_CSR_WRITE(i32 %71, i32 %72)
  store i32 10, i32* %9, align 4
  br label %74

74:                                               ; preds = %85, %62
  %75 = load i32, i32* %9, align 4
  %76 = icmp ugt i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load i32, i32* @BBPCTL, align 4
  %79 = call i32 @ADM8211_CSR_READ(i32 %78)
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @ADM8211_BBPCTL_WR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %77
  br label %89

85:                                               ; preds = %77
  %86 = load i32, i32* %9, align 4
  %87 = add i32 %86, -1
  store i32 %87, i32* %9, align 4
  %88 = call i32 @msleep(i32 2)
  br label %74

89:                                               ; preds = %84, %74
  %90 = load i32, i32* %9, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %89
  %93 = load i32, i32* @BBPCTL, align 4
  %94 = load i32, i32* @BBPCTL, align 4
  %95 = call i32 @ADM8211_CSR_READ(i32 %94)
  %96 = load i32, i32* @ADM8211_BBPCTL_WR, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = call i32 @ADM8211_CSR_WRITE(i32 %93, i32 %98)
  %100 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %101 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @wiphy_debug(i32 %102, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %103, i32 %104, i32 %105)
  %107 = load i32, i32* @ETIMEDOUT, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %4, align 4
  br label %110

109:                                              ; preds = %89
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %109, %92, %34
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @ADM8211_CSR_READ(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @wiphy_debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @ADM8211_CSR_WRITE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
