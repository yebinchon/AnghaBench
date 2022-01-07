; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_tx_ring_init_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_tx_ring_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.emac_adapter = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i32 }

@EMAC_MAILBOX_0 = common dso_local global i8* null, align 8
@RFD0_PROD_IDX_BMSK = common dso_local global i32 0, align 4
@RFD0_PROD_IDX_SHFT = common dso_local global i32 0, align 4
@RFD0_PROC_IDX_BMSK = common dso_local global i32 0, align 4
@RFD0_PROC_IDX_SHFT = common dso_local global i32 0, align 4
@EMAC_MAILBOX_3 = common dso_local global i32 0, align 4
@RFD0_CONS_IDX_BMSK = common dso_local global i32 0, align 4
@RFD0_CONS_IDX_SHFT = common dso_local global i32 0, align 4
@ISR_RX_PKT = common dso_local global i32 0, align 4
@EMAC_MAILBOX_15 = common dso_local global i32 0, align 4
@NTPD_PROD_IDX_BMSK = common dso_local global i32 0, align 4
@NTPD_PROD_IDX_SHFT = common dso_local global i32 0, align 4
@EMAC_MAILBOX_2 = common dso_local global i32 0, align 4
@NTPD_CONS_IDX_BMSK = common dso_local global i32 0, align 4
@NTPD_CONS_IDX_SHFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_mac_rx_tx_ring_init_all(%struct.platform_device* %0, %struct.emac_adapter* %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.emac_adapter*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store %struct.emac_adapter* %1, %struct.emac_adapter** %4, align 8
  %5 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %6 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 11
  store i32 %7, i32* %10, align 8
  %11 = load i8*, i8** @EMAC_MAILBOX_0, align 8
  %12 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 10
  store i8* %11, i8** %14, align 8
  %15 = load i32, i32* @RFD0_PROD_IDX_BMSK, align 4
  %16 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %17 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 9
  store i32 %15, i32* %18, align 4
  %19 = load i32, i32* @RFD0_PROD_IDX_SHFT, align 4
  %20 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %21 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 8
  store i32 %19, i32* %22, align 8
  %23 = load i8*, i8** @EMAC_MAILBOX_0, align 8
  %24 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %25 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 7
  store i8* %23, i8** %26, align 8
  %27 = load i32, i32* @RFD0_PROC_IDX_BMSK, align 4
  %28 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %29 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* @RFD0_PROC_IDX_SHFT, align 4
  %32 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* @EMAC_MAILBOX_3, align 4
  %36 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 8
  %39 = load i32, i32* @RFD0_CONS_IDX_BMSK, align 4
  %40 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* @RFD0_CONS_IDX_SHFT, align 4
  %44 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %45 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  store i32 %43, i32* %46, align 8
  %47 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %47, i32 0, i32 1
  %49 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %50 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  store %struct.TYPE_5__* %48, %struct.TYPE_5__** %51, align 8
  %52 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @ISR_RX_PKT, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %59 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load i32, i32* @EMAC_MAILBOX_15, align 4
  %62 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 5
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @NTPD_PROD_IDX_BMSK, align 4
  %66 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  %69 = load i32, i32* @NTPD_PROD_IDX_SHFT, align 4
  %70 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 3
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @EMAC_MAILBOX_2, align 4
  %74 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load i32, i32* @NTPD_CONS_IDX_BMSK, align 4
  %78 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @NTPD_CONS_IDX_SHFT, align 4
  %82 = load %struct.emac_adapter*, %struct.emac_adapter** %4, align 8
  %83 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
