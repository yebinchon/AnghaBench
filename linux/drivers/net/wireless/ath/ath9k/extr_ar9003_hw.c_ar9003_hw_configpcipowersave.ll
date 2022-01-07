; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_hw_configpcipowersave.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_hw.c_ar9003_hw_configpcipowersave.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32, %struct.ar5416IniArray, %struct.ar5416IniArray, %struct.TYPE_2__ }
%struct.ar5416IniArray = type { i32 }
%struct.TYPE_2__ = type { i32 }

@AR_PCIE_PM_CTRL = common dso_local global i32 0, align 4
@AR_PCIE_PM_CTRL_ENA = common dso_local global i32 0, align 4
@AR_WA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*, i32)* @ar9003_hw_configpcipowersave to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9003_hw_configpcipowersave(%struct.ath_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ar5416IniArray*, align 8
  %7 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %9 = call i64 @AR_SREV_9462(%struct.ath_hw* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %16, -16777216
  %18 = icmp eq i32 %17, 385875968
  br i1 %18, label %19, label %27

19:                                               ; preds = %11
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 16777215
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = or i32 %22, 654311424
  store i32 %23, i32* %7, align 4
  %24 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @REG_WRITE(%struct.ath_hw* %24, i32 22284, i32 %25)
  br label %27

27:                                               ; preds = %19, %11
  br label %28

28:                                               ; preds = %27, %2
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %42, label %31

31:                                               ; preds = %28
  %32 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %33 = load i32, i32* @AR_PCIE_PM_CTRL, align 4
  %34 = load i32, i32* @AR_PCIE_PM_CTRL_ENA, align 4
  %35 = call i32 @REG_SET_BIT(%struct.ath_hw* %32, i32 %33, i32 %34)
  %36 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %37 = load i32, i32* @AR_WA, align 4
  %38 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %39 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @REG_WRITE(%struct.ath_hw* %36, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %31, %28
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %46, i32 0, i32 2
  br label %51

48:                                               ; preds = %42
  %49 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %49, i32 0, i32 1
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi %struct.ar5416IniArray* [ %47, %45 ], [ %50, %48 ]
  store %struct.ar5416IniArray* %52, %struct.ar5416IniArray** %6, align 8
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %68, %51
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %6, align 8
  %56 = getelementptr inbounds %struct.ar5416IniArray, %struct.ar5416IniArray* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load %struct.ath_hw*, %struct.ath_hw** %3, align 8
  %61 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %6, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @INI_RA(%struct.ar5416IniArray* %61, i32 %62, i32 0)
  %64 = load %struct.ar5416IniArray*, %struct.ar5416IniArray** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @INI_RA(%struct.ar5416IniArray* %64, i32 %65, i32 1)
  %67 = call i32 @REG_WRITE(%struct.ath_hw* %60, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %5, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %53

71:                                               ; preds = %53
  ret void
}

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @REG_SET_BIT(%struct.ath_hw*, i32, i32) #1

declare dso_local i32 @INI_RA(%struct.ar5416IniArray*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
