; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_rw_cmd_prepare_and_execute.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_meson_nand.c_meson_nfc_rw_cmd_prepare_and_execute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, i32 }
%struct.mtd_info = type { i32 }
%struct.meson_nfc = type { %struct.TYPE_8__, i64, %struct.TYPE_7__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64*, i64, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.nand_sdr_timings = type { i32 }

@NAND_CMD_READ0 = common dso_local global i64 0, align 8
@NAND_CMD_SEQIN = common dso_local global i64 0, align 8
@NFC_CMD_CLE = common dso_local global i64 0, align 8
@NFC_CMD_ALE = common dso_local global i64 0, align 8
@NAND_ROW_ADDR_3 = common dso_local global i32 0, align 4
@NFC_REG_CMD = common dso_local global i64 0, align 8
@NAND_CMD_READSTART = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32, i32)* @meson_nfc_rw_cmd_prepare_and_execute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_nfc_rw_cmd_prepare_and_execute(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.meson_nfc*, align 8
  %9 = alloca %struct.nand_sdr_timings*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %17 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %18 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %17)
  store %struct.mtd_info* %18, %struct.mtd_info** %7, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %20 = call %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip* %19)
  store %struct.meson_nfc* %20, %struct.meson_nfc** %8, align 8
  %21 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %22 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1
  %23 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(i32* %22)
  store %struct.nand_sdr_timings* %23, %struct.nand_sdr_timings** %9, align 8
  %24 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %25 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64*, i64** %27, align 8
  store i64* %28, i64** %10, align 8
  %29 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %30 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %11, align 8
  store i32 0, i32* %15, align 4
  store i64 1, i64* %13, align 8
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i64, i64* @NAND_CMD_READ0, align 8
  br label %39

37:                                               ; preds = %3
  %38 = load i64, i64* @NAND_CMD_SEQIN, align 8
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i64 [ %36, %35 ], [ %38, %37 ]
  store i64 %40, i64* %12, align 8
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @NFC_CMD_CLE, align 8
  %43 = or i64 %41, %42
  %44 = load i64, i64* %12, align 8
  %45 = or i64 %43, %44
  %46 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %47 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i64 %45, i64* %49, align 8
  %50 = load i64, i64* %11, align 8
  %51 = load i64, i64* @NFC_CMD_ALE, align 8
  %52 = or i64 %50, %51
  %53 = load i64*, i64** %10, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %56 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp sle i32 %57, 512
  br i1 %58, label %59, label %62

59:                                               ; preds = %39
  %60 = load i64, i64* %13, align 8
  %61 = add i64 %60, -1
  store i64 %61, i64* %13, align 8
  store i64 1, i64* %14, align 8
  br label %68

62:                                               ; preds = %39
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @NFC_CMD_ALE, align 8
  %65 = or i64 %63, %64
  %66 = load i64*, i64** %10, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 1
  store i64 %65, i64* %67, align 8
  store i64 2, i64* %14, align 8
  br label %68

68:                                               ; preds = %62, %59
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @NFC_CMD_ALE, align 8
  %71 = or i64 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = call i64 @ROW_ADDER(i32 %72, i32 0)
  %74 = or i64 %71, %73
  %75 = load i64*, i64** %10, align 8
  %76 = load i64, i64* %14, align 8
  %77 = getelementptr inbounds i64, i64* %75, i64 %76
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* @NFC_CMD_ALE, align 8
  %80 = or i64 %78, %79
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @ROW_ADDER(i32 %81, i32 1)
  %83 = or i64 %80, %82
  %84 = load i64*, i64** %10, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %85, 1
  %87 = getelementptr inbounds i64, i64* %84, i64 %86
  store i64 %83, i64* %87, align 8
  %88 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %89 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @NAND_ROW_ADDR_3, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %105

94:                                               ; preds = %68
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* @NFC_CMD_ALE, align 8
  %97 = or i64 %95, %96
  %98 = load i32, i32* %5, align 4
  %99 = call i64 @ROW_ADDER(i32 %98, i32 2)
  %100 = or i64 %97, %99
  %101 = load i64*, i64** %10, align 8
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, 2
  %104 = getelementptr inbounds i64, i64* %101, i64 %103
  store i64 %100, i64* %104, align 8
  br label %108

105:                                              ; preds = %68
  %106 = load i64, i64* %13, align 8
  %107 = add i64 %106, -1
  store i64 %107, i64* %13, align 8
  br label %108

108:                                              ; preds = %105, %94
  %109 = load i64, i64* %13, align 8
  %110 = add i64 %109, -1
  store i64 %110, i64* %13, align 8
  store i32 0, i32* %16, align 4
  br label %111

111:                                              ; preds = %131, %108
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %13, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %118 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %117, i32 0, i32 2
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %16, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %126 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @NFC_REG_CMD, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writel_relaxed(i32 %124, i64 %129)
  br label %131

131:                                              ; preds = %116
  %132 = load i32, i32* %16, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %16, align 4
  br label %111

134:                                              ; preds = %111
  %135 = load i32, i32* %6, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %164

137:                                              ; preds = %134
  %138 = load i64, i64* %11, align 8
  %139 = load i64, i64* @NFC_CMD_CLE, align 8
  %140 = or i64 %138, %139
  %141 = load i64, i64* @NAND_CMD_READSTART, align 8
  %142 = or i64 %140, %141
  %143 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %144 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 2
  store i64 %142, i64* %146, align 8
  %147 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %148 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %153 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @NFC_REG_CMD, align 8
  %156 = add nsw i64 %154, %155
  %157 = call i32 @writel(i64 %151, i64 %156)
  %158 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %159 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %9, align 8
  %160 = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @PSEC_TO_MSEC(i32 %161)
  %163 = call i32 @meson_nfc_queue_rb(%struct.meson_nfc* %158, i32 %162)
  br label %171

164:                                              ; preds = %134
  %165 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %166 = load %struct.meson_nfc*, %struct.meson_nfc** %8, align 8
  %167 = getelementptr inbounds %struct.meson_nfc, %struct.meson_nfc* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @meson_nfc_cmd_idle(%struct.meson_nfc* %165, i32 %169)
  br label %171

171:                                              ; preds = %164, %137
  %172 = load i32, i32* %15, align 4
  ret i32 %172
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.meson_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local %struct.nand_sdr_timings* @nand_get_sdr_timings(i32*) #1

declare dso_local i64 @ROW_ADDER(i32, i32) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i32 @meson_nfc_queue_rb(%struct.meson_nfc*, i32) #1

declare dso_local i32 @PSEC_TO_MSEC(i32) #1

declare dso_local i32 @meson_nfc_cmd_idle(%struct.meson_nfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
