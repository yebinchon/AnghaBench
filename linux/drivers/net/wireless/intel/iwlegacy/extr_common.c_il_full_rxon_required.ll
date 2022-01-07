; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_full_rxon_required.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_full_rxon_required.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.il_rxon_cmd, %struct.il_rxon_cmd }
%struct.il_rxon_cmd = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"need full RXON - !il_is_associated(il)\0A\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"need full RXON - !ether_addr_equal_64bits(staging->bssid_addr, active->bssid_addr)\0A\00", align 1
@.str.2 = private unnamed_addr constant [82 x i8] c"need full RXON - !ether_addr_equal_64bits(staging->node_addr, active->node_addr)\0A\00", align 1
@.str.3 = private unnamed_addr constant [94 x i8] c"need full RXON - !ether_addr_equal_64bits(staging->wlap_bssid_addr, active->wlap_bssid_addr)\0A\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"need full RXON - staging->dev_type != active->dev_type - %d != %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"need full RXON - staging->channel != active->channel - %d != %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [81 x i8] c"need full RXON - staging->air_propagation != active->air_propagation - %d != %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [117 x i8] c"need full RXON - staging->ofdm_ht_single_stream_basic_rates != active->ofdm_ht_single_stream_basic_rates - %d != %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [113 x i8] c"need full RXON - staging->ofdm_ht_dual_stream_basic_rates != active->ofdm_ht_dual_stream_basic_rates - %d != %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [67 x i8] c"need full RXON - staging->assoc_id != active->assoc_id - %d != %d\0A\00", align 1
@RXON_FLG_BAND_24G_MSK = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [109 x i8] c"need full RXON - staging->flags & RXON_FLG_BAND_24G_MSK != active->flags & RXON_FLG_BAND_24G_MSK - %d != %d\0A\00", align 1
@RXON_FILTER_ASSOC_MSK = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [123 x i8] c"need full RXON - staging->filter_flags & RXON_FILTER_ASSOC_MSK != active->filter_flags & RXON_FILTER_ASSOC_MSK - %d != %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @il_full_rxon_required(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_rxon_cmd*, align 8
  %5 = alloca %struct.il_rxon_cmd*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 1
  store %struct.il_rxon_cmd* %7, %struct.il_rxon_cmd** %4, align 8
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  store %struct.il_rxon_cmd* %9, %struct.il_rxon_cmd** %5, align 8
  %10 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %11 = call i32 @il_is_associated(%struct.il_priv* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = call i32 (i8*, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, ...)*)(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %193

15:                                               ; preds = %1
  %16 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %17 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %16, i32 0, i32 10
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %19, i32 0, i32 10
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ether_addr_equal_64bits(i32 %18, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %15
  %25 = call i32 (i8*, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, ...)*)(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %193

26:                                               ; preds = %15
  %27 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ether_addr_equal_64bits(i32 %29, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %26
  %36 = call i32 (i8*, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, ...)*)(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %193

37:                                               ; preds = %26
  %38 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %39 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %38, i32 0, i32 8
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %42 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ether_addr_equal_64bits(i32 %40, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %37
  %47 = call i32 (i8*, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, ...)*)(i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %193

48:                                               ; preds = %37
  %49 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %50 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %61 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %59, i32 %62)
  store i32 1, i32* %2, align 4
  br label %193

64:                                               ; preds = %48
  %65 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %69 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %74 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %77 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i32 %75, i32 %78)
  store i32 1, i32* %2, align 4
  br label %193

80:                                               ; preds = %64
  %81 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %82 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %85 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %83, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %80
  %89 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %90 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %93 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.6, i64 0, i64 0), i32 %91, i32 %94)
  store i32 1, i32* %2, align 4
  br label %193

96:                                               ; preds = %80
  %97 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %98 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %101 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %99, %102
  br i1 %103, label %104, label %112

104:                                              ; preds = %96
  %105 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %109 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([117 x i8], [117 x i8]* @.str.7, i64 0, i64 0), i32 %107, i32 %110)
  store i32 1, i32* %2, align 4
  br label %193

112:                                              ; preds = %96
  %113 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %114 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %117 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %115, %118
  br i1 %119, label %120, label %128

120:                                              ; preds = %112
  %121 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %122 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %125 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 4
  %127 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.8, i64 0, i64 0), i32 %123, i32 %126)
  store i32 1, i32* %2, align 4
  br label %193

128:                                              ; preds = %112
  %129 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %130 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %129, i32 0, i32 5
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %133 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = icmp ne i32 %131, %134
  br i1 %135, label %136, label %144

136:                                              ; preds = %128
  %137 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %138 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %141 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %140, i32 0, i32 5
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.9, i64 0, i64 0), i32 %139, i32 %142)
  store i32 1, i32* %2, align 4
  br label %193

144:                                              ; preds = %128
  %145 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %146 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %145, i32 0, i32 6
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %149 = and i32 %147, %148
  %150 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %151 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %150, i32 0, i32 6
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %149, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %144
  %157 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %158 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %161 = and i32 %159, %160
  %162 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %163 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %162, i32 0, i32 6
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @RXON_FLG_BAND_24G_MSK, align 4
  %166 = and i32 %164, %165
  %167 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.10, i64 0, i64 0), i32 %161, i32 %166)
  store i32 1, i32* %2, align 4
  br label %193

168:                                              ; preds = %144
  %169 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %169, i32 0, i32 7
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %173 = and i32 %171, %172
  %174 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %175 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %173, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %168
  %181 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %4, align 8
  %182 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %181, i32 0, i32 7
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %185 = and i32 %183, %184
  %186 = load %struct.il_rxon_cmd*, %struct.il_rxon_cmd** %5, align 8
  %187 = getelementptr inbounds %struct.il_rxon_cmd, %struct.il_rxon_cmd* %186, i32 0, i32 7
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @RXON_FILTER_ASSOC_MSK, align 4
  %190 = and i32 %188, %189
  %191 = call i32 (i8*, i32, i32, ...) bitcast (i32 (...)* @D_INFO to i32 (i8*, i32, i32, ...)*)(i8* getelementptr inbounds ([123 x i8], [123 x i8]* @.str.11, i64 0, i64 0), i32 %185, i32 %190)
  store i32 1, i32* %2, align 4
  br label %193

192:                                              ; preds = %168
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %180, %156, %136, %120, %104, %88, %72, %56, %46, %35, %24, %13
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32 @il_is_associated(%struct.il_priv*) #1

declare dso_local i32 @D_INFO(...) #1

declare dso_local i32 @ether_addr_equal_64bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
