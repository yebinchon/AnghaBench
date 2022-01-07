; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ef4_nic = type { i32, %struct.falcon_nic_data* }
%struct.falcon_nic_data = type { i32 }

@FRF_AB_MD_PHY_ADR = common dso_local global i32 0, align 4
@FR_AB_MD_PHY_ADR = common dso_local global i32 0, align 4
@FRF_AB_MD_PRT_ADR = common dso_local global i32 0, align 4
@FRF_AB_MD_DEV_ADR = common dso_local global i32 0, align 4
@FR_AB_MD_ID = common dso_local global i32 0, align 4
@FRF_AB_MD_RDC = common dso_local global i32 0, align 4
@FRF_AB_MD_GC = common dso_local global i32 0, align 4
@FR_AB_MD_CS = common dso_local global i32 0, align 4
@FR_AB_MD_RXD = common dso_local global i32 0, align 4
@FRF_AB_MD_RXD = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"read from MDIO %d register %d.%d, got %04x\0A\00", align 1
@FRF_AB_MD_RIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"read from MDIO %d register %d.%d, got error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @falcon_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @falcon_mdio_read(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ef4_nic*, align 8
  %10 = alloca %struct.falcon_nic_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %13)
  store %struct.ef4_nic* %14, %struct.ef4_nic** %9, align 8
  %15 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %16 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %15, i32 0, i32 1
  %17 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %16, align 8
  store %struct.falcon_nic_data* %17, %struct.falcon_nic_data** %10, align 8
  %18 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %10, align 8
  %19 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %22 = call i32 @falcon_gmii_wait(%struct.ef4_nic* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %90

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @FRF_AB_MD_PHY_ADR, align 4
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @EF4_POPULATE_OWORD_1(i32 %27, i32 %28, i32 %29)
  %31 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %32 = load i32, i32* @FR_AB_MD_PHY_ADR, align 4
  %33 = call i32 @ef4_writeo(%struct.ef4_nic* %31, i32* %11, i32 %32)
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @FRF_AB_MD_PRT_ADR, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @FRF_AB_MD_DEV_ADR, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @EF4_POPULATE_OWORD_2(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %41 = load i32, i32* @FR_AB_MD_ID, align 4
  %42 = call i32 @ef4_writeo(%struct.ef4_nic* %40, i32* %11, i32 %41)
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @FRF_AB_MD_RDC, align 4
  %45 = load i32, i32* @FRF_AB_MD_GC, align 4
  %46 = call i32 @EF4_POPULATE_OWORD_2(i32 %43, i32 %44, i32 1, i32 %45, i32 0)
  %47 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %48 = load i32, i32* @FR_AB_MD_CS, align 4
  %49 = call i32 @ef4_writeo(%struct.ef4_nic* %47, i32* %11, i32 %48)
  %50 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %51 = call i32 @falcon_gmii_wait(%struct.ef4_nic* %50)
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %26
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %56 = load i32, i32* @FR_AB_MD_RXD, align 4
  %57 = call i32 @ef4_reado(%struct.ef4_nic* %55, i32* %11, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @FRF_AB_MD_RXD, align 4
  %60 = call i32 @EF4_OWORD_FIELD(i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %62 = load i32, i32* @hw, align 4
  %63 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %64 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i32 @netif_vdbg(%struct.ef4_nic* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %67, i32 %68, i32 %69)
  br label %89

71:                                               ; preds = %26
  %72 = load i32, i32* %11, align 4
  %73 = load i32, i32* @FRF_AB_MD_RIC, align 4
  %74 = load i32, i32* @FRF_AB_MD_GC, align 4
  %75 = call i32 @EF4_POPULATE_OWORD_2(i32 %72, i32 %73, i32 0, i32 %74, i32 1)
  %76 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %77 = load i32, i32* @FR_AB_MD_CS, align 4
  %78 = call i32 @ef4_writeo(%struct.ef4_nic* %76, i32* %11, i32 %77)
  %79 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %80 = load i32, i32* @hw, align 4
  %81 = load %struct.ef4_nic*, %struct.ef4_nic** %9, align 8
  %82 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @netif_dbg(%struct.ef4_nic* %79, i32 %80, i32 %83, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %84, i32 %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %71, %54
  br label %90

90:                                               ; preds = %89, %25
  %91 = load %struct.falcon_nic_data*, %struct.falcon_nic_data** %10, align 8
  %92 = getelementptr inbounds %struct.falcon_nic_data, %struct.falcon_nic_data* %91, i32 0, i32 0
  %93 = call i32 @mutex_unlock(i32* %92)
  %94 = load i32, i32* %12, align 4
  ret i32 %94
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @falcon_gmii_wait(%struct.ef4_nic*) #1

declare dso_local i32 @EF4_POPULATE_OWORD_1(i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_OWORD_FIELD(i32, i32) #1

declare dso_local i32 @netif_vdbg(%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
