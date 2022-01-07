; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_main.c_carl9170_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }
%struct.ar9170 = type { i32, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__, i32, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.ath_regulatory }
%struct.ath_regulatory = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BITS_PER_LONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@carl9170_reg_notifier = common dso_local global i32 0, align 4
@modparam_noht = common dso_local global i64 0, align 8
@carl9170_band_2GHz = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@carl9170_band_5GHz = common dso_local global %struct.TYPE_17__ zeroinitializer, align 4
@.str = private unnamed_addr constant [38 x i8] c"Atheros AR9170 is registered as '%s'\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @carl9170_register(%struct.ar9170* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.ath_regulatory*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  %7 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %8 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %7, i32 0, i32 6
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store %struct.ath_regulatory* %9, %struct.ath_regulatory** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %11 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %141

18:                                               ; preds = %1
  %19 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %20 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @BITS_PER_LONG, align 4
  %24 = call i32 @roundup(i32 %22, i32 %23)
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i32 @kcalloc(i32 %24, i32 8, i32 %25)
  %27 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %30 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %18
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %141

36:                                               ; preds = %18
  %37 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %38 = call i32 @carl9170_read_eeprom(%struct.ar9170* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %141

43:                                               ; preds = %36
  %44 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %45 = call i32 @carl9170_parse_eeprom(%struct.ar9170* %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %141

50:                                               ; preds = %43
  %51 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %52 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %53 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %52, i32 0, i32 1
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @carl9170_reg_notifier, align 4
  %58 = call i32 @ath_regd_init(%struct.ath_regulatory* %51, i32 %56, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %141

63:                                               ; preds = %50
  %64 = load i64, i64* @modparam_noht, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @carl9170_band_2GHz, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @carl9170_band_5GHz, i32 0, i32 0, i32 0), align 4
  br label %67

67:                                               ; preds = %66, %63
  store i32 0, i32* %6, align 4
  br label %68

68:                                               ; preds = %91, %67
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %71 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %70, i32 0, i32 4
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp slt i32 %69, %73
  br i1 %74, label %75, label %94

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %78 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %77, i32 0, i32 3
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  store i32 %76, i32* %83, align 8
  %84 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %85 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %84, i32 0, i32 3
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  store i32* null, i32** %90, align 8
  br label %91

91:                                               ; preds = %75
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  br label %68

94:                                               ; preds = %68
  %95 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %96 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %95, i32 0, i32 1
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = call i32 @ieee80211_register_hw(%struct.TYPE_16__* %97)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %141

103:                                              ; preds = %94
  %104 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %105 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %104, i32 0, i32 0
  store i32 1, i32* %105, align 8
  %106 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %107 = call i32 @ath_is_world_regd(%struct.ath_regulatory* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %119, label %109

109:                                              ; preds = %103
  %110 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %111 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %110, i32 0, i32 1
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.ath_regulatory*, %struct.ath_regulatory** %4, align 8
  %116 = getelementptr inbounds %struct.ath_regulatory, %struct.ath_regulatory* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @regulatory_hint(i32 %114, i32 %117)
  br label %119

119:                                              ; preds = %109, %103
  %120 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %121 = call i32 @carl9170_led_init(%struct.ar9170* %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  br label %137

125:                                              ; preds = %119
  %126 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %127 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %126, i32 0, i32 2
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %131 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %130, i32 0, i32 1
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @wiphy_name(i32 %134)
  %136 = call i32 @dev_info(i32* %129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %135)
  store i32 0, i32* %2, align 4
  br label %141

137:                                              ; preds = %124
  %138 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %139 = call i32 @carl9170_unregister(%struct.ar9170* %138)
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %137, %125, %101, %61, %48, %41, %33, %15
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @carl9170_read_eeprom(%struct.ar9170*) #1

declare dso_local i32 @carl9170_parse_eeprom(%struct.ar9170*) #1

declare dso_local i32 @ath_regd_init(%struct.ath_regulatory*, i32, i32) #1

declare dso_local i32 @ieee80211_register_hw(%struct.TYPE_16__*) #1

declare dso_local i32 @ath_is_world_regd(%struct.ath_regulatory*) #1

declare dso_local i32 @regulatory_hint(i32, i32) #1

declare dso_local i32 @carl9170_led_init(%struct.ar9170*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

declare dso_local i32 @carl9170_unregister(%struct.ar9170*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
