; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_intc_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_rf_ctl_intc_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@B43_NPHY_RFCTL_INTC1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_INTC2 = common dso_local global i32 0, align 4
@B43_RFSEQ_RESET2RX = common dso_local global i32 0, align 4
@B43_NPHY_TXF_40CO_B1S1 = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"intc override timeout\0A\00", align 1
@B43_NPHY_RFCTL_OVER = common dso_local global i32 0, align 4
@B43_NPHY_RFCTL_CMD_RXTX = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32, i32)* @b43_nphy_rf_ctl_intc_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_rf_ctl_intc_override(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sge i32 %17, 7
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @b43_nphy_rf_ctl_intc_override_rev7(%struct.b43_wldev* %20, i32 %21, i32 %22, i32 %23)
  br label %218

25:                                               ; preds = %4
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 3
  %31 = zext i1 %30 to i32
  %32 = call i32 @B43_WARN_ON(i32 %31)
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %215, %25
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %218

36:                                               ; preds = %33
  %37 = load i32, i32* %8, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %9, align 4
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %48, label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45, %39
  br label %215

49:                                               ; preds = %45, %42
  %50 = load i32, i32* %9, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  store i32 %57, i32* %11, align 4
  %58 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %59 = load i32, i32* %11, align 4
  %60 = call i32 @b43_phy_set(%struct.b43_wldev* %58, i32 %59, i32 1024)
  %61 = load i32, i32* %6, align 4
  switch i32 %61, label %214 [
    i32 130, label %62
    i32 128, label %69
    i32 129, label %155
    i32 131, label %175
    i32 132, label %194
  ]

62:                                               ; preds = %56
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @b43_phy_write(%struct.b43_wldev* %63, i32 %64, i32 0)
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %67 = load i32, i32* @B43_RFSEQ_RESET2RX, align 4
  %68 = call i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev* %66, i32 %67)
  br label %214

69:                                               ; preds = %56
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %113, label %72

72:                                               ; preds = %69
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %74 = load i32, i32* @B43_NPHY_RFCTL_INTC1, align 4
  %75 = load i32, i32* %7, align 4
  %76 = shl i32 %75, 6
  %77 = call i32 @b43_phy_maskset(%struct.b43_wldev* %73, i32 %74, i32 64575, i32 %76)
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %79 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %80 = call i32 @b43_phy_maskset(%struct.b43_wldev* %78, i32 %79, i32 65534, i32 1)
  %81 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %82 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %83 = load i32, i32* @B43_NPHY_RFCTL_CMD_START, align 4
  %84 = call i32 @b43_phy_set(%struct.b43_wldev* %81, i32 %82, i32 %83)
  store i32 0, i32* %10, align 4
  br label %85

85:                                               ; preds = %98, %72
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 100
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %90 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %91 = call i32 @b43_phy_read(%struct.b43_wldev* %89, i32 %90)
  %92 = load i32, i32* @B43_NPHY_RFCTL_CMD_START, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %88
  store i32 0, i32* %10, align 4
  br label %101

96:                                               ; preds = %88
  %97 = call i32 @udelay(i32 10)
  br label %98

98:                                               ; preds = %96
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %85

