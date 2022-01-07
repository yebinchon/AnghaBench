; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_wtbl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32 }

@MT_WTBL1_W0_ADDR_HI = common dso_local global i32 0, align 4
@MT_WTBL1_W1_ADDR_LO = common dso_local global i32 0, align 4
@MT_WTBL1_W0_RX_CHECK_A1 = common dso_local global i64 0, align 8
@MT_WTBL1_W0_MUAR_IDX = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE_BUSY = common dso_local global i32 0, align 4
@MT_WTBL1_W2_ADMISSION_CONTROL = common dso_local global i64 0, align 8
@MT_WTBL2_SIZE = common dso_local global i32 0, align 4
@MT_WTBL_UPDATE_WTBL2 = common dso_local global i32 0, align 4
@MT_WTBL3_SIZE = common dso_local global i32 0, align 4
@MT_WTBL4_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_wtbl_init(%struct.mt7603_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.mt7603_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %14 = load i32*, i32** %8, align 8
  %15 = bitcast i32* %14 to i8*
  store i8* %15, i8** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i64 @mt7603_wtbl1_addr(i32 %16)
  store i64 %17, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %18 = load i8*, i8** %9, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %4
  %21 = load i32, i32* @MT_WTBL1_W0_ADDR_HI, align 4
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr i8, i8* %22, i64 4
  %24 = call i32 @get_unaligned_le16(i8* %23)
  %25 = call i64 @FIELD_PREP(i32 %21, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i32, i32* @MT_WTBL1_W1_ADDR_LO, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = call i32 @get_unaligned_le32(i8* %27)
  %29 = call i64 @FIELD_PREP(i32 %26, i32 %28)
  store i64 %29, i64* %12, align 8
  br label %30

30:                                               ; preds = %20, %4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 0, i32* %7, align 4
  br label %38

34:                                               ; preds = %30
  %35 = load i64, i64* @MT_WTBL1_W0_RX_CHECK_A1, align 8
  %36 = load i64, i64* %11, align 8
  %37 = or i64 %36, %35
  store i64 %37, i64* %11, align 8
  br label %38

38:                                               ; preds = %34, %33
  %39 = load i32, i32* @MT_WTBL1_W0_MUAR_IDX, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @FIELD_PREP(i32 %39, i32 %40)
  %42 = load i64, i64* %11, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %11, align 8
  %44 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %45 = load i32, i32* @MT_WTBL_UPDATE, align 4
  %46 = load i32, i32* @MT_WTBL_UPDATE_BUSY, align 4
  %47 = call i32 @mt76_poll(%struct.mt7603_dev* %44, i32 %45, i32 %46, i32 0, i32 5000)
  %48 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %49 = load i64, i64* %10, align 8
  %50 = add nsw i64 %49, 0
  %51 = load i64, i64* %11, align 8
  %52 = call i32 @mt76_set(%struct.mt7603_dev* %48, i64 %50, i64 %51)
  %53 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, 4
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @mt76_set(%struct.mt7603_dev* %53, i64 %55, i64 %56)
  %58 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 8
  %61 = load i64, i64* @MT_WTBL1_W2_ADMISSION_CONTROL, align 8
  %62 = call i32 @mt76_set(%struct.mt7603_dev* %58, i64 %60, i64 %61)
  %63 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %64 = call i32 @GENMASK(i32 3, i32 0)
  %65 = call i32 @mt76_stop_tx_ac(%struct.mt7603_dev* %63, i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = call i64 @mt7603_wtbl2_addr(i32 %66)
  store i64 %67, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %68

68:                                               ; preds = %79, %38
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* @MT_WTBL2_SIZE, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %82

72:                                               ; preds = %68
  %73 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %74 = load i64, i64* %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = call i32 @mt76_wr(%struct.mt7603_dev* %73, i64 %77, i32 0)
  br label %79

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 4
  store i32 %81, i32* %13, align 4
  br label %68

82:                                               ; preds = %68
  %83 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @MT_WTBL_UPDATE_WTBL2, align 4
  %86 = call i32 @mt7603_wtbl_update(%struct.mt7603_dev* %83, i32 %84, i32 %85)
  %87 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %88 = call i32 @GENMASK(i32 3, i32 0)
  %89 = call i32 @mt76_start_tx_ac(%struct.mt7603_dev* %87, i32 %88)
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @mt7603_wtbl3_addr(i32 %90)
  store i64 %91, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %92

92:                                               ; preds = %103, %82
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @MT_WTBL3_SIZE, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %92
  %97 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %98 = load i64, i64* %10, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %98, %100
  %102 = call i32 @mt76_wr(%struct.mt7603_dev* %97, i64 %101, i32 0)
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 4
  store i32 %105, i32* %13, align 4
  br label %92

106:                                              ; preds = %92
  %107 = load i32, i32* %6, align 4
  %108 = call i64 @mt7603_wtbl4_addr(i32 %107)
  store i64 %108, i64* %10, align 8
  store i32 0, i32* %13, align 4
  br label %109

109:                                              ; preds = %120, %106
  %110 = load i32, i32* %13, align 4
  %111 = load i32, i32* @MT_WTBL4_SIZE, align 4
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %109
  %114 = load %struct.mt7603_dev*, %struct.mt7603_dev** %5, align 8
  %115 = load i64, i64* %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = call i32 @mt76_wr(%struct.mt7603_dev* %114, i64 %118, i32 0)
  br label %120

120:                                              ; preds = %113
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 4
  store i32 %122, i32* %13, align 4
  br label %109

123:                                              ; preds = %109
  ret void
}

declare dso_local i64 @mt7603_wtbl1_addr(i32) #1

declare dso_local i64 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @get_unaligned_le16(i8*) #1

declare dso_local i32 @get_unaligned_le32(i8*) #1

declare dso_local i32 @mt76_poll(%struct.mt7603_dev*, i32, i32, i32, i32) #1

declare dso_local i32 @mt76_set(%struct.mt7603_dev*, i64, i64) #1

declare dso_local i32 @mt76_stop_tx_ac(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i64 @mt7603_wtbl2_addr(i32) #1

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i64, i32) #1

declare dso_local i32 @mt7603_wtbl_update(%struct.mt7603_dev*, i32, i32) #1

declare dso_local i32 @mt76_start_tx_ac(%struct.mt7603_dev*, i32) #1

declare dso_local i64 @mt7603_wtbl3_addr(i32) #1

declare dso_local i64 @mt7603_wtbl4_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
