; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_hwm_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/skfp/extr_hwmtm.c_hwm_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_smc = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__** }

@.str = private unnamed_addr constant [5 x i8] c"THiB\00", align 1
@QUEUE_A0 = common dso_local global i32 0, align 4
@TX_DESCRIPTOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"hwm_tx_init: fc = %x, len = %d\00", align 1
@FC_SYNC_BIT = common dso_local global i32 0, align 4
@FC_LLC_PRIOR = common dso_local global i32 0, align 4
@FC_ASYNC_LLC = common dso_local global i32 0, align 4
@LAN_TX = common dso_local global i32 0, align 4
@LOC_TX = common dso_local global i32 0, align 4
@HWM_E0010 = common dso_local global i32 0, align 4
@HWM_E0010_MSG = common dso_local global i32 0, align 4
@RING_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Ring is down: terminate LAN_TX\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Out of TxDs, terminate LAN_TX\00", align 1
@OUT_OF_TXD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"frame_status = %x\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"THiE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hwm_tx_init(%struct.s_smc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.s_smc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.s_smc* %0, %struct.s_smc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call i32 @NDD_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %12, i32 %13)
  %15 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %16 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @QUEUE_A0, align 4
  %22 = and i32 %20, %21
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %19, i64 %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %27 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** %29, align 8
  %30 = load i32, i32* @TX_DESCRIPTOR, align 4
  %31 = load i32, i32* %9, align 4
  %32 = sub nsw i32 %31, 1
  %33 = and i32 %32, 3
  %34 = shl i32 %33, 27
  %35 = or i32 %30, %34
  %36 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %37 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %35, i32* %39, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %42 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 1
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 (i32, i8*, ...) @DB_TX(i32 3, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @FC_SYNC_BIT, align 4
  %50 = load i32, i32* @FC_LLC_PRIOR, align 4
  %51 = or i32 %49, %50
  %52 = xor i32 %51, -1
  %53 = and i32 %48, %52
  %54 = load i32, i32* @FC_ASYNC_LLC, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %5
  %57 = load i32, i32* @LAN_TX, align 4
  %58 = load i32, i32* %10, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %10, align 4
  br label %82

60:                                               ; preds = %5
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %76 [
    i32 131, label %62
    i32 128, label %62
    i32 129, label %66
    i32 130, label %70
  ]

62:                                               ; preds = %60, %60
  %63 = load i32, i32* @LAN_TX, align 4
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  br label %81

66:                                               ; preds = %60
  %67 = load i32, i32* @LOC_TX, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %81

70:                                               ; preds = %60
  %71 = load i32, i32* @LAN_TX, align 4
  %72 = load i32, i32* @LOC_TX, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  br label %81

76:                                               ; preds = %60
  %77 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %78 = load i32, i32* @HWM_E0010, align 4
  %79 = load i32, i32* @HWM_E0010_MSG, align 4
  %80 = call i32 @SMT_PANIC(%struct.s_smc* %77, i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %76, %70, %66, %62
  br label %82

82:                                               ; preds = %81, %56
  %83 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %84 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %97, label %88

88:                                               ; preds = %82
  %89 = load i32, i32* @LAN_TX, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %10, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %10, align 4
  %93 = load i32, i32* @RING_DOWN, align 4
  %94 = load i32, i32* %10, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %10, align 4
  %96 = call i32 (i32, i8*, ...) @DB_TX(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %97

97:                                               ; preds = %88, %82
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %100 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %98, %105
  br i1 %106, label %107, label %129

107:                                              ; preds = %97
  %108 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %109 = call i32 @mac_drv_clear_txd(%struct.s_smc* %108)
  %110 = load i32, i32* %8, align 4
  %111 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %112 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 2
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp sgt i32 %110, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %107
  %120 = call i32 (i32, i8*, ...) @DB_TX(i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %121 = load i32, i32* @LAN_TX, align 4
  %122 = xor i32 %121, -1
  %123 = load i32, i32* %10, align 4
  %124 = and i32 %123, %122
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* @OUT_OF_TXD, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %119, %107
  br label %129

129:                                              ; preds = %128, %97
  %130 = load i32, i32* %10, align 4
  %131 = call i32 (i32, i8*, ...) @DB_TX(i32 3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.s_smc*, %struct.s_smc** %6, align 8
  %134 = getelementptr inbounds %struct.s_smc, %struct.s_smc* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @NDD_TRACE(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %132, i32 %139, i32 0)
  %141 = load i32, i32* %10, align 4
  ret i32 %141
}

declare dso_local i32 @NDD_TRACE(i8*, i32, i32, i32) #1

declare dso_local i32 @DB_TX(i32, i8*, ...) #1

declare dso_local i32 @SMT_PANIC(%struct.s_smc*, i32, i32) #1

declare dso_local i32 @mac_drv_clear_txd(%struct.s_smc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
