; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_reconfigure_xgxs_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_reconfigure_xgxs_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64 }

@LOOPBACK_XGXS = common dso_local global i64 0, align 8
@LOOPBACK_XAUI = common dso_local global i64 0, align 8
@LOOPBACK_XGMII = common dso_local global i64 0, align 8
@FR_AB_XX_CORE_STAT = common dso_local global i32 0, align 4
@FRF_AB_XX_XGXS_LB_EN = common dso_local global i32 0, align 4
@FRF_AB_XX_XGMII_LB_EN = common dso_local global i32 0, align 4
@FR_AB_XX_SD_CTL = common dso_local global i32 0, align 4
@FRF_AB_XX_LPBKA = common dso_local global i32 0, align 4
@FRF_AB_XX_FORCE_SIG = common dso_local global i32 0, align 4
@FFE_AB_XX_FORCE_SIG_ALL_LANES = common dso_local global i32 0, align 4
@FRF_AB_XX_LPBKD = common dso_local global i32 0, align 4
@FRF_AB_XX_LPBKC = common dso_local global i32 0, align 4
@FRF_AB_XX_LPBKB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_reconfigure_xgxs_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_reconfigure_xgxs_core(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LOOPBACK_XGXS, align 8
  %14 = icmp eq i64 %12, %13
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %17 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @LOOPBACK_XAUI, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %5, align 4
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %23 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @LOOPBACK_XGMII, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %29 = load i32, i32* @FR_AB_XX_CORE_STAT, align 4
  %30 = call i32 @ef4_reado(%struct.ef4_nic* %28, i32* %3, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @FRF_AB_XX_XGXS_LB_EN, align 4
  %33 = call i32 @EF4_OWORD_FIELD(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @FRF_AB_XX_XGMII_LB_EN, align 4
  %36 = call i32 @EF4_OWORD_FIELD(i32 %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %38 = load i32, i32* @FR_AB_XX_SD_CTL, align 4
  %39 = call i32 @ef4_reado(%struct.ef4_nic* %37, i32* %3, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @FRF_AB_XX_LPBKA, align 4
  %42 = call i32 @EF4_OWORD_FIELD(i32 %40, i32 %41)
  store i32 %42, i32* %9, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %1
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %54, label %50

50:                                               ; preds = %46
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50, %46, %1
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %56 = call i32 @falcon_reset_xaui(%struct.ef4_nic* %55)
  br label %57

57:                                               ; preds = %54, %50
  %58 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %59 = load i32, i32* @FR_AB_XX_CORE_STAT, align 4
  %60 = call i32 @ef4_reado(%struct.ef4_nic* %58, i32* %3, i32 %59)
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @FRF_AB_XX_FORCE_SIG, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %57
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65, %57
  %69 = load i32, i32* @FFE_AB_XX_FORCE_SIG_ALL_LANES, align 4
  br label %71

70:                                               ; preds = %65
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = call i32 @EF4_SET_OWORD_FIELD(i32 %61, i32 %62, i32 %72)
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @FRF_AB_XX_XGXS_LB_EN, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @EF4_SET_OWORD_FIELD(i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @FRF_AB_XX_XGMII_LB_EN, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @EF4_SET_OWORD_FIELD(i32 %78, i32 %79, i32 %80)
  %82 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %83 = load i32, i32* @FR_AB_XX_CORE_STAT, align 4
  %84 = call i32 @ef4_writeo(%struct.ef4_nic* %82, i32* %3, i32 %83)
  %85 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %86 = load i32, i32* @FR_AB_XX_SD_CTL, align 4
  %87 = call i32 @ef4_reado(%struct.ef4_nic* %85, i32* %3, i32 %86)
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* @FRF_AB_XX_LPBKD, align 4
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @EF4_SET_OWORD_FIELD(i32 %88, i32 %89, i32 %90)
  %92 = load i32, i32* %3, align 4
  %93 = load i32, i32* @FRF_AB_XX_LPBKC, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @EF4_SET_OWORD_FIELD(i32 %92, i32 %93, i32 %94)
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @FRF_AB_XX_LPBKB, align 4
  %98 = load i32, i32* %5, align 4
  %99 = call i32 @EF4_SET_OWORD_FIELD(i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* @FRF_AB_XX_LPBKA, align 4
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @EF4_SET_OWORD_FIELD(i32 %100, i32 %101, i32 %102)
  %104 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %105 = load i32, i32* @FR_AB_XX_SD_CTL, align 4
  %106 = call i32 @ef4_writeo(%struct.ef4_nic* %104, i32* %3, i32 %105)
  ret void
}

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @falcon_reset_xaui(%struct.ef4_nic*) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
