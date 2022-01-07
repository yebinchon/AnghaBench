; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_reconfigure_xmac_core.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_reconfigure_xmac_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32 }

@EF4_FC_RX = common dso_local global i32 0, align 4
@EF4_FC_TX = common dso_local global i32 0, align 4
@FRF_AB_XM_RX_JUMBO_MODE = common dso_local global i32 0, align 4
@FRF_AB_XM_TX_STAT_EN = common dso_local global i32 0, align 4
@FRF_AB_XM_RX_STAT_EN = common dso_local global i32 0, align 4
@FR_AB_XM_GLB_CFG = common dso_local global i32 0, align 4
@FRF_AB_XM_TXEN = common dso_local global i32 0, align 4
@FRF_AB_XM_TX_PRMBL = common dso_local global i32 0, align 4
@FRF_AB_XM_AUTO_PAD = common dso_local global i32 0, align 4
@FRF_AB_XM_TXCRC = common dso_local global i32 0, align 4
@FRF_AB_XM_FCNTL = common dso_local global i32 0, align 4
@FRF_AB_XM_IPG = common dso_local global i32 0, align 4
@FR_AB_XM_TX_CFG = common dso_local global i32 0, align 4
@FRF_AB_XM_RXEN = common dso_local global i32 0, align 4
@FRF_AB_XM_AUTO_DEPAD = common dso_local global i32 0, align 4
@FRF_AB_XM_ACPT_ALL_MCAST = common dso_local global i32 0, align 4
@FRF_AB_XM_ACPT_ALL_UCAST = common dso_local global i32 0, align 4
@FRF_AB_XM_PASS_CRC_ERR = common dso_local global i32 0, align 4
@FR_AB_XM_RX_CFG = common dso_local global i32 0, align 4
@FRF_AB_XM_MAX_RX_FRM_SIZE = common dso_local global i32 0, align 4
@FR_AB_XM_RX_PARAM = common dso_local global i32 0, align 4
@FRF_AB_XM_MAX_TX_FRM_SIZE = common dso_local global i32 0, align 4
@FRF_AB_XM_TX_JUMBO_MODE = common dso_local global i32 0, align 4
@FR_AB_XM_TX_PARAM = common dso_local global i32 0, align 4
@FRF_AB_XM_PAUSE_TIME = common dso_local global i32 0, align 4
@FRF_AB_XM_DIS_FCNTL = common dso_local global i32 0, align 4
@FR_AB_XM_FC = common dso_local global i32 0, align 4
@FR_AB_XM_ADR_LO = common dso_local global i32 0, align 4
@FR_AB_XM_ADR_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_reconfigure_xmac_core to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_reconfigure_xmac_core(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %8 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @EF4_FC_RX, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %18 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EF4_FC_TX, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @FRF_AB_XM_RX_JUMBO_MODE, align 4
  %29 = load i32, i32* @FRF_AB_XM_TX_STAT_EN, align 4
  %30 = load i32, i32* @FRF_AB_XM_RX_STAT_EN, align 4
  %31 = call i32 @EF4_POPULATE_OWORD_3(i32 %27, i32 %28, i32 1, i32 %29, i32 1, i32 %30, i32 1)
  %32 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %33 = load i32, i32* @FR_AB_XM_GLB_CFG, align 4
  %34 = call i32 @ef4_writeo(%struct.ef4_nic* %32, i32* %4, i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @FRF_AB_XM_TXEN, align 4
  %37 = load i32, i32* @FRF_AB_XM_TX_PRMBL, align 4
  %38 = load i32, i32* @FRF_AB_XM_AUTO_PAD, align 4
  %39 = load i32, i32* @FRF_AB_XM_TXCRC, align 4
  %40 = load i32, i32* @FRF_AB_XM_FCNTL, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @FRF_AB_XM_IPG, align 4
  %43 = call i32 @EF4_POPULATE_OWORD_6(i32 %35, i32 %36, i32 1, i32 %37, i32 1, i32 %38, i32 1, i32 %39, i32 1, i32 %40, i32 %41, i32 %42, i32 3)
  %44 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %45 = load i32, i32* @FR_AB_XM_TX_CFG, align 4
  %46 = call i32 @ef4_writeo(%struct.ef4_nic* %44, i32* %4, i32 %45)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @FRF_AB_XM_RXEN, align 4
  %49 = load i32, i32* @FRF_AB_XM_AUTO_DEPAD, align 4
  %50 = load i32, i32* @FRF_AB_XM_ACPT_ALL_MCAST, align 4
  %51 = load i32, i32* @FRF_AB_XM_ACPT_ALL_UCAST, align 4
  %52 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %53 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* @FRF_AB_XM_PASS_CRC_ERR, align 4
  %59 = call i32 @EF4_POPULATE_OWORD_5(i32 %47, i32 %48, i32 1, i32 %49, i32 0, i32 %50, i32 1, i32 %51, i32 %57, i32 %58, i32 1)
  %60 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %61 = load i32, i32* @FR_AB_XM_RX_CFG, align 4
  %62 = call i32 @ef4_writeo(%struct.ef4_nic* %60, i32* %4, i32 %61)
  %63 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %64 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @EF4_MAX_FRAME_LEN(i32 %67)
  store i32 %68, i32* %3, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @FRF_AB_XM_MAX_RX_FRM_SIZE, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @EF4_POPULATE_OWORD_1(i32 %69, i32 %70, i32 %71)
  %73 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %74 = load i32, i32* @FR_AB_XM_RX_PARAM, align 4
  %75 = call i32 @ef4_writeo(%struct.ef4_nic* %73, i32* %4, i32 %74)
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @FRF_AB_XM_MAX_TX_FRM_SIZE, align 4
  %78 = load i32, i32* %3, align 4
  %79 = load i32, i32* @FRF_AB_XM_TX_JUMBO_MODE, align 4
  %80 = call i32 @EF4_POPULATE_OWORD_2(i32 %76, i32 %77, i32 %78, i32 %79, i32 1)
  %81 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %82 = load i32, i32* @FR_AB_XM_TX_PARAM, align 4
  %83 = call i32 @ef4_writeo(%struct.ef4_nic* %81, i32* %4, i32 %82)
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @FRF_AB_XM_PAUSE_TIME, align 4
  %86 = load i32, i32* @FRF_AB_XM_DIS_FCNTL, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @EF4_POPULATE_OWORD_2(i32 %84, i32 %85, i32 65534, i32 %86, i32 %90)
  %92 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %93 = load i32, i32* @FR_AB_XM_FC, align 4
  %94 = call i32 @ef4_writeo(%struct.ef4_nic* %92, i32* %4, i32 %93)
  %95 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %96 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %95, i32 0, i32 0
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = call i32 @memcpy(i32* %4, i32* %100, i32 4)
  %102 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %103 = load i32, i32* @FR_AB_XM_ADR_LO, align 4
  %104 = call i32 @ef4_writeo(%struct.ef4_nic* %102, i32* %4, i32 %103)
  %105 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %106 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  %111 = call i32 @memcpy(i32* %4, i32* %110, i32 2)
  %112 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %113 = load i32, i32* @FR_AB_XM_ADR_HI, align 4
  %114 = call i32 @ef4_writeo(%struct.ef4_nic* %112, i32* %4, i32 %113)
  ret void
}

declare dso_local i32 @EF4_POPULATE_OWORD_3(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_6(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_5(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @EF4_MAX_FRAME_LEN(i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_1(i32, i32, i32) #1

declare dso_local i32 @EF4_POPULATE_OWORD_2(i32, i32, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
