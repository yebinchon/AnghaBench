; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_sync_dma_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_z85230.c_z8530_sync_dma_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.z8530_channel = type { i32*, i32, i32**, i32**, i64, i64, i32, i64, i32, i64, i64, i32* }

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
define dso_local i32 @z8530_sync_dma_close(%struct.net_device* %0, %struct.z8530_channel* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.z8530_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.z8530_channel* %1, %struct.z8530_channel** %4, align 8
  %7 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %8 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %7, i32 0, i32 11
  store i32* @z8530_nop, i32** %8, align 8
  %9 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %10 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %9, i32 0, i32 10
  store i64 0, i64* %10, align 8
  %11 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %12 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %11, i32 0, i32 9
  store i64 0, i64* %12, align 8
  %13 = call i64 (...) @claim_dma_lock()
  store i64 %13, i64* %6, align 8
  %14 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %15 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @disable_dma(i32 %16)
  %18 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %19 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @clear_dma_ff(i32 %20)
  %22 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %23 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %25 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @disable_dma(i32 %26)
  %28 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %29 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @clear_dma_ff(i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = call i32 @release_dma_lock(i64 %32)
  %34 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %35 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %37 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %39 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_lock_irqsave(i32 %40, i64 %41)
  %43 = load i32, i32* @WT_RDY_ENAB, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %46 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @R1, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, %44
  store i32 %51, i32* %49, align 4
  %52 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %53 = load i64, i64* @R1, align 8
  %54 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %55 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @R1, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @write_zsreg(%struct.z8530_channel* %52, i64 %53, i32 %59)
  %61 = load i32, i32* @WT_RDY_RT, align 4
  %62 = load i32, i32* @WT_FN_RDYFN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @INT_ERR_Rx, align 4
  %65 = or i32 %63, %64
  %66 = xor i32 %65, -1
  %67 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %68 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @R1, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, %66
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* @INT_ALL_Rx, align 4
  %75 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %76 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i64, i64* @R1, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %74
  store i32 %81, i32* %79, align 4
  %82 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %83 = load i64, i64* @R1, align 8
  %84 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %85 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* @R1, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @write_zsreg(%struct.z8530_channel* %82, i64 %83, i32 %89)
  %91 = load i32, i32* @DTRREQ, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %94 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @R14, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, %92
  store i32 %99, i32* %97, align 4
  %100 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %101 = load i64, i64* @R14, align 8
  %102 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %103 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i64, i64* @R14, align 8
  %106 = getelementptr inbounds i32, i32* %104, i64 %105
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @write_zsreg(%struct.z8530_channel* %100, i64 %101, i32 %107)
  %109 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %110 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %109, i32 0, i32 3
  %111 = load i32**, i32*** %110, align 8
  %112 = getelementptr inbounds i32*, i32** %111, i64 0
  %113 = load i32*, i32** %112, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %115, label %127

115:                                              ; preds = %2
  %116 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %117 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %116, i32 0, i32 3
  %118 = load i32**, i32*** %117, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 0
  %120 = load i32*, i32** %119, align 8
  %121 = ptrtoint i32* %120 to i64
  %122 = call i32 @free_page(i64 %121)
  %123 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %124 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %123, i32 0, i32 3
  %125 = load i32**, i32*** %124, align 8
  %126 = getelementptr inbounds i32*, i32** %125, i64 0
  store i32* null, i32** %126, align 8
  br label %127

127:                                              ; preds = %115, %2
  %128 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %129 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %128, i32 0, i32 2
  %130 = load i32**, i32*** %129, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %146

134:                                              ; preds = %127
  %135 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %136 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %135, i32 0, i32 2
  %137 = load i32**, i32*** %136, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  %140 = ptrtoint i32* %139 to i64
  %141 = call i32 @free_page(i64 %140)
  %142 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %143 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %142, i32 0, i32 2
  %144 = load i32**, i32*** %143, align 8
  %145 = getelementptr inbounds i32*, i32** %144, i64 0
  store i32* null, i32** %145, align 8
  br label %146

146:                                              ; preds = %134, %127
  %147 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %148 = load i32, i32* @R0, align 4
  %149 = call i32 @read_zsreg(%struct.z8530_channel* %147, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %151 = load i64, i64* @R3, align 8
  %152 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %153 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %152, i32 0, i32 0
  %154 = load i32*, i32** %153, align 8
  %155 = load i64, i64* @R3, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @write_zsreg(%struct.z8530_channel* %150, i64 %151, i32 %157)
  %159 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %160 = call i32 @z8530_rtsdtr(%struct.z8530_channel* %159, i32 0)
  %161 = load %struct.z8530_channel*, %struct.z8530_channel** %4, align 8
  %162 = getelementptr inbounds %struct.z8530_channel, %struct.z8530_channel* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load i64, i64* %6, align 8
  %165 = call i32 @spin_unlock_irqrestore(i32 %163, i64 %164)
  ret i32 0
}

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i32) #1

declare dso_local i32 @clear_dma_ff(i32) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

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
