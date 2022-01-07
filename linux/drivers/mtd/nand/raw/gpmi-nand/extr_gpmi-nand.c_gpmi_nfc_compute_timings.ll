; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_nfc_compute_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/gpmi-nand/extr_gpmi-nand.c_gpmi_nfc_compute_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmi_nand_data = type { %struct.TYPE_2__*, %struct.gpmi_nfc_hardware_timing }
%struct.TYPE_2__ = type { i32 }
%struct.gpmi_nfc_hardware_timing = type { i32, i32, i32, i32 }
%struct.nand_sdr_timings = type { i32, i32, i64, i64, i64, i64, i64 }

@BV_GPMI_CTRL1_WRN_DLY_SEL_4_TO_8NS = common dso_local global i32 0, align 4
@BV_GPMI_CTRL1_WRN_DLY_SEL_NO_DELAY = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@BM_GPMI_CTRL1_DLL_ENABLE = common dso_local global i32 0, align 4
@BM_GPMI_CTRL1_HALF_PERIOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpmi_nand_data*, %struct.nand_sdr_timings*)* @gpmi_nfc_compute_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpmi_nfc_compute_timings(%struct.gpmi_nand_data* %0, %struct.nand_sdr_timings* %1) #0 {
  %3 = alloca %struct.gpmi_nand_data*, align 8
  %4 = alloca %struct.nand_sdr_timings*, align 8
  %5 = alloca %struct.gpmi_nfc_hardware_timing*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.gpmi_nand_data* %0, %struct.gpmi_nand_data** %3, align 8
  store %struct.nand_sdr_timings* %1, %struct.nand_sdr_timings** %4, align 8
  %18 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %19 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %18, i32 0, i32 1
  store %struct.gpmi_nfc_hardware_timing* %19, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %20 = load %struct.gpmi_nand_data*, %struct.gpmi_nand_data** %3, align 8
  %21 = getelementptr inbounds %struct.gpmi_nand_data, %struct.gpmi_nand_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %6, align 4
  %25 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %26 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp sge i32 %27, 30000
  br i1 %28, label %29, label %33

29:                                               ; preds = %2
  %30 = load %struct.gpmi_nfc_hardware_timing*, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %31 = getelementptr inbounds %struct.gpmi_nfc_hardware_timing, %struct.gpmi_nfc_hardware_timing* %30, i32 0, i32 0
  store i32 22000000, i32* %31, align 4
  %32 = load i32, i32* @BV_GPMI_CTRL1_WRN_DLY_SEL_4_TO_8NS, align 4
  store i32 %32, i32* %17, align 4
  br label %47

33:                                               ; preds = %2
  %34 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %35 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp sge i32 %36, 25000
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.gpmi_nfc_hardware_timing*, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %40 = getelementptr inbounds %struct.gpmi_nfc_hardware_timing, %struct.gpmi_nfc_hardware_timing* %39, i32 0, i32 0
  store i32 80000000, i32* %40, align 4
  %41 = load i32, i32* @BV_GPMI_CTRL1_WRN_DLY_SEL_NO_DELAY, align 4
  store i32 %41, i32* %17, align 4
  br label %46

42:                                               ; preds = %33
  %43 = load %struct.gpmi_nfc_hardware_timing*, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %44 = getelementptr inbounds %struct.gpmi_nfc_hardware_timing, %struct.gpmi_nfc_hardware_timing* %43, i32 0, i32 0
  store i32 100000000, i32* %44, align 4
  %45 = load i32, i32* @BV_GPMI_CTRL1_WRN_DLY_SEL_NO_DELAY, align 4
  store i32 %45, i32* %17, align 4
  br label %46

46:                                               ; preds = %42, %38
  br label %47

