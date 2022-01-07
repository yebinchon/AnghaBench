; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_PSE_PAGE_SIZE = common dso_local global i32 0, align 4
@MT_WTBL2_SIZE = common dso_local global i32 0, align 4
@MT_WTBL3_OFFSET = common dso_local global i32 0, align 4
@MT_WTBL3_SIZE = common dso_local global i32 0, align 4
@MT_WTBL4_OFFSET = common dso_local global i32 0, align 4
@MT_WTBL4_SIZE = common dso_local global i32 0, align 4
@MT_WTBL1_BASE = common dso_local global i64 0, align 8
@MT_WTBL1_SIZE = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE_BUSY = common dso_local global i32 0, align 4
@MT_WTBL1_W0_RX_CHECK_A1 = common dso_local global i32 0, align 4
@MT_WTBL1_W0_RX_CHECK_A2 = common dso_local global i32 0, align 4
@MT_WTBL1_W0_RX_VALID = common dso_local global i32 0, align 4
@MT_WTBL1_OR = common dso_local global i32 0, align 4
@MT_WTBL1_OR_PSM_WRITE = common dso_local global i32 0, align 4
@MT_WTBL1_W3_WTBL2_FRAME_ID = common dso_local global i32 0, align 4
@MT_WTBL1_W3_WTBL2_ENTRY_ID = common dso_local global i32 0, align 4
@MT_WTBL1_W3_WTBL4_FRAME_ID = common dso_local global i32 0, align 4
@MT_WTBL1_W3_I_PSM = common dso_local global i32 0, align 4
@MT_WTBL1_W3_KEEP_I_PSM = common dso_local global i32 0, align 4
@MT_WTBL1_W4_WTBL3_FRAME_ID = common dso_local global i32 0, align 4
@MT_WTBL1_W4_WTBL3_ENTRY_ID = common dso_local global i32 0, align 4
@MT_WTBL1_W4_WTBL4_ENTRY_ID = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE_WTBL2 = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE_RX_COUNT_CLEAR = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE_TX_COUNT_CLEAR = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE_ADM_COUNT_CLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_wtbl_clear(%struct.mt7603_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca i32, align 4
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
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load i32, i32* @MT_PSE_PAGE_SIZE, align 4
  %19 = load i32, i32* @MT_WTBL2_SIZE, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = sdiv i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @MT_WTBL3_OFFSET, align 4
  %28 = load i32, i32* @MT_PSE_PAGE_SIZE, align 4
  %29 = sdiv i32 %27, %28
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @MT_PSE_PAGE_SIZE, align 4
  %31 = load i32, i32* @MT_WTBL3_SIZE, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sdiv i32 %34, %35
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %9, align 4
  %40 = srem i32 %38, %39
  %41 = mul nsw i32 %40, 2
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @MT_WTBL4_OFFSET, align 4
  %43 = load i32, i32* @MT_PSE_PAGE_SIZE, align 4
  %44 = sdiv i32 %42, %43
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* @MT_PSE_PAGE_SIZE, align 4
  %46 = load i32, i32* @MT_WTBL4_SIZE, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* %13, align 4
  %51 = sdiv i32 %49, %50
  %52 = add nsw i32 %48, %51
  store i32 %52, i32* %14, align 4
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* %13, align 4
  %55 = srem i32 %53, %54
  store i32 %55, i32* %15, align 4
  %56 = load i64, i64* @MT_WTBL1_BASE, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @MT_WTBL1_SIZE, align 4
  %59 = mul nsw i32 %57, %58
  %60 = sext i32 %59 to i64
  %61 = add nsw i64 %56, %60
  store i64 %61, i64* %16, align 8
  %62 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %63 = load i32, i32* @MT_WTBL_UPDATE, align 4
  %64 = load i32, i32* @MT_WTBL_UPDATE_BUSY, align 4
  %65 = call i32 @mt76_poll(%struct.mt7603_dev* %62, i32 %63, i32 %64, i32 0, i32 5000)
  %66 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %67 = load i64, i64* %16, align 8
  %68 = add nsw i64 %67, 0
  %69 = load i32, i32* @MT_WTBL1_W0_RX_CHECK_A1, align 4
  %70 = load i32, i32* @MT_WTBL1_W0_RX_CHECK_A2, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @MT_WTBL1_W0_RX_VALID, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @mt76_wr(%struct.mt7603_dev* %66, i64 %68, i32 %73)
  %75 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %76 = load i64, i64* %16, align 8
  %77 = add nsw i64 %76, 4
  %78 = call i32 @mt76_wr(%struct.mt7603_dev* %75, i64 %77, i32 0)
  %79 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %80 = load i64, i64* %16, align 8
  %81 = add nsw i64 %80, 8
  %82 = call i32 @mt76_wr(%struct.mt7603_dev* %79, i64 %81, i32 0)
  %83 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %84 = load i32, i32* @MT_WTBL1_OR, align 4
  %85 = load i32, i32* @MT_WTBL1_OR_PSM_WRITE, align 4
  %86 = call i32 @mt76_set(%struct.mt7603_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %88 = load i64, i64* %16, align 8
  %89 = add nsw i64 %88, 12
  %90 = load i32, i32* @MT_WTBL1_W3_WTBL2_FRAME_ID, align 4
  %91 = load i32, i32* %6, align 4
  %92 = call i32 @FIELD_PREP(i32 %90, i32 %91)
  %93 = load i32, i32* @MT_WTBL1_W3_WTBL2_ENTRY_ID, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @FIELD_PREP(i32 %93, i32 %94)
  %96 = or i32 %92, %95
  %97 = load i32, i32* @MT_WTBL1_W3_WTBL4_FRAME_ID, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @FIELD_PREP(i32 %97, i32 %98)
  %100 = or i32 %96, %99
  %101 = load i32, i32* @MT_WTBL1_W3_I_PSM, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @MT_WTBL1_W3_KEEP_I_PSM, align 4
  %104 = or i32 %102, %103
  %105 = call i32 @mt76_wr(%struct.mt7603_dev* %87, i64 %89, i32 %104)
  %106 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %107 = load i64, i64* %16, align 8
  %108 = add nsw i64 %107, 16
  %109 = load i32, i32* @MT_WTBL1_W4_WTBL3_FRAME_ID, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @FIELD_PREP(i32 %109, i32 %110)
  %112 = load i32, i32* @MT_WTBL1_W4_WTBL3_ENTRY_ID, align 4
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @FIELD_PREP(i32 %112, i32 %113)
  %115 = or i32 %111, %114
  %116 = load i32, i32* @MT_WTBL1_W4_WTBL4_ENTRY_ID, align 4
  %117 = load i32, i32* %15, align 4
  %118 = call i32 @FIELD_PREP(i32 %116, i32 %117)
  %119 = or i32 %115, %118
  %120 = call i32 @mt76_wr(%struct.mt7603_dev* %106, i64 %108, i32 %119)
  %121 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %122 = load i32, i32* @MT_WTBL1_OR, align 4
  %123 = load i32, i32* @MT_WTBL1_OR_PSM_WRITE, align 4
  %124 = call i32 @mt76_clear(%struct.mt7603_dev* %121, i32 %122, i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = call i64 @mt7603_wtbl2_addr(i32 %125)
  store i64 %126, i64* %16, align 8
  %127 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %128 = load i64, i64* %16, align 8
  %129 = add nsw i64 %128, 60
  %130 = call i32 @mt76_wr(%struct.mt7603_dev* %127, i64 %129, i32 0)
  %131 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %132 = call i32 @GENMASK(i32 3, i32 0)
  %133 = call i32 @mt76_stop_tx_ac(%struct.mt7603_dev* %131, i32 %132)
  store i32 2, i32* %17, align 4
  br label %134

134:                                              ; preds = %145, %2
  %135 = load i32, i32* %17, align 4
  %136 = icmp sle i32 %135, 4
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i32, i32* %17, align 4
  %141 = mul nsw i32 %140, 4
  %142 = sext i32 %141 to i64
  %143 = add nsw i64 %139, %142
  %144 = call i32 @mt76_wr(%struct.mt7603_dev* %138, i64 %143, i32 0)
  br label %145

145:                                              ; preds = %137
  %146 = load i32, i32* %17, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %17, align 4
  br label %134

148:                                              ; preds = %134
  %149 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %150 = load i32, i32* %4, align 4
  %151 = load i32, i32* @MT_WTBL_UPDATE_WTBL2, align 4
  %152 = call i32 @mt7603_wtbl_update(%struct.mt7603_dev* %149, i32 %150, i32 %151)
  %153 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %154 = call i32 @GENMASK(i32 3, i32 0)
  %155 = call i32 @mt76_start_tx_ac(%struct.mt7603_dev* %153, i32 %154)
  %156 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %157 = load i32, i32* %4, align 4
  %158 = load i32, i32* @MT_WTBL_UPDATE_RX_COUNT_CLEAR, align 4
  %159 = call i32 @mt7603_wtbl_update(%struct.mt7603_dev* %156, i32 %157, i32 %158)
  %160 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* @MT_WTBL_UPDATE_TX_COUNT_CLEAR, align 4
  %163 = call i32 @mt7603_wtbl_update(%struct.mt7603_dev* %160, i32 %161, i32 %162)
  %164 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %165 = load i32, i32* %4, align 4
  %166 = load i32, i32* @MT_WTBL_UPDATE_ADM_COUNT_CLEAR, align 4
  %167 = call i32 @mt7603_wtbl_update(%struct.mt7603_dev* %164, i32 %165, i32 %166)
  ret void
}

declare dso_local i32 @mt76_poll(%struct.mt7603_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i64, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @mt76_clear(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i64 @mt7603_wtbl2_addr(i32) #1

declare dso_local i32 @mt76_stop_tx_ac(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @mt7603_wtbl_update(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_start_tx_ac(%struct.mt7603_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
