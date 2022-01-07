; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_lo_measure_txctl_values.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_lo.c_lo_measure_txctl_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { i32, i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { i32, i32, i32 }

@lo_measure_txctl_values.tx_bias_values = internal constant [9 x i32] [i32 9, i32 8, i32 10, i32 1, i32 0, i32 2, i32 5, i32 4, i32 6], align 16
@lo_measure_txctl_values.tx_magn_values = internal constant [2 x i32] [i32 112, i32 64], align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @lo_measure_txctl_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lo_measure_txctl_values(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca %struct.b43_txpower_lo_control*, align 8
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
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  store %struct.b43_phy* %21, %struct.b43_phy** %3, align 8
  %22 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %23 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %22, i32 0, i32 3
  %24 = load %struct.b43_phy_g*, %struct.b43_phy_g** %23, align 8
  store %struct.b43_phy_g* %24, %struct.b43_phy_g** %4, align 8
  %25 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %26 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %25, i32 0, i32 1
  %27 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %26, align 8
  store %struct.b43_txpower_lo_control* %27, %struct.b43_txpower_lo_control** %5, align 8
  %28 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %29 = call i32 @has_loopback_gain(%struct.b43_phy* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  store i32 6, i32* %10, align 4
  store i32 2, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %94

32:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  %33 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %34 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sdiv i32 %35, 2
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 10
  br i1 %38, label %39, label %46

39:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 10, %40
  %42 = call i32 @abs(i32 %41) #3
  %43 = sdiv i32 %42, 6
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @clamp_val(i32 %44, i32 0, i32 15)
  store i32 %45, i32* %9, align 4
  br label %93

46:                                               ; preds = %32
  store i32 0, i32* %9, align 4
  store i32 36, i32* %12, align 4
  %47 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %48 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 2
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %53 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp eq i32 %54, 8272
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %58 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %59, 8
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  store i32 60, i32* %12, align 4
  br label %62

62:                                               ; preds = %61, %56, %51, %46
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %13, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 10, %64
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = sub nsw i32 10, %69
  store i32 %70, i32* %13, align 4
  br label %71

71:                                               ; preds = %68, %62
  %72 = load i32, i32* %13, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 6
  store i32 %76, i32* %13, align 4
  br label %80

77:                                               ; preds = %71
  %78 = load i32, i32* %13, align 4
  %79 = add nsw i32 %78, 3
  store i32 %79, i32* %13, align 4
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %12, align 4
  %82 = sdiv i32 %81, 4
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %13, align 4
  %84 = sdiv i32 %83, 4
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp sge i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %10, align 4
  br label %92

90:                                               ; preds = %80
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %10, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %93

93:                                               ; preds = %92, %39
  br label %94

94:                                               ; preds = %93, %31
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %96 = load i32, i32* %10, align 4
  %97 = call i32 @b43_radio_maskset(%struct.b43_wldev* %95, i32 67, i32 65520, i32 %96)
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %99 = call i32 @b43_gphy_set_baseband_attenuation(%struct.b43_wldev* %98, i32 2)
  %100 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %101 = call i32 @lo_txctl_register_table(%struct.b43_wldev* %100, i32* %7, i32* null)
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = xor i32 %102, -1
  store i32 %103, i32* %7, align 4
  %104 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @b43_radio_mask(%struct.b43_wldev* %104, i32 %105, i32 %106)
  %108 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %109 = call i64 @has_tx_magnification(%struct.b43_phy* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %179

111:                                              ; preds = %94
  store i32 65535, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %112

112:                                              ; preds = %175, %111
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([2 x i32], [2 x i32]* @lo_measure_txctl_values.tx_magn_values, i64 0, i64 0))
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %178

116:                                              ; preds = %112
  %117 = load i32, i32* %14, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* @lo_measure_txctl_values.tx_magn_values, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %18, align 4
  %121 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %122 = load i32, i32* %18, align 4
  %123 = call i32 @b43_radio_maskset(%struct.b43_wldev* %121, i32 82, i32 65295, i32 %122)
  store i32 0, i32* %15, align 4
  br label %124

124:                                              ; preds = %158, %116
  %125 = load i32, i32* %15, align 4
  %126 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([9 x i32], [9 x i32]* @lo_measure_txctl_values.tx_bias_values, i64 0, i64 0))
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %161

128:                                              ; preds = %124
  %129 = load i32, i32* %15, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [9 x i32], [9 x i32]* @lo_measure_txctl_values.tx_bias_values, i64 0, i64 %130
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %19, align 4
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %134 = load i32, i32* %19, align 4
  %135 = call i32 @b43_radio_maskset(%struct.b43_wldev* %133, i32 82, i32 65520, i32 %134)
  %136 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @lo_measure_feedthrough(%struct.b43_wldev* %136, i32 0, i32 %137, i32 %138)
  store i32 %139, i32* %16, align 4
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %151

143:                                              ; preds = %128
  %144 = load i32, i32* %19, align 4
  %145 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %146 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %145, i32 0, i32 0
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* %18, align 4
  %148 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %149 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* %16, align 4
  store i32 %150, i32* %17, align 4
  br label %151

151:                                              ; preds = %143, %128
  %152 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %153 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  br label %161

157:                                              ; preds = %151
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %15, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %15, align 4
  br label %124

161:                                              ; preds = %156, %124
  %162 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %163 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %164 = call i32 @b43_radio_read16(%struct.b43_wldev* %163, i32 82)
  %165 = and i32 %164, 65280
  %166 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %167 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %165, %168
  %170 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %171 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = or i32 %169, %172
  %174 = call i32 @b43_radio_write16(%struct.b43_wldev* %162, i32 82, i32 %173)
  br label %175

175:                                              ; preds = %161
  %176 = load i32, i32* %14, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %14, align 4
  br label %112

178:                                              ; preds = %112
  br label %186

179:                                              ; preds = %94
  %180 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %181 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %180, i32 0, i32 1
  store i32 0, i32* %181, align 4
  %182 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %183 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %182, i32 0, i32 0
  store i32 0, i32* %183, align 4
  %184 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %185 = call i32 @b43_radio_mask(%struct.b43_wldev* %184, i32 82, i32 65520)
  br label %186

186:                                              ; preds = %179, %178
  %187 = load i32, i32* @jiffies, align 4
  %188 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %5, align 8
  %189 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %188, i32 0, i32 2
  store i32 %187, i32* %189, align 4
  ret void
}

declare dso_local i32 @has_loopback_gain(%struct.b43_phy*) #1

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #2

declare dso_local i32 @clamp_val(i32, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_gphy_set_baseband_attenuation(%struct.b43_wldev*, i32) #1

declare dso_local i32 @lo_txctl_register_table(%struct.b43_wldev*, i32*, i32*) #1

declare dso_local i32 @b43_radio_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i64 @has_tx_magnification(%struct.b43_phy*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @lo_measure_feedthrough(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_read16(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
