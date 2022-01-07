; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_edcca_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_mac.c_mt7603_edcca_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, i32, i32, i32 }

@MT_AGC_41_RSSI_0 = common dso_local global i32 0, align 4
@MT_AGC_41_RSSI_1 = common dso_local global i32 0, align 4
@MT7603_EDCCA_BLOCK_TH = common dso_local global i32 0, align 4
@MT_MIB_STAT_ED = common dso_local global i32 0, align 4
@MT_MIB_STAT_ED_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7603_dev*)* @mt7603_edcca_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7603_edcca_check(%struct.mt7603_dev* %0) #0 {
  %2 = alloca %struct.mt7603_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %2, align 8
  %9 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %10 = call i32 @MT_AGC(i32 41)
  %11 = call i32 @mt76_rr(%struct.mt7603_dev* %9, i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %13 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %163

17:                                               ; preds = %1
  %18 = load i32, i32* @MT_AGC_41_RSSI_0, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @FIELD_GET(i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 128
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i32, i32* %5, align 4
  %25 = sub nsw i32 %24, 256
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %17
  %27 = load i32, i32* @MT_AGC_41_RSSI_1, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @FIELD_GET(i32 %27, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sgt i32 %30, 128
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 256
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %32, %26
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @max(i32 %36, i32 %37)
  %39 = icmp sge i32 %38, -40
  br i1 %39, label %40, label %51

40:                                               ; preds = %35
  %41 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %42 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MT7603_EDCCA_BLOCK_TH, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %48 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %62

51:                                               ; preds = %40, %35
  %52 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %53 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %58 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %51
  br label %62

62:                                               ; preds = %61, %46
  %63 = call i32 (...) @ktime_get_boottime()
  store i32 %63, i32* %4, align 4
  %64 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %65 = load i32, i32* @MT_MIB_STAT_ED, align 4
  %66 = call i32 @mt76_rr(%struct.mt7603_dev* %64, i32 %65)
  %67 = load i32, i32* @MT_MIB_STAT_ED_MASK, align 4
  %68 = and i32 %66, %67
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %4, align 4
  %70 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %71 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ktime_sub(i32 %69, i32 %72)
  %74 = call i32 @ktime_to_us(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %4, align 4
  %76 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %77 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %62
  br label %163

81:                                               ; preds = %62
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 100, %82
  %84 = load i32, i32* %7, align 4
  %85 = sdiv i32 %83, %84
  %86 = icmp sgt i32 %85, 90
  br i1 %86, label %87, label %100

87:                                               ; preds = %81
  %88 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %89 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %94 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %93, i32 0, i32 1
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %92, %87
  %96 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %97 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %113

100:                                              ; preds = %81
  %101 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %102 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %107 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %106, i32 0, i32 1
  store i32 0, i32* %107, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %110 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = add nsw i32 %111, -1
  store i32 %112, i32* %110, align 4
  br label %113

113:                                              ; preds = %108, %95
  %114 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %115 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @MT7603_EDCCA_BLOCK_TH, align 4
  %118 = icmp sgt i32 %116, %117
  br i1 %118, label %126, label %119

119:                                              ; preds = %113
  %120 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %121 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @MT7603_EDCCA_BLOCK_TH, align 4
  %124 = sdiv i32 %123, 2
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %119, %113
  %127 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %128 = call i32 @mt7603_edcca_set_strict(%struct.mt7603_dev* %127, i32 1)
  br label %140

129:                                              ; preds = %119
  %130 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %131 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MT7603_EDCCA_BLOCK_TH, align 4
  %134 = sub nsw i32 0, %133
  %135 = icmp slt i32 %132, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %129
  %137 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %138 = call i32 @mt7603_edcca_set_strict(%struct.mt7603_dev* %137, i32 0)
  br label %139

139:                                              ; preds = %136, %129
  br label %140

140:                                              ; preds = %139, %126
  %141 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %142 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @MT7603_EDCCA_BLOCK_TH, align 4
  %145 = icmp sgt i32 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %140
  %147 = load i32, i32* @MT7603_EDCCA_BLOCK_TH, align 4
  %148 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %149 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  br label %163

150:                                              ; preds = %140
  %151 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %152 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @MT7603_EDCCA_BLOCK_TH, align 4
  %155 = sub nsw i32 0, %154
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %162

157:                                              ; preds = %150
  %158 = load i32, i32* @MT7603_EDCCA_BLOCK_TH, align 4
  %159 = sub nsw i32 0, %158
  %160 = load %struct.mt7603_dev*, %struct.mt7603_dev** %2, align 8
  %161 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %160, i32 0, i32 1
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %157, %150
  br label %163

163:                                              ; preds = %16, %80, %162, %146
  ret void
}

declare dso_local i32 @mt76_rr(%struct.mt7603_dev*, i32) #1

declare dso_local i32 @MT_AGC(i32) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ktime_get_boottime(...) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_sub(i32, i32) #1

declare dso_local i32 @mt7603_edcca_set_strict(%struct.mt7603_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
