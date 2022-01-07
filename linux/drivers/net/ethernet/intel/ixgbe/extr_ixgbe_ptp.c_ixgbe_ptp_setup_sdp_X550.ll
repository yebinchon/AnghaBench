; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_setup_sdp_X550.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ptp.c_ixgbe_ptp_setup_sdp_X550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, %struct.TYPE_2__, %struct.ixgbe_hw, %struct.cyclecounter }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_hw = type { i32 }
%struct.cyclecounter = type { i32, i32 }
%struct.timespec64 = type { i64, i64 }

@IXGBE_TSAUXC = common dso_local global i32 0, align 4
@IXGBE_FLAG2_PTP_PPS_ENABLED = common dso_local global i32 0, align 4
@IXGBE_ESDP = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_DIR = common dso_local global i32 0, align 4
@IXGBE_ESDP_SDP0_NATIVE = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_EN_CLK = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_ST0 = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_EN_TT0 = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_SDP0_INT = common dso_local global i32 0, align 4
@IXGBE_TSSDP_TS_SDP0_EN = common dso_local global i32 0, align 4
@IXGBE_TSSDP_TS_SDP0_CLK0 = common dso_local global i32 0, align 4
@NS_PER_HALF_SEC = common dso_local global i32 0, align 4
@NS_PER_SEC = common dso_local global i32 0, align 4
@IXGBE_FREQOUT0 = common dso_local global i32 0, align 4
@IXGBE_TRGTTIML0 = common dso_local global i32 0, align 4
@IXGBE_TRGTTIMH0 = common dso_local global i32 0, align 4
@IXGBE_TSSDP = common dso_local global i32 0, align 4
@IXGBE_TSAUXC_DIS_TS_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_ptp_setup_sdp_X550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_ptp_setup_sdp_X550(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.cyclecounter*, align 8
  %11 = alloca %struct.ixgbe_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.timespec64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.timespec64, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 4
  store %struct.cyclecounter* %18, %struct.cyclecounter** %10, align 8
  %19 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %19, i32 0, i32 3
  store %struct.ixgbe_hw* %20, %struct.ixgbe_hw** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %22 = load i32, i32* @IXGBE_TSAUXC, align 4
  %23 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %21, i32 %22, i32 0)
  %24 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %25 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %24)
  %26 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IXGBE_FLAG2_PTP_PPS_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %1
  br label %135

33:                                               ; preds = %1
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %35 = load i32, i32* @IXGBE_ESDP, align 4
  %36 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* @IXGBE_ESDP_SDP0_DIR, align 4
  %38 = load i32, i32* @IXGBE_ESDP_SDP0_NATIVE, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* @IXGBE_TSAUXC_EN_CLK, align 4
  %43 = load i32, i32* @IXGBE_TSAUXC_ST0, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @IXGBE_TSAUXC_EN_TT0, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @IXGBE_TSAUXC_SDP0_INT, align 4
  %48 = or i32 %46, %47
  %49 = or i32 %48, 1073741824
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* @IXGBE_TSSDP_TS_SDP0_EN, align 4
  %51 = load i32, i32* @IXGBE_TSSDP_TS_SDP0_CLK0, align 4
  %52 = or i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @NS_PER_HALF_SEC, align 4
  %54 = load %struct.cyclecounter*, %struct.cyclecounter** %10, align 8
  %55 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %53, %56
  %58 = load %struct.cyclecounter*, %struct.cyclecounter** %10, align 8
  %59 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @div_u64(i32 %57, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %62, i32 0, i32 1
  %64 = load i64, i64* %15, align 8
  %65 = call i32 @spin_lock_irqsave(i32* %63, i64 %64)
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %67 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %66, i32 0, i32 2
  %68 = call i32 @timecounter_read(%struct.TYPE_2__* %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %70 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* %13, align 4
  %73 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %73, i32 0, i32 1
  %75 = load i64, i64* %15, align 8
  %76 = call i32 @spin_unlock_irqrestore(i32* %74, i64 %75)
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @NS_PER_SEC, align 4
  %79 = call i32 @div_u64_rem(i32 %77, i32 %78, i32* %8)
  %80 = load i32, i32* @NS_PER_SEC, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %80, %81
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load %struct.cyclecounter*, %struct.cyclecounter** %10, align 8
  %85 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %83, %86
  %88 = load %struct.cyclecounter*, %struct.cyclecounter** %10, align 8
  %89 = getelementptr inbounds %struct.cyclecounter, %struct.cyclecounter* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @div_u64(i32 %87, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = add nsw i32 %92, %91
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call { i64, i64 } @ns_to_timespec64(i32 %94)
  %96 = bitcast %struct.timespec64* %16 to { i64, i64 }*
  %97 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 0
  %98 = extractvalue { i64, i64 } %95, 0
  store i64 %98, i64* %97, align 8
  %99 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %96, i32 0, i32 1
  %100 = extractvalue { i64, i64 } %95, 1
  store i64 %100, i64* %99, align 8
  %101 = bitcast %struct.timespec64* %14 to i8*
  %102 = bitcast %struct.timespec64* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 8 %102, i64 16, i1 false)
  %103 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %6, align 4
  %106 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %14, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %7, align 4
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %110 = load i32, i32* @IXGBE_FREQOUT0, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %109, i32 %110, i32 %111)
  %113 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %114 = load i32, i32* @IXGBE_TRGTTIML0, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %113, i32 %114, i32 %115)
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %118 = load i32, i32* @IXGBE_TRGTTIMH0, align 4
  %119 = load i32, i32* %7, align 4
  %120 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %117, i32 %118, i32 %119)
  %121 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %122 = load i32, i32* @IXGBE_ESDP, align 4
  %123 = load i32, i32* %3, align 4
  %124 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %121, i32 %122, i32 %123)
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %126 = load i32, i32* @IXGBE_TSSDP, align 4
  %127 = load i32, i32* %9, align 4
  %128 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %125, i32 %126, i32 %127)
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %130 = load i32, i32* @IXGBE_TSAUXC, align 4
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %129, i32 %130, i32 %131)
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %11, align 8
  %134 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %133)
  br label %135

135:                                              ; preds = %33, %32
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

declare dso_local { i64, i64 } @ns_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