47:                                               ; preds = %46, %29
  %48 = load i64, i64* @NSEC_PER_SEC, align 8
  %49 = trunc i64 %48 to i32
  %50 = mul nsw i32 %49, 1000
  %51 = load %struct.gpmi_nfc_hardware_timing*, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %52 = getelementptr inbounds %struct.gpmi_nfc_hardware_timing, %struct.gpmi_nfc_hardware_timing* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @div_u64(i32 %50, i32 %53)
  store i32 %54, i32* %7, align 4
  %55 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %56 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %55, i32 0, i32 6
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i8* @TO_CYCLES(i64 %57, i32 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %62 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i8* @TO_CYCLES(i64 %63, i32 %64)
  %66 = ptrtoint i8* %65 to i32
  store i32 %66, i32* %9, align 4
  %67 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %68 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i8* @TO_CYCLES(i64 %69, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  store i32 %72, i32* %10, align 4
  %73 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %74 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %77 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %75, %78
  %80 = load i32, i32* %7, align 4
  %81 = call i8* @TO_CYCLES(i64 %79, i32 %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %16, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @BF_GPMI_TIMING0_ADDRESS_SETUP(i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @BF_GPMI_TIMING0_DATA_HOLD(i32 %85)
  %87 = or i32 %84, %86
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @BF_GPMI_TIMING0_DATA_SETUP(i32 %88)
  %90 = or i32 %87, %89
  %91 = load %struct.gpmi_nfc_hardware_timing*, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %92 = getelementptr inbounds %struct.gpmi_nfc_hardware_timing, %struct.gpmi_nfc_hardware_timing* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %16, align 4
  %94 = mul nsw i32 %93, 4096
  %95 = call i32 @BF_GPMI_TIMING1_BUSY_TIMEOUT(i32 %94)
  %96 = load %struct.gpmi_nfc_hardware_timing*, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %97 = getelementptr inbounds %struct.gpmi_nfc_hardware_timing, %struct.gpmi_nfc_hardware_timing* %96, i32 0, i32 3
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* %6, align 4
  %100 = icmp ugt i32 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %47
  store i32 1, i32* %13, align 4
  %102 = load i32, i32* %7, align 4
  %103 = udiv i32 %102, 2
  store i32 %103, i32* %8, align 4
  br label %106

104:                                              ; preds = %47
  store i32 0, i32* %13, align 4
  %105 = load i32, i32* %7, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %104, %101
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %7, align 4
  %109 = mul i32 %107, %108
  store i32 %109, i32* %12, align 4
  %110 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %4, align 8
  %111 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 4000
  %114 = load i32, i32* %12, align 4
  %115 = sub i32 %113, %114
  %116 = mul i32 %115, 8
  store i32 %116, i32* %14, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp sgt i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %106
  %120 = load i32, i32* %14, align 4
  %121 = load i32, i32* %8, align 4
  %122 = udiv i32 %120, %121
  store i32 %122, i32* %15, align 4
  br label %124

123:                                              ; preds = %106
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %123, %119
  %125 = load i32, i32* %17, align 4
  %126 = call i32 @BF_GPMI_CTRL1_WRN_DLY_SEL(i32 %125)
  %127 = load %struct.gpmi_nfc_hardware_timing*, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %128 = getelementptr inbounds %struct.gpmi_nfc_hardware_timing, %struct.gpmi_nfc_hardware_timing* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %148

131:                                              ; preds = %124
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @BF_GPMI_CTRL1_RDN_DELAY(i32 %132)
  %134 = load i32, i32* @BM_GPMI_CTRL1_DLL_ENABLE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* %13, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %131
  %139 = load i32, i32* @BM_GPMI_CTRL1_HALF_PERIOD, align 4
  br label %141

140:                                              ; preds = %131
  br label %141

141:                                              ; preds = %140, %138
  %142 = phi i32 [ %139, %138 ], [ 0, %140 ]
  %143 = or i32 %135, %142
  %144 = load %struct.gpmi_nfc_hardware_timing*, %struct.gpmi_nfc_hardware_timing** %5, align 8
  %145 = getelementptr inbounds %struct.gpmi_nfc_hardware_timing, %struct.gpmi_nfc_hardware_timing* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %141, %124
  ret void
}

declare dso_local i32 @div_u64(i32, i32) #1

declare dso_local i8* @TO_CYCLES(i64, i32) #1

declare dso_local i32 @BF_GPMI_TIMING0_ADDRESS_SETUP(i32) #1

declare dso_local i32 @BF_GPMI_TIMING0_DATA_HOLD(i32) #1

declare dso_local i32 @BF_GPMI_TIMING0_DATA_SETUP(i32) #1

declare dso_local i32 @BF_GPMI_TIMING1_BUSY_TIMEOUT(i32) #1

declare dso_local i32 @BF_GPMI_CTRL1_WRN_DLY_SEL(i32) #1

declare dso_local i32 @BF_GPMI_CTRL1_RDN_DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
