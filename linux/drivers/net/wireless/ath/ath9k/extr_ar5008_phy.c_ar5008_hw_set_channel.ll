; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_set_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.ath9k_channel* }
%struct.ath9k_channel = type { i32 }
%struct.ath_common = type { i32 }
%struct.chan_centers = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid channel %u MHz\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL = common dso_local global i32 0, align 4
@AR_PHY_CCK_TX_CTRL_JAPAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_hw*, %struct.ath9k_channel*)* @ar5008_hw_set_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ar5008_hw_set_channel(%struct.ath_hw* %0, %struct.ath9k_channel* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath_hw*, align 8
  %5 = alloca %struct.ath9k_channel*, align 8
  %6 = alloca %struct.ath_common*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.chan_centers, align 4
  %13 = alloca i32, align 4
  store %struct.ath_hw* %0, %struct.ath_hw** %4, align 8
  store %struct.ath9k_channel* %1, %struct.ath9k_channel** %5, align 8
  %14 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %15 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %14)
  store %struct.ath_common* %15, %struct.ath_common** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %17 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %18 = call i32 @ath9k_hw_get_channel_centers(%struct.ath_hw* %16, %struct.ath9k_channel* %17, %struct.chan_centers* %12)
  %19 = getelementptr inbounds %struct.chan_centers, %struct.chan_centers* %12, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 4800
  br i1 %22, label %23, label %79

23:                                               ; preds = %2
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %24, 2192
  %26 = srem i32 %25, 5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = load i32, i32* %11, align 4
  %30 = sub nsw i32 %29, 672
  %31 = mul nsw i32 %30, 2
  %32 = sub nsw i32 %31, 3040
  %33 = sdiv i32 %32, 10
  store i32 %33, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %52

