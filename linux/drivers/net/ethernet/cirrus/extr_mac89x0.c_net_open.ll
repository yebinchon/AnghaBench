; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_net_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_net_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32*, i32 }
%struct.net_local = type { i64, i32, i64 }

@PP_BusCTL = common dso_local global i64 0, align 8
@ENABLE_IRQ = common dso_local global i32 0, align 4
@net_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cs89x0\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@CS8900 = common dso_local global i64 0, align 8
@PP_CS8900_ISAINT = common dso_local global i64 0, align 8
@PP_CS8920_ISAINT = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@PP_IA = common dso_local global i64 0, align 8
@PP_LineCTL = common dso_local global i64 0, align 8
@SERIAL_RX_ON = common dso_local global i32 0, align 4
@SERIAL_TX_ON = common dso_local global i32 0, align 4
@PP_RxCTL = common dso_local global i64 0, align 8
@DEF_RX_ACCEPT = common dso_local global i32 0, align 4
@RX_OK_ENBL = common dso_local global i32 0, align 4
@RX_CRC_ERROR_ENBL = common dso_local global i32 0, align 4
@PP_RxCFG = common dso_local global i64 0, align 8
@PP_TxCFG = common dso_local global i64 0, align 8
@TX_LOST_CRS_ENBL = common dso_local global i32 0, align 4
@TX_SQE_ERROR_ENBL = common dso_local global i32 0, align 4
@TX_OK_ENBL = common dso_local global i32 0, align 4
@TX_LATE_COL_ENBL = common dso_local global i32 0, align 4
@TX_JBR_ENBL = common dso_local global i32 0, align 4
@TX_ANY_COL_ENBL = common dso_local global i32 0, align 4
@TX_16_COL_ENBL = common dso_local global i32 0, align 4
@PP_BufCFG = common dso_local global i64 0, align 8
@READY_FOR_TX_ENBL = common dso_local global i32 0, align 4
@RX_MISS_COUNT_OVRFLOW_ENBL = common dso_local global i32 0, align 4
@TX_COL_COUNT_OVRFLOW_ENBL = common dso_local global i32 0, align 4
@TX_UNDERRUN_ENBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @net_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net_local*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.net_local* @netdev_priv(%struct.net_device* %6)
  store %struct.net_local* %7, %struct.net_local** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = load i64, i64* @PP_BusCTL, align 8
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = load i64, i64* @PP_BusCTL, align 8
  %12 = call i32 @readreg(%struct.net_device* %10, i64 %11)
  %13 = load i32, i32* @ENABLE_IRQ, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @writereg(%struct.net_device* %8, i64 %9, i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @net_interrupt, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = call i64 @request_irq(i32 %19, i32 %20, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load i32, i32* @EAGAIN, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %141

27:                                               ; preds = %1
  %28 = load %struct.net_local*, %struct.net_local** %4, align 8
  %29 = getelementptr inbounds %struct.net_local, %struct.net_local* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CS8900, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %27
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = load i64, i64* @PP_CS8900_ISAINT, align 8
  %36 = call i32 @writereg(%struct.net_device* %34, i64 %35, i32 0)
  br label %41

37:                                               ; preds = %27
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = load i64, i64* @PP_CS8920_ISAINT, align 8
  %40 = call i32 @writereg(%struct.net_device* %38, i64 %39, i32 0)
  br label %41

41:                                               ; preds = %37, %33
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %74, %41
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ETH_ALEN, align 4
  %45 = sdiv i32 %44, 2
  %46 = icmp slt i32 %43, %45
  br i1 %46, label %47, label %77

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load i64, i64* @PP_IA, align 8
  %50 = load i32, i32* %5, align 4
  %51 = mul nsw i32 %50, 2
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %49, %52
  %54 = load %struct.net_device*, %struct.net_device** %3, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = mul nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = mul nsw i32 %65, 2
  %67 = add nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = shl i32 %70, 8
  %72 = or i32 %61, %71
  %73 = call i32 @writereg(%struct.net_device* %48, i64 %53, i32 %72)
  br label %74

74:                                               ; preds = %47
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %42

77:                                               ; preds = %42
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = load i64, i64* @PP_LineCTL, align 8
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = load i64, i64* @PP_LineCTL, align 8
  %82 = call i32 @readreg(%struct.net_device* %80, i64 %81)
  %83 = load i32, i32* @SERIAL_RX_ON, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* @SERIAL_TX_ON, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @writereg(%struct.net_device* %78, i64 %79, i32 %86)
  %88 = load %struct.net_local*, %struct.net_local** %4, align 8
  %89 = getelementptr inbounds %struct.net_local, %struct.net_local* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = load i64, i64* @PP_RxCTL, align 8
  %92 = load i32, i32* @DEF_RX_ACCEPT, align 4
  %93 = call i32 @writereg(%struct.net_device* %90, i64 %91, i32 %92)
  %94 = load i32, i32* @RX_OK_ENBL, align 4
  %95 = load i32, i32* @RX_CRC_ERROR_ENBL, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.net_local*, %struct.net_local** %4, align 8
  %98 = getelementptr inbounds %struct.net_local, %struct.net_local* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 8
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = load i64, i64* @PP_RxCFG, align 8
  %101 = load %struct.net_local*, %struct.net_local** %4, align 8
  %102 = getelementptr inbounds %struct.net_local, %struct.net_local* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @writereg(%struct.net_device* %99, i64 %100, i32 %103)
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = load i64, i64* @PP_TxCFG, align 8
  %107 = load i32, i32* @TX_LOST_CRS_ENBL, align 4
  %108 = load i32, i32* @TX_SQE_ERROR_ENBL, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @TX_OK_ENBL, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @TX_LATE_COL_ENBL, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @TX_JBR_ENBL, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @TX_ANY_COL_ENBL, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @TX_16_COL_ENBL, align 4
  %119 = or i32 %117, %118
  %120 = call i32 @writereg(%struct.net_device* %105, i64 %106, i32 %119)
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = load i64, i64* @PP_BufCFG, align 8
  %123 = load i32, i32* @READY_FOR_TX_ENBL, align 4
  %124 = load i32, i32* @RX_MISS_COUNT_OVRFLOW_ENBL, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @TX_COL_COUNT_OVRFLOW_ENBL, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @TX_UNDERRUN_ENBL, align 4
  %129 = or i32 %127, %128
  %130 = call i32 @writereg(%struct.net_device* %121, i64 %122, i32 %129)
  %131 = load %struct.net_device*, %struct.net_device** %3, align 8
  %132 = load i64, i64* @PP_BusCTL, align 8
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = load i64, i64* @PP_BusCTL, align 8
  %135 = call i32 @readreg(%struct.net_device* %133, i64 %134)
  %136 = load i32, i32* @ENABLE_IRQ, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @writereg(%struct.net_device* %131, i64 %132, i32 %137)
  %139 = load %struct.net_device*, %struct.net_device** %3, align 8
  %140 = call i32 @netif_start_queue(%struct.net_device* %139)
  store i32 0, i32* %2, align 4
  br label %141

141:                                              ; preds = %77, %24
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writereg(%struct.net_device*, i64, i32) #1

declare dso_local i32 @readreg(%struct.net_device*, i64) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
