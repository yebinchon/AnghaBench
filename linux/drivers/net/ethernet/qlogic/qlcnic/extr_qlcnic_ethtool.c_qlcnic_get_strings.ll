; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_strings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8* }
%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i32, i32 }

@qlcnic_gstrings_test = common dso_local global i8** null, align 8
@QLCNIC_TEST_LEN = common dso_local global i32 0, align 4
@ETH_GSTRING_LEN = common dso_local global i32 0, align 4
@qlcnic_tx_queue_stats_strings = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [15 x i8] c"tx_queue_%d %s\00", align 1
@QLCNIC_STATS_LEN = common dso_local global i32 0, align 4
@qlcnic_gstrings_stats = common dso_local global %struct.TYPE_2__* null, align 8
@qlcnic_83xx_tx_stats_strings = common dso_local global i8** null, align 8
@qlcnic_83xx_mac_stats_strings = common dso_local global i8** null, align 8
@qlcnic_83xx_rx_stats_strings = common dso_local global i8** null, align 8
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@qlcnic_device_gstrings_stats = common dso_local global i8** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32*)* @qlcnic_get_strings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_get_strings(%struct.net_device* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.qlcnic_adapter* %12, %struct.qlcnic_adapter** %7, align 8
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %224 [
    i32 128, label %14
    i32 129, label %22
  ]

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = load i8**, i8*** @qlcnic_gstrings_test, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @QLCNIC_TEST_LEN, align 4
  %19 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %20 = mul nsw i32 %18, %19
  %21 = call i32 @memcpy(i32* %15, i8* %17, i32 %20)
  br label %224

22:                                               ; preds = %3
  %23 = load i8**, i8*** @qlcnic_tx_queue_stats_strings, align 8
  %24 = call i32 @ARRAY_SIZE(i8** %23)
  store i32 %24, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %53, %22
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %28 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %56

31:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %32

32:                                               ; preds = %49, %31
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = load i8**, i8*** @qlcnic_tx_queue_stats_strings, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %39, i64 %41
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @sprintf(i32* %37, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %38, i8* %43)
  %45 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = sext i32 %45 to i64
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32* %48, i32** %6, align 8
  br label %49

49:                                               ; preds = %36
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %32

52:                                               ; preds = %32
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %25

56:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %76, %56
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @QLCNIC_STATS_LEN, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %57
  %62 = load i32*, i32** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** @qlcnic_gstrings_stats, align 8
  %69 = load i32, i32* %8, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %75 = call i32 @memcpy(i32* %67, i8* %73, i32 %74)
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %8, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %8, align 4
  br label %57

79:                                               ; preds = %57
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %81 = call i32 @qlcnic_83xx_check(%struct.qlcnic_adapter* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %162

83:                                               ; preds = %79
  %84 = load i8**, i8*** @qlcnic_83xx_tx_stats_strings, align 8
  %85 = call i32 @ARRAY_SIZE(i8** %84)
  store i32 %85, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %86

86:                                               ; preds = %104, %83
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %109

90:                                               ; preds = %86
  %91 = load i32*, i32** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i8**, i8*** @qlcnic_83xx_tx_stats_strings, align 8
  %98 = load i32, i32* %9, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8*, i8** %97, i64 %99
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %103 = call i32 @memcpy(i32* %96, i8* %101, i32 %102)
  br label %104

104:                                              ; preds = %90
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %86

109:                                              ; preds = %86
  %110 = load i8**, i8*** @qlcnic_83xx_mac_stats_strings, align 8
  %111 = call i32 @ARRAY_SIZE(i8** %110)
  store i32 %111, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %130, %109
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load i32*, i32** %6, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %120 = mul nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %117, i64 %121
  %123 = load i8**, i8*** @qlcnic_83xx_mac_stats_strings, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8*, i8** %123, i64 %125
  %127 = load i8*, i8** %126, align 8
  %128 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %129 = call i32 @memcpy(i32* %122, i8* %127, i32 %128)
  br label %130

130:                                              ; preds = %116
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %8, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %8, align 4
  br label %112

135:                                              ; preds = %112
  %136 = load i8**, i8*** @qlcnic_83xx_rx_stats_strings, align 8
  %137 = call i32 @ARRAY_SIZE(i8** %136)
  store i32 %137, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %138

138:                                              ; preds = %156, %135
  %139 = load i32, i32* %9, align 4
  %140 = load i32, i32* %10, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %161

142:                                              ; preds = %138
  %143 = load i32*, i32** %6, align 8
  %144 = load i32, i32* %8, align 4
  %145 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %146 = mul nsw i32 %144, %145
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %143, i64 %147
  %149 = load i8**, i8*** @qlcnic_83xx_rx_stats_strings, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8*, i8** %149, i64 %151
  %153 = load i8*, i8** %152, align 8
  %154 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %155 = call i32 @memcpy(i32* %148, i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %142
  %157 = load i32, i32* %9, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %8, align 4
  br label %138

161:                                              ; preds = %138
  br label %224

162:                                              ; preds = %79
  %163 = load i8**, i8*** @qlcnic_83xx_mac_stats_strings, align 8
  %164 = call i32 @ARRAY_SIZE(i8** %163)
  store i32 %164, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %165

165:                                              ; preds = %183, %162
  %166 = load i32, i32* %9, align 4
  %167 = load i32, i32* %10, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %188

169:                                              ; preds = %165
  %170 = load i32*, i32** %6, align 8
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %173 = mul nsw i32 %171, %172
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i8**, i8*** @qlcnic_83xx_mac_stats_strings, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8*, i8** %176, i64 %178
  %180 = load i8*, i8** %179, align 8
  %181 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %182 = call i32 @memcpy(i32* %175, i8* %180, i32 %181)
  br label %183

183:                                              ; preds = %169
  %184 = load i32, i32* %9, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %9, align 4
  %186 = load i32, i32* %8, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %8, align 4
  br label %165

188:                                              ; preds = %165
  br label %189

189:                                              ; preds = %188
  %190 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %191 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %197, label %196

196:                                              ; preds = %189
  br label %224

197:                                              ; preds = %189
  %198 = load i8**, i8*** @qlcnic_device_gstrings_stats, align 8
  %199 = call i32 @ARRAY_SIZE(i8** %198)
  store i32 %199, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %200

200:                                              ; preds = %218, %197
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %201, %202
  br i1 %203, label %204, label %223

204:                                              ; preds = %200
  %205 = load i32*, i32** %6, align 8
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %208 = mul nsw i32 %206, %207
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %205, i64 %209
  %211 = load i8**, i8*** @qlcnic_device_gstrings_stats, align 8
  %212 = load i32, i32* %9, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8*, i8** %211, i64 %213
  %215 = load i8*, i8** %214, align 8
  %216 = load i32, i32* @ETH_GSTRING_LEN, align 4
  %217 = call i32 @memcpy(i32* %210, i8* %215, i32 %216)
  br label %218

218:                                              ; preds = %204
  %219 = load i32, i32* %8, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %9, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %9, align 4
  br label %200

223:                                              ; preds = %200
  br label %224

224:                                              ; preds = %161, %196, %223, %3, %14
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @sprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
