; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_update_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/admtek/extr_adm8211.c_adm8211_update_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.adm8211_priv* }
%struct.adm8211_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ADM8211_NAR_PR = common dso_local global i32 0, align 4
@ADM8211_NAR_EA = common dso_local global i32 0, align 4
@ADM8211_NAR_ST = common dso_local global i32 0, align 4
@ADM8211_NAR_SR = common dso_local global i32 0, align 4
@ADM8211_REV_BA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @adm8211_update_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adm8211_update_mode(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.adm8211_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.adm8211_priv*, %struct.adm8211_priv** %5, align 8
  store %struct.adm8211_priv* %6, %struct.adm8211_priv** %3, align 8
  %7 = call i32 (...) @ADM8211_IDLE()
  %8 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %9 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %11 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %72 [
    i32 128, label %13
    i32 130, label %29
    i32 129, label %56
  ]

13:                                               ; preds = %1
  %14 = load i32, i32* @ADM8211_NAR_PR, align 4
  %15 = load i32, i32* @ADM8211_NAR_EA, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %19 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @ADM8211_NAR_ST, align 4
  %23 = load i32, i32* @ADM8211_NAR_SR, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %26 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %72

29:                                               ; preds = %1
  %30 = load i32, i32* @ADM8211_NAR_PR, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %33 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load i32, i32* @ADM8211_NAR_EA, align 4
  %37 = load i32, i32* @ADM8211_NAR_ST, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @ADM8211_NAR_SR, align 4
  %40 = or i32 %38, %39
  %41 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %42 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 8
  %45 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %46 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %45, i32 0, i32 3
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ADM8211_REV_BA, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %29
  %53 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %54 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %52, %29
  br label %72

56:                                               ; preds = %1
  %57 = load i32, i32* @ADM8211_NAR_EA, align 4
  %58 = load i32, i32* @ADM8211_NAR_ST, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %62 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load i32, i32* @ADM8211_NAR_PR, align 4
  %66 = load i32, i32* @ADM8211_NAR_SR, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.adm8211_priv*, %struct.adm8211_priv** %3, align 8
  %69 = getelementptr inbounds %struct.adm8211_priv, %struct.adm8211_priv* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %1, %56, %55, %13
  %73 = call i32 (...) @ADM8211_RESTORE()
  ret void
}

declare dso_local i32 @ADM8211_IDLE(...) #1

declare dso_local i32 @ADM8211_RESTORE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
