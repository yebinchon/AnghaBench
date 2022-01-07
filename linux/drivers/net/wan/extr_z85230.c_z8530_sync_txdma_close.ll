; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_sync_txdma_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_sync_txdma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.z8530_channel = type { i32*, i32, i32**, i64, i64, i32, i64, i64, i32* }

@z8530_nop = common dso_local global i32 0, align 4
@WT_RDY_ENAB = common dso_local global i32 0, align 4
@R1 = common dso_local global i64 0, align 8
@WT_RDY_RT = common dso_local global i32 0, align 4
@WT_FN_RDYFN = common dso_local global i32 0, align 4
@INT_ERR_Rx = common dso_local global i32 0, align 4
@INT_ALL_Rx = common dso_local global i32 0, align 4
@DTRREQ = common dso_local global i32 0, align 4
@R14 = common dso_local global i64 0, align 8
@R0 = common dso_local global i32 0, align 4
@R3 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @z8530_sync_txdma_close(%struct.net_device* %0, %struct.z8530_channel* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.z8530_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.z8530_channel* %1, %struct.z8530_channel** %4, align 8
  %8 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %9 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32 %10, i64 %11)
  %13 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %14 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %13, i32 0, i32 8
  store i32* @z8530_nop, i32** %14, align 8
  %15 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %16 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %15, i32 0, i32 7
  store i64 0, i64* %16, align 8
  %17 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %18 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %17, i32 0, i32 6
  store i64 0, i64* %18, align 8
  %19 = call i64 (...) @claim_dma_lock()
  store i64 %19, i64* %5, align 8
  %20 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %21 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @disable_dma(i32 %22)
  %24 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %25 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clear_dma_ff(i32 %26)
  %28 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %29 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %28, i32 0, i32 4
  store i64 0, i64* %29, align 8
  %30 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %31 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @release_dma_lock(i64 %32)
  %34 = load i32, i32* @WT_RDY_ENAB, align 4
  %35 = xor i32 %34, -1
  %36 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %37 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @R1, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, %35
  store i32 %42, i32* %40, align 4
  %43 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %44 = load i64, i64* @R1, align 8
  %45 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %46 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @R1, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @write_zsreg(%struct.z8530_channel* %43, i64 %44, i32 %50)
  %52 = load i32, i32* @WT_RDY_RT, align 4
  %53 = load i32, i32* @WT_FN_RDYFN, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @INT_ERR_Rx, align 4
  %56 = or i32 %54, %55
  %57 = xor i32 %56, -1
  %58 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %59 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @R1, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, %57
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* @INT_ALL_Rx, align 4
  %66 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %67 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* @R1, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %65
  store i32 %72, i32* %70, align 4
  %73 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %74 = load i64, i64* @R1, align 8
  %75 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %76 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @R1, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @write_zsreg(%struct.z8530_channel* %73, i64 %74, i32 %80)
  %82 = load i32, i32* @DTRREQ, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %85 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @R14, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %83
  store i32 %90, i32* %88, align 4
  %91 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %92 = load i64, i64* @R14, align 8
  %93 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %94 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @R14, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @write_zsreg(%struct.z8530_channel* %91, i64 %92, i32 %98)
  %100 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %101 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %100, i32 0, i32 2
  %102 = load i32**, i32*** %101, align 8
  %103 = getelementptr inbounds i32*, i32** %102, i64 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %118

106:                                              ; preds = %2
  %107 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %108 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %107, i32 0, i32 2
  %109 = load i32**, i32*** %108, align 8
  %110 = getelementptr inbounds i32*, i32** %109, i64 0
  %111 = load i32*, i32** %110, align 8
  %112 = ptrtoint i32* %111 to i64
  %113 = call i32 @free_page(i64 %112)
  %114 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %115 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %114, i32 0, i32 2
  %116 = load i32**, i32*** %115, align 8
  %117 = getelementptr inbounds i32*, i32** %116, i64 0
  store i32* null, i32** %117, align 8
  br label %118

118:                                              ; preds = %106, %2
  %119 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %120 = load i32, i32* @R0, align 4
  %121 = call i32 @read_zsreg(%struct.z8530_channel* %119, i32 %120)
  store i32 %121, i32* %7, align 4
  %122 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %123 = load i64, i64* @R3, align 8
  %124 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %125 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* @R3, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @write_zsreg(%struct.z8530_channel* %122, i64 %123, i32 %129)
  %131 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %132 = call i32 @z8530_rtsdtr(%struct.z8530_channel* %131, i32 0)
  %133 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %134 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i64, i64* %6, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32 %135, i64 %136)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @write_zsreg(%struct.z8530_channel*, i64, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @read_zsreg(%struct.z8530_channel*, i32) #1

declare dso_local i32 @z8530_rtsdtr(%struct.z8530_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
