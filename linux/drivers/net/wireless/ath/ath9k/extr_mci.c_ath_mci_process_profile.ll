; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_process_profile.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_mci.c_ath_mci_process_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { %struct.ath_btcoex, i32 }
%struct.ath_btcoex = type { %struct.ath_mci_profile }
%struct.ath_mci_profile = type { i32 }
%struct.ath_mci_profile_info = type { i64, i64 }
%struct.ath_common = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*, %struct.ath_mci_profile_info*)* @ath_mci_process_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_mci_process_profile(%struct.ath_softc* %0, %struct.ath_mci_profile_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_softc*, align 8
  %5 = alloca %struct.ath_mci_profile_info*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca %struct.ath_btcoex*, align 8
  %8 = alloca %struct.ath_mci_profile*, align 8
  %9 = alloca %struct.ath_mci_profile_info*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %4, align 8
  store %struct.ath_mci_profile_info* %1, %struct.ath_mci_profile_info** %5, align 8
  %10 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %11 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ath_common* @ath9k_hw_common(i32 %12)
  store %struct.ath_common* %13, %struct.ath_common** %6, align 8
  %14 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %15 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %14, i32 0, i32 0
  store %struct.ath_btcoex* %15, %struct.ath_btcoex** %7, align 8
  %16 = load %struct.ath_btcoex*, %struct.ath_btcoex** %7, align 8
  %17 = getelementptr inbounds %struct.ath_btcoex, %struct.ath_btcoex* %16, i32 0, i32 0
  store %struct.ath_mci_profile* %17, %struct.ath_mci_profile** %8, align 8
  store %struct.ath_mci_profile_info* null, %struct.ath_mci_profile_info** %9, align 8
  %18 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %8, align 8
  %19 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %5, align 8
  %20 = call %struct.ath_mci_profile_info* @ath_mci_find_profile(%struct.ath_mci_profile* %18, %struct.ath_mci_profile_info* %19)
  store %struct.ath_mci_profile_info* %20, %struct.ath_mci_profile_info** %9, align 8
  %21 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %9, align 8
  %22 = icmp ne %struct.ath_mci_profile_info* %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %2
  %24 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %9, align 8
  %25 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %5, align 8
  %28 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %8, align 8
  %33 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %9, align 8
  %34 = call i32 @DEC_PROF(%struct.ath_mci_profile* %32, %struct.ath_mci_profile_info* %33)
  %35 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %8, align 8
  %36 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %5, align 8
  %37 = call i32 @INC_PROF(%struct.ath_mci_profile* %35, %struct.ath_mci_profile_info* %36)
  br label %38

38:                                               ; preds = %31, %23
  %39 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %9, align 8
  %40 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %5, align 8
  %41 = call i32 @memcpy(%struct.ath_mci_profile_info* %39, %struct.ath_mci_profile_info* %40, i32 10)
  br label %42

42:                                               ; preds = %38, %2
  %43 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %5, align 8
  %44 = getelementptr inbounds %struct.ath_mci_profile_info, %struct.ath_mci_profile_info* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %9, align 8
  %49 = icmp ne %struct.ath_mci_profile_info* %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %47
  %51 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %52 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %8, align 8
  %53 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %5, align 8
  %54 = call i32 @ath_mci_add_profile(%struct.ath_common* %51, %struct.ath_mci_profile* %52, %struct.ath_mci_profile_info* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %66

57:                                               ; preds = %50, %47
  br label %63

58:                                               ; preds = %42
  %59 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %60 = load %struct.ath_mci_profile*, %struct.ath_mci_profile** %8, align 8
  %61 = load %struct.ath_mci_profile_info*, %struct.ath_mci_profile_info** %9, align 8
  %62 = call i32 @ath_mci_del_profile(%struct.ath_common* %59, %struct.ath_mci_profile* %60, %struct.ath_mci_profile_info* %61)
  br label %63

63:                                               ; preds = %58, %57
  %64 = load %struct.ath_softc*, %struct.ath_softc** %4, align 8
  %65 = call i32 @ath_mci_set_concur_txprio(%struct.ath_softc* %64)
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %63, %56
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.ath_common* @ath9k_hw_common(i32) #1

declare dso_local %struct.ath_mci_profile_info* @ath_mci_find_profile(%struct.ath_mci_profile*, %struct.ath_mci_profile_info*) #1

declare dso_local i32 @DEC_PROF(%struct.ath_mci_profile*, %struct.ath_mci_profile_info*) #1

declare dso_local i32 @INC_PROF(%struct.ath_mci_profile*, %struct.ath_mci_profile_info*) #1

declare dso_local i32 @memcpy(%struct.ath_mci_profile_info*, %struct.ath_mci_profile_info*, i32) #1

declare dso_local i32 @ath_mci_add_profile(%struct.ath_common*, %struct.ath_mci_profile*, %struct.ath_mci_profile_info*) #1

declare dso_local i32 @ath_mci_del_profile(%struct.ath_common*, %struct.ath_mci_profile*, %struct.ath_mci_profile_info*) #1

declare dso_local i32 @ath_mci_set_concur_txprio(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
