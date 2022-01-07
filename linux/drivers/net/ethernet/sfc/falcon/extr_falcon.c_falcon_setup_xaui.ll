; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_setup_xaui.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_setup_xaui.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64 }

@PHY_TYPE_NONE = common dso_local global i64 0, align 8
@FR_AB_XX_SD_CTL = common dso_local global i32 0, align 4
@FRF_AB_XX_HIDRVD = common dso_local global i32 0, align 4
@FFE_AB_XX_SD_CTL_DRV_DEF = common dso_local global i32 0, align 4
@FRF_AB_XX_LODRVD = common dso_local global i32 0, align 4
@FRF_AB_XX_HIDRVC = common dso_local global i32 0, align 4
@FRF_AB_XX_LODRVC = common dso_local global i32 0, align 4
@FRF_AB_XX_HIDRVB = common dso_local global i32 0, align 4
@FRF_AB_XX_LODRVB = common dso_local global i32 0, align 4
@FRF_AB_XX_HIDRVA = common dso_local global i32 0, align 4
@FRF_AB_XX_LODRVA = common dso_local global i32 0, align 4
@FRF_AB_XX_DEQD = common dso_local global i32 0, align 4
@FFE_AB_XX_TXDRV_DEQ_DEF = common dso_local global i32 0, align 4
@FRF_AB_XX_DEQC = common dso_local global i32 0, align 4
@FRF_AB_XX_DEQB = common dso_local global i32 0, align 4
@FRF_AB_XX_DEQA = common dso_local global i32 0, align 4
@FRF_AB_XX_DTXD = common dso_local global i32 0, align 4
@FFE_AB_XX_TXDRV_DTX_DEF = common dso_local global i32 0, align 4
@FRF_AB_XX_DTXC = common dso_local global i32 0, align 4
@FRF_AB_XX_DTXB = common dso_local global i32 0, align 4
@FRF_AB_XX_DTXA = common dso_local global i32 0, align 4
@FR_AB_XX_TXDRV_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_setup_xaui to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_setup_xaui(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %5 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %6 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PHY_TYPE_NONE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %71

11:                                               ; preds = %1
  %12 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %13 = load i32, i32* @FR_AB_XX_SD_CTL, align 4
  %14 = call i32 @ef4_reado(%struct.ef4_nic* %12, i32* %3, i32 %13)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @FRF_AB_XX_HIDRVD, align 4
  %17 = load i32, i32* @FFE_AB_XX_SD_CTL_DRV_DEF, align 4
  %18 = call i32 @EF4_SET_OWORD_FIELD(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @FRF_AB_XX_LODRVD, align 4
  %21 = load i32, i32* @FFE_AB_XX_SD_CTL_DRV_DEF, align 4
  %22 = call i32 @EF4_SET_OWORD_FIELD(i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @FRF_AB_XX_HIDRVC, align 4
  %25 = load i32, i32* @FFE_AB_XX_SD_CTL_DRV_DEF, align 4
  %26 = call i32 @EF4_SET_OWORD_FIELD(i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @FRF_AB_XX_LODRVC, align 4
  %29 = load i32, i32* @FFE_AB_XX_SD_CTL_DRV_DEF, align 4
  %30 = call i32 @EF4_SET_OWORD_FIELD(i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @FRF_AB_XX_HIDRVB, align 4
  %33 = load i32, i32* @FFE_AB_XX_SD_CTL_DRV_DEF, align 4
  %34 = call i32 @EF4_SET_OWORD_FIELD(i32 %31, i32 %32, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @FRF_AB_XX_LODRVB, align 4
  %37 = load i32, i32* @FFE_AB_XX_SD_CTL_DRV_DEF, align 4
  %38 = call i32 @EF4_SET_OWORD_FIELD(i32 %35, i32 %36, i32 %37)
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @FRF_AB_XX_HIDRVA, align 4
  %41 = load i32, i32* @FFE_AB_XX_SD_CTL_DRV_DEF, align 4
  %42 = call i32 @EF4_SET_OWORD_FIELD(i32 %39, i32 %40, i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @FRF_AB_XX_LODRVA, align 4
  %45 = load i32, i32* @FFE_AB_XX_SD_CTL_DRV_DEF, align 4
  %46 = call i32 @EF4_SET_OWORD_FIELD(i32 %43, i32 %44, i32 %45)
  %47 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %48 = load i32, i32* @FR_AB_XX_SD_CTL, align 4
  %49 = call i32 @ef4_writeo(%struct.ef4_nic* %47, i32* %3, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @FRF_AB_XX_DEQD, align 4
  %52 = load i32, i32* @FFE_AB_XX_TXDRV_DEQ_DEF, align 4
  %53 = load i32, i32* @FRF_AB_XX_DEQC, align 4
  %54 = load i32, i32* @FFE_AB_XX_TXDRV_DEQ_DEF, align 4
  %55 = load i32, i32* @FRF_AB_XX_DEQB, align 4
  %56 = load i32, i32* @FFE_AB_XX_TXDRV_DEQ_DEF, align 4
  %57 = load i32, i32* @FRF_AB_XX_DEQA, align 4
  %58 = load i32, i32* @FFE_AB_XX_TXDRV_DEQ_DEF, align 4
  %59 = load i32, i32* @FRF_AB_XX_DTXD, align 4
  %60 = load i32, i32* @FFE_AB_XX_TXDRV_DTX_DEF, align 4
  %61 = load i32, i32* @FRF_AB_XX_DTXC, align 4
  %62 = load i32, i32* @FFE_AB_XX_TXDRV_DTX_DEF, align 4
  %63 = load i32, i32* @FRF_AB_XX_DTXB, align 4
  %64 = load i32, i32* @FFE_AB_XX_TXDRV_DTX_DEF, align 4
  %65 = load i32, i32* @FRF_AB_XX_DTXA, align 4
  %66 = load i32, i32* @FFE_AB_XX_TXDRV_DTX_DEF, align 4
  %67 = call i32 @EF4_POPULATE_OWORD_8(i32 %50, i32 %51, i32 %52, i32 %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58, i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32 %65, i32 %66)
  %68 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %69 = load i32, i32* @FR_AB_XX_TXDRV_CTL, align 4
  %70 = call i32 @ef4_writeo(%struct.ef4_nic* %68, i32* %4, i32 %69)
  br label %71

71:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_8(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