101:                                              ; preds = %95, %85
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %101
  %105 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %106 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @b43err(i32 %107, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %109

109:                                              ; preds = %104, %101
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %111 = load i32, i32* @B43_NPHY_TXF_40CO_B1S1, align 4
  %112 = call i32 @b43_phy_mask(%struct.b43_wldev* %110, i32 %111, i32 65534)
  br label %154

113:                                              ; preds = %69
  %114 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %115 = load i32, i32* @B43_NPHY_RFCTL_INTC2, align 4
  %116 = load i32, i32* %7, align 4
  %117 = shl i32 %116, 6
  %118 = call i32 @b43_phy_maskset(%struct.b43_wldev* %114, i32 %115, i32 64575, i32 %117)
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %120 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %121 = call i32 @b43_phy_maskset(%struct.b43_wldev* %119, i32 %120, i32 65534, i32 1)
  %122 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %123 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %124 = load i32, i32* @B43_NPHY_RFCTL_CMD_RXTX, align 4
  %125 = call i32 @b43_phy_set(%struct.b43_wldev* %122, i32 %123, i32 %124)
  store i32 0, i32* %10, align 4
  br label %126

126:                                              ; preds = %139, %113
  %127 = load i32, i32* %10, align 4
  %128 = icmp slt i32 %127, 100
  br i1 %128, label %129, label %142

129:                                              ; preds = %126
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %131 = load i32, i32* @B43_NPHY_RFCTL_CMD, align 4
  %132 = call i32 @b43_phy_read(%struct.b43_wldev* %130, i32 %131)
  %133 = load i32, i32* @B43_NPHY_RFCTL_CMD_RXTX, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %129
  store i32 0, i32* %10, align 4
  br label %142

137:                                              ; preds = %129
  %138 = call i32 @udelay(i32 10)
  br label %139

139:                                              ; preds = %137
  %140 = load i32, i32* %10, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %10, align 4
  br label %126

142:                                              ; preds = %136, %126
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %147 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @b43err(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %150

150:                                              ; preds = %145, %142
  %151 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %152 = load i32, i32* @B43_NPHY_RFCTL_OVER, align 4
  %153 = call i32 @b43_phy_mask(%struct.b43_wldev* %151, i32 %152, i32 65534)
  br label %154

154:                                              ; preds = %150, %109
  br label %214

155:                                              ; preds = %56
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %157 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @b43_current_band(i32 %158)
  %160 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %161 = icmp eq i32 %159, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %155
  store i32 32, i32* %12, align 4
  %163 = load i32, i32* %7, align 4
  %164 = shl i32 %163, 5
  store i32 %164, i32* %13, align 4
  br label %168

165:                                              ; preds = %155
  store i32 16, i32* %12, align 4
  %166 = load i32, i32* %7, align 4
  %167 = shl i32 %166, 4
  store i32 %167, i32* %13, align 4
  br label %168

168:                                              ; preds = %165, %162
  %169 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %170 = load i32, i32* %11, align 4
  %171 = load i32, i32* %12, align 4
  %172 = xor i32 %171, -1
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @b43_phy_maskset(%struct.b43_wldev* %169, i32 %170, i32 %172, i32 %173)
  br label %214

175:                                              ; preds = %56
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %177 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @b43_current_band(i32 %178)
  %180 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %175
  store i32 1, i32* %12, align 4
  %183 = load i32, i32* %7, align 4
  store i32 %183, i32* %13, align 4
  br label %187

184:                                              ; preds = %175
  store i32 4, i32* %12, align 4
  %185 = load i32, i32* %7, align 4
  %186 = shl i32 %185, 2
  store i32 %186, i32* %13, align 4
  br label %187

187:                                              ; preds = %184, %182
  %188 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %189 = load i32, i32* %11, align 4
  %190 = load i32, i32* %12, align 4
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @b43_phy_maskset(%struct.b43_wldev* %188, i32 %189, i32 %191, i32 %192)
  br label %214

194:                                              ; preds = %56
  %195 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %196 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @b43_current_band(i32 %197)
  %199 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %200 = icmp eq i32 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %194
  store i32 2, i32* %12, align 4
  %202 = load i32, i32* %7, align 4
  %203 = shl i32 %202, 1
  store i32 %203, i32* %13, align 4
  br label %207

204:                                              ; preds = %194
  store i32 8, i32* %12, align 4
  %205 = load i32, i32* %7, align 4
  %206 = shl i32 %205, 3
  store i32 %206, i32* %13, align 4
  br label %207

207:                                              ; preds = %204, %201
  %208 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @b43_phy_maskset(%struct.b43_wldev* %208, i32 %209, i32 %211, i32 %212)
  br label %214

214:                                              ; preds = %56, %207, %187, %168, %154, %62
  br label %215

215:                                              ; preds = %214, %48
  %216 = load i32, i32* %9, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %9, align 4
  br label %33

218:                                              ; preds = %19, %33
  ret void
}

declare dso_local i32 @b43_nphy_rf_ctl_intc_override_rev7(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_set(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_nphy_force_rf_sequence(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_current_band(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
