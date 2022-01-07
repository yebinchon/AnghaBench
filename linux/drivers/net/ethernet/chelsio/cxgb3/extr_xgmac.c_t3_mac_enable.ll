; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3_mac_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb3/extr_xgmac.c_t3_mac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { i32, i32, i64, i32, i8*, i32, i32, i8*, i32, i32, %struct.mac_stats, %struct.adapter* }
%struct.mac_stats = type { i32, i32, i32, i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@A_TP_PIO_ADDR = common dso_local global i64 0, align 8
@A_TP_TX_DROP_CFG_CH0 = common dso_local global i32 0, align 4
@A_TP_PIO_DATA = common dso_local global i64 0, align 8
@T3_REV_C = common dso_local global i64 0, align 8
@A_TP_TX_DROP_MODE = common dso_local global i32 0, align 4
@A_XGM_TX_CTRL = common dso_local global i64 0, align 8
@F_TXEN = common dso_local global i32 0, align 4
@A_TP_TX_DROP_CNT_CH0 = common dso_local global i32 0, align 4
@A_XGM_TX_SPI4_SOP_EOP_CNT = common dso_local global i64 0, align 8
@A_XGM_RX_SPI4_SOP_EOP_CNT = common dso_local global i64 0, align 8
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@A_XGM_RX_CTRL = common dso_local global i64 0, align 8
@F_RXEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t3_mac_enable(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mac_stats*, align 8
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.cmac*, %struct.cmac** %3, align 8
  %10 = call i32 @macidx(%struct.cmac* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.cmac*, %struct.cmac** %3, align 8
  %12 = getelementptr inbounds %struct.cmac, %struct.cmac* %11, i32 0, i32 11
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %6, align 8
  %14 = load %struct.cmac*, %struct.cmac** %3, align 8
  %15 = getelementptr inbounds %struct.cmac, %struct.cmac* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cmac*, %struct.cmac** %3, align 8
  %18 = getelementptr inbounds %struct.cmac, %struct.cmac* %17, i32 0, i32 10
  store %struct.mac_stats* %18, %struct.mac_stats** %8, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %124

23:                                               ; preds = %2
  %24 = load %struct.adapter*, %struct.adapter** %6, align 8
  %25 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %26 = load i32, i32* @A_TP_TX_DROP_CFG_CH0, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @t3_write_reg(%struct.adapter* %24, i64 %25, i32 %28)
  %30 = load %struct.adapter*, %struct.adapter** %6, align 8
  %31 = load i64, i64* @A_TP_PIO_DATA, align 8
  %32 = load %struct.adapter*, %struct.adapter** %6, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @T3_REV_C, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 -989855999, i32 -1058151423
  %40 = call i32 @t3_write_reg(%struct.adapter* %30, i64 %31, i32 %39)
  %41 = load %struct.adapter*, %struct.adapter** %6, align 8
  %42 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %43 = load i32, i32* @A_TP_TX_DROP_MODE, align 4
  %44 = call i32 @t3_write_reg(%struct.adapter* %41, i64 %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %6, align 8
  %46 = load i64, i64* @A_TP_PIO_DATA, align 8
  %47 = load i32, i32* %5, align 4
  %48 = shl i32 1, %47
  %49 = load %struct.adapter*, %struct.adapter** %6, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @T3_REV_C, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %23
  br label %59

56:                                               ; preds = %23
  %57 = load i32, i32* %5, align 4
  %58 = shl i32 1, %57
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  %61 = call i32 @t3_set_reg_field(%struct.adapter* %45, i64 %46, i32 %48, i32 %60)
  %62 = load %struct.adapter*, %struct.adapter** %6, align 8
  %63 = load i64, i64* @A_XGM_TX_CTRL, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* @F_TXEN, align 4
  %68 = call i32 @t3_write_reg(%struct.adapter* %62, i64 %66, i32 %67)
  %69 = load %struct.adapter*, %struct.adapter** %6, align 8
  %70 = load i64, i64* @A_TP_PIO_ADDR, align 8
  %71 = load i32, i32* @A_TP_TX_DROP_CNT_CH0, align 4
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @t3_write_reg(%struct.adapter* %69, i64 %70, i32 %73)
  %75 = load %struct.mac_stats*, %struct.mac_stats** %8, align 8
  %76 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.cmac*, %struct.cmac** %3, align 8
  %79 = getelementptr inbounds %struct.cmac, %struct.cmac* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 4
  %80 = load %struct.adapter*, %struct.adapter** %6, align 8
  %81 = load i64, i64* @A_TP_PIO_DATA, align 8
  %82 = call i32 @t3_read_reg(%struct.adapter* %80, i64 %81)
  %83 = call i32 @G_TXDROPCNTCH0RCVD(i32 %82)
  %84 = load %struct.cmac*, %struct.cmac** %3, align 8
  %85 = getelementptr inbounds %struct.cmac, %struct.cmac* %84, i32 0, i32 8
  store i32 %83, i32* %85, align 8
  %86 = load %struct.adapter*, %struct.adapter** %6, align 8
  %87 = load i64, i64* @A_XGM_TX_SPI4_SOP_EOP_CNT, align 8
  %88 = load i32, i32* %7, align 4
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %87, %89
  %91 = call i32 @t3_read_reg(%struct.adapter* %86, i64 %90)
  %92 = call i8* @G_TXSPI4SOPCNT(i32 %91)
  %93 = load %struct.cmac*, %struct.cmac** %3, align 8
  %94 = getelementptr inbounds %struct.cmac, %struct.cmac* %93, i32 0, i32 7
  store i8* %92, i8** %94, align 8
  %95 = load %struct.mac_stats*, %struct.mac_stats** %8, align 8
  %96 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.cmac*, %struct.cmac** %3, align 8
  %99 = getelementptr inbounds %struct.cmac, %struct.cmac* %98, i32 0, i32 6
  store i32 %97, i32* %99, align 4
  %100 = load %struct.mac_stats*, %struct.mac_stats** %8, align 8
  %101 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.cmac*, %struct.cmac** %3, align 8
  %104 = getelementptr inbounds %struct.cmac, %struct.cmac* %103, i32 0, i32 5
  store i32 %102, i32* %104, align 8
  %105 = load %struct.adapter*, %struct.adapter** %6, align 8
  %106 = load i64, i64* @A_XGM_RX_SPI4_SOP_EOP_CNT, align 8
  %107 = load i32, i32* %7, align 4
  %108 = zext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = call i32 @t3_read_reg(%struct.adapter* %105, i64 %109)
  %111 = call i8* @G_TXSPI4SOPCNT(i32 %110)
  %112 = load %struct.cmac*, %struct.cmac** %3, align 8
  %113 = getelementptr inbounds %struct.cmac, %struct.cmac* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load %struct.mac_stats*, %struct.mac_stats** %8, align 8
  %115 = getelementptr inbounds %struct.mac_stats, %struct.mac_stats* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.cmac*, %struct.cmac** %3, align 8
  %118 = getelementptr inbounds %struct.cmac, %struct.cmac* %117, i32 0, i32 3
  store i32 %116, i32* %118, align 8
  %119 = load i32, i32* @F_TXEN, align 4
  %120 = load %struct.cmac*, %struct.cmac** %3, align 8
  %121 = getelementptr inbounds %struct.cmac, %struct.cmac* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.cmac*, %struct.cmac** %3, align 8
  %123 = getelementptr inbounds %struct.cmac, %struct.cmac* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  br label %124

124:                                              ; preds = %59, %2
  %125 = load i32, i32* %4, align 4
  %126 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %124
  %130 = load %struct.adapter*, %struct.adapter** %6, align 8
  %131 = load i64, i64* @A_XGM_RX_CTRL, align 8
  %132 = load i32, i32* %7, align 4
  %133 = zext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = load i32, i32* @F_RXEN, align 4
  %136 = call i32 @t3_write_reg(%struct.adapter* %130, i64 %134, i32 %135)
  br label %137

137:                                              ; preds = %129, %124
  ret i32 0
}

declare dso_local i32 @macidx(%struct.cmac*) #1

declare dso_local i32 @t3_write_reg(%struct.adapter*, i64, i32) #1

declare dso_local i32 @t3_set_reg_field(%struct.adapter*, i64, i32, i32) #1

declare dso_local i32 @G_TXDROPCNTCH0RCVD(i32) #1

declare dso_local i32 @t3_read_reg(%struct.adapter*, i64) #1

declare dso_local i8* @G_TXSPI4SOPCNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
