; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_setup_sdp_X540.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_setup_sdp_X540.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_2__, %struct.ixgbe_hw, %struct.cyclecounter }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_hw = type { i32 }
%struct.cyclecounter = type { i32, i32 }

@IXGBE_TSAUXC = common dso_local global i32 0, align 4
@IXGBE_FLAG2_PTP_PPS_ENABLED = common dso_local global i32 0, align 4
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_NATIVE = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_EN_CLK = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_SYNCLK = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_SDP0_INT = common dso_local global i32 0, align 4
@NS_PER_HALF_SEC = common dso_local global i32 0, align 4
@NS_PER_SEC = common dso_local global i32 0, align 4
@IXGBE_CLKTIML = common dso_local global i32 0, align 4
@IXGBE_CLKTIMH = common dso_local global i32 0, align 4
@IXGBE_TRGTTIML0 = common dso_local global i32 0, align 4
@IXGBE_TRGTTIMH0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_ptp_setup_sdp_X540 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_ptp_setup_sdp_X540(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.cyclecounter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %16 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %16, i32 0, i32 4
  store %struct.cyclecounter* %17, %struct.cyclecounter** %3, align 8
  %18 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %18, i32 0, i32 3
  store %struct.ixgbe_hw* %19, %struct.ixgbe_hw** %4, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %21 = load i32, i32* @IXGBE_TSAUXC, align 4
  %22 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %20, i32 %21, i32 0)
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %24 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %23)
  %25 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IXGBE_FLAG2_PTP_PPS_ENABLED, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %119

32:                                               ; preds = %1
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %34 = load i32, i32* @IXGBE_ESDP, align 4
  %35 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @IXGBE_ESDP_SDP0_DIR, align 4
  %37 = load i32, i32* @IXGBE_ESDP_SDP0_NATIVE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @IXGBE_TSAUXC_EN_CLK, align 4
  %42 = load i32, i32* @IXGBE_TSAUXC_SYNCLK, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @IXGBE_TSAUXC_SDP0_INT, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* @NS_PER_HALF_SEC, align 4
  %47 = load %struct.cyclecounter*, %struct.cyclecounter** %3, align 8
  %48 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = shl i32 %46, %49
  %51 = load %struct.cyclecounter*, %struct.cyclecounter** %3, align 8
  %52 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @div_u64(i32 %50, i32 %53)
  store i32 %54, i32* %14, align 4
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %14, align 4
  %57 = ashr i32 %56, 32
  store i32 %57, i32* %8, align 4
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 1
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 2
  %64 = call i32 @timecounter_read(%struct.TYPE_2__* %63)
  store i32 %64, i32* %12, align 4
  %65 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %69, i32 0, i32 1
  %71 = load i64, i64* %15, align 8
  %72 = call i32 @spin_unlock_irqrestore(i32* %70, i64 %71)
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @NS_PER_SEC, align 4
  %75 = call i32 @div_u64_rem(i32 %73, i32 %74, i32* %11)
  %76 = load i32, i32* @NS_PER_SEC, align 4
  %77 = load i32, i32* %11, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.cyclecounter*, %struct.cyclecounter** %3, align 8
  %81 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %79, %82
  %84 = load %struct.cyclecounter*, %struct.cyclecounter** %3, align 8
  %85 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @div_u64(i32 %83, i32 %86)
  %88 = load i32, i32* %13, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %13, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %13, align 4
  %92 = ashr i32 %91, 32
  store i32 %92, i32* %10, align 4
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %94 = load i32, i32* @IXGBE_CLKTIML, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %93, i32 %94, i32 %95)
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %98 = load i32, i32* @IXGBE_CLKTIMH, align 4
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %97, i32 %98, i32 %99)
  %101 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %102 = load i32, i32* @IXGBE_TRGTTIML0, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %101, i32 %102, i32 %103)
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %106 = load i32, i32* @IXGBE_TRGTTIMH0, align 4
  %107 = load i32, i32* %10, align 4
  %108 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %105, i32 %106, i32 %107)
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %110 = load i32, i32* @IXGBE_ESDP, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %109, i32 %110, i32 %111)
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %114 = load i32, i32* @IXGBE_TSAUXC, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %113, i32 %114, i32 %115)
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %118 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %117)
  br label %119

119:                                              ; preds = %32, %31
  ret void
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @timecounter_read(%struct.TYPE_2__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @div_u64_rem(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