34:                                               ; preds = %23
  %35 = load i32, i32* %11, align 4
  %36 = sub nsw i32 %35, 2224
  %37 = srem i32 %36, 5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %34
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 704
  %42 = mul nsw i32 %41, 2
  %43 = sub nsw i32 %42, 3040
  %44 = sdiv i32 %43, 10
  store i32 %44, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @ath_err(%struct.ath_common* %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %155

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %28
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 2
  %55 = and i32 %54, 255
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ath9k_hw_reverse_bits(i32 %56, i32 8)
  store i32 %57, i32* %7, align 4
  %58 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %59 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %60 = call i32 @REG_READ(%struct.ath_hw* %58, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 2484
  br i1 %62, label %63, label %70

63:                                               ; preds = %52
  %64 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %65 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %66 = load i32, i32* %13, align 4
  %67 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @REG_WRITE(%struct.ath_hw* %64, i32 %65, i32 %68)
  br label %78

70:                                               ; preds = %52
  %71 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %72 = load i32, i32* @AR_PHY_CCK_TX_CTRL, align 4
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @AR_PHY_CCK_TX_CTRL_JAPAN, align 4
  %75 = xor i32 %74, -1
  %76 = and i32 %73, %75
  %77 = call i32 @REG_WRITE(%struct.ath_hw* %71, i32 %72, i32 %76)
  br label %78

78:                                               ; preds = %70, %63
  br label %134

79:                                               ; preds = %2
  %80 = load i32, i32* %11, align 4
  %81 = srem i32 %80, 20
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %79
  %84 = load i32, i32* %11, align 4
  %85 = icmp sge i32 %84, 5120
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  %88 = sub nsw i32 %87, 4800
  %89 = sdiv i32 %88, 20
  %90 = shl i32 %89, 2
  %91 = call i32 @ath9k_hw_reverse_bits(i32 %90, i32 8)
  store i32 %91, i32* %7, align 4
  %92 = call i32 @ath9k_hw_reverse_bits(i32 1, i32 2)
  store i32 %92, i32* %9, align 4
  br label %133

93:                                               ; preds = %83, %79
  %94 = load i32, i32* %11, align 4
  %95 = srem i32 %94, 10
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %93
  %98 = load i32, i32* %11, align 4
  %99 = sub nsw i32 %98, 4800
  %100 = sdiv i32 %99, 10
  %101 = shl i32 %100, 1
  %102 = call i32 @ath9k_hw_reverse_bits(i32 %101, i32 8)
  store i32 %102, i32* %7, align 4
  %103 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %104 = call i64 @AR_SREV_9100(%struct.ath_hw* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %110, label %106

106:                                              ; preds = %97
  %107 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %108 = call i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106, %97
  %111 = call i32 @ath9k_hw_reverse_bits(i32 2, i32 2)
  store i32 %111, i32* %9, align 4
  br label %114

112:                                              ; preds = %106
  %113 = call i32 @ath9k_hw_reverse_bits(i32 1, i32 2)
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %112, %110
  br label %132

115:                                              ; preds = %93
  %116 = load i32, i32* %11, align 4
  %117 = srem i32 %116, 5
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %115
  %120 = load i32, i32* %11, align 4
  %121 = sub nsw i32 %120, 4800
  %122 = sdiv i32 %121, 5
  %123 = call i32 @ath9k_hw_reverse_bits(i32 %122, i32 8)
  store i32 %123, i32* %7, align 4
  %124 = call i32 @ath9k_hw_reverse_bits(i32 1, i32 2)
  store i32 %124, i32* %9, align 4
  br label %131

125:                                              ; preds = %115
  %126 = load %struct.ath_common*, %struct.ath_common** %6, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @ath_err(%struct.ath_common* %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %127)
  %129 = load i32, i32* @EINVAL, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %155

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131, %114
  br label %133

133:                                              ; preds = %132, %86
  br label %134

134:                                              ; preds = %133, %78
  %135 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %136 = load i32, i32* %11, align 4
  %137 = call i32 @ar5008_hw_force_bias(%struct.ath_hw* %135, i32 %136)
  %138 = load i32, i32* %7, align 4
  %139 = shl i32 %138, 8
  %140 = load i32, i32* %9, align 4
  %141 = shl i32 %140, 2
  %142 = or i32 %139, %141
  %143 = load i32, i32* %8, align 4
  %144 = shl i32 %143, 1
  %145 = or i32 %142, %144
  %146 = or i32 %145, 32
  %147 = or i32 %146, 1
  store i32 %147, i32* %10, align 4
  %148 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %149 = call i32 @AR_PHY(i32 55)
  %150 = load i32, i32* %10, align 4
  %151 = call i32 @REG_WRITE(%struct.ath_hw* %148, i32 %149, i32 %150)
  %152 = load %struct.ath9k_channel*, %struct.ath9k_channel** %5, align 8
  %153 = load %struct.ath_hw*, %struct.ath_hw** %4, align 8
  %154 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %153, i32 0, i32 0
  store %struct.ath9k_channel* %152, %struct.ath9k_channel** %154, align 8
  store i32 0, i32* %3, align 4
  br label %155

155:                                              ; preds = %134, %125, %45
  %156 = load i32, i32* %3, align 4
  ret i32 %156
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i32 @ath9k_hw_get_channel_centers(%struct.ath_hw*, %struct.ath9k_channel*, %struct.chan_centers*) #1

declare dso_local i32 @ath_err(%struct.ath_common*, i8*, i32) #1

declare dso_local i32 @ath9k_hw_reverse_bits(i32, i32) #1

declare dso_local i32 @REG_READ(%struct.ath_hw*, i32) #1

declare dso_local i32 @REG_WRITE(%struct.ath_hw*, i32, i32) #1

declare dso_local i64 @AR_SREV_9100(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9160_10_OR_LATER(%struct.ath_hw*) #1

declare dso_local i32 @ar5008_hw_force_bias(%struct.ath_hw*, i32) #1

declare dso_local i32 @AR_PHY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
