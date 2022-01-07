; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_dma_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_dma_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.z8530_channel = type { i32, i32, i32*, i64, %struct.TYPE_2__*, i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@R0 = common dso_local global i32 0, align 4
@TxEOM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s: DCD raised\0A\00", align 1
@R3 = common dso_local global i32 0, align 4
@RxENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"%s: DCD lost\0A\00", align 1
@RES_EXT_INT = common dso_local global i32 0, align 4
@RES_H_IUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.z8530_channel*)* @z8530_dma_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @z8530_dma_status(%struct.z8530_channel* %0) #0 {
  %2 = alloca %struct.z8530_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.z8530_channel* %0, %struct.z8530_channel** %2, align 8
  %6 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %7 = load i32, i32* @R0, align 4
  %8 = call i32 @read_zsreg(%struct.z8530_channel* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %10 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = xor i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %16 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %18 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %1
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @TxEOM, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %21
  %27 = call i64 (...) @claim_dma_lock()
  store i64 %27, i64* %5, align 8
  %28 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %29 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @disable_dma(i32 %30)
  %32 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %33 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clear_dma_ff(i32 %34)
  %36 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %37 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @release_dma_lock(i64 %38)
  %40 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %41 = call i32 @z8530_tx_done(%struct.z8530_channel* %40)
  br label %42

42:                                               ; preds = %26, %21
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %46 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %44, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %115

50:                                               ; preds = %43
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %53 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %84

57:                                               ; preds = %50
  %58 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %59 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %58, i32 0, i32 4
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %65 = load i32, i32* @R3, align 4
  %66 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %67 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 3
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @RxENABLE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @write_zsreg(%struct.z8530_channel* %64, i32 %65, i32 %72)
  %74 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %75 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %57
  %79 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %80 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @netif_carrier_on(i64 %81)
  br label %83

83:                                               ; preds = %78, %57
  br label %114

84:                                               ; preds = %50
  %85 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %86 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %85, i32 0, i32 4
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %92 = load i32, i32* @R3, align 4
  %93 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %94 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @RxENABLE, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = call i32 @write_zsreg(%struct.z8530_channel* %91, i32 %92, i32 %100)
  %102 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %103 = call i32 @z8530_flush_fifo(%struct.z8530_channel* %102)
  %104 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %105 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %104, i32 0, i32 3
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %84
  %109 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %110 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @netif_carrier_off(i64 %111)
  br label %113

113:                                              ; preds = %108, %84
  br label %114

114:                                              ; preds = %113, %83
  br label %115

115:                                              ; preds = %114, %43
  %116 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %117 = load i32, i32* @RES_EXT_INT, align 4
  %118 = call i32 @write_zsctrl(%struct.z8530_channel* %116, i32 %117)
  %119 = load %struct.z8530_channel*, %struct.z8530_channel** %2, align 8
  %120 = load i32, i32* @RES_H_IUS, align 4
  %121 = call i32 @write_zsctrl(%struct.z8530_channel* %119, i32 %120)
  ret void
}

declare dso_local i32 @read_zsreg(%struct.z8530_channel*, i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @z8530_tx_done(%struct.z8530_channel*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i32, i32) #1

declare dso_local i32 @netif_carrier_on(i64) #1

declare dso_local i32 @z8530_flush_fifo(%struct.z8530_channel*) #1

declare dso_local i32 @netif_carrier_off(i64) #1

declare dso_local i32 @write_zsctrl(%struct.z8530_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
