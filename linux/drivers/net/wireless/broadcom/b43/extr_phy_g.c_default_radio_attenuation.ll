; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_default_radio_attenuation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_default_radio_attenuation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_bus_dev*, %struct.b43_phy }
%struct.b43_bus_dev = type { i64, i64, i32, i32 }
%struct.b43_phy = type { i32, i32, i32 }
%struct.b43_rfatt = type { i32, i32 }

@SSB_BOARDVENDOR_BCM = common dso_local global i64 0, align 8
@SSB_BOARD_BCM4309G = common dso_local global i64 0, align 8
@B43_PHYTYPE_G = common dso_local global i32 0, align 4
@SSB_BOARD_BU4306 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_rfatt*)* @default_radio_attenuation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_radio_attenuation(%struct.b43_wldev* %0, %struct.b43_rfatt* %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_rfatt*, align 8
  %5 = alloca %struct.b43_bus_dev*, align 8
  %6 = alloca %struct.b43_phy*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store %struct.b43_rfatt* %1, %struct.b43_rfatt** %4, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %8, align 8
  store %struct.b43_bus_dev* %9, %struct.b43_bus_dev** %5, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 1
  store %struct.b43_phy* %11, %struct.b43_phy** %6, align 8
  %12 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %13 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %15 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %14, i32 0, i32 0
  %16 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %15, align 8
  %17 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %2
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %23, align 8
  %25 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SSB_BOARD_BCM4309G, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %21
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 0
  %32 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %31, align 8
  %33 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 67
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %38 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %37, i32 0, i32 1
  store i32 2, i32* %38, align 4
  br label %221

39:                                               ; preds = %29
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %40, i32 0, i32 0
  %42 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %41, align 8
  %43 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %44, 81
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %48 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %47, i32 0, i32 1
  store i32 3, i32* %48, align 4
  br label %221

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50, %21, %2
  %52 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %53 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %218 [
    i32 8275, label %55
    i32 8272, label %63
  ]

55:                                               ; preds = %51
  %56 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %57 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  switch i32 %58, label %62 [
    i32 1, label %59
  ]

59:                                               ; preds = %55
  %60 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %61 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %60, i32 0, i32 1
  store i32 6, i32* %61, align 4
  br label %221

62:                                               ; preds = %55
  br label %218

63:                                               ; preds = %51
  %64 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %65 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  switch i32 %66, label %215 [
    i32 0, label %67
    i32 1, label %70
    i32 2, label %141
    i32 3, label %200
    i32 4, label %203
    i32 5, label %203
    i32 6, label %206
    i32 7, label %206
    i32 8, label %209
    i32 9, label %214
  ]

67:                                               ; preds = %63
  %68 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %69 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %68, i32 0, i32 1
  store i32 5, i32* %69, align 4
  br label %221

70:                                               ; preds = %63
  %71 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %72 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @B43_PHYTYPE_G, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %116

76:                                               ; preds = %70
  %77 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %78 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %84 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @SSB_BOARD_BCM4309G, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %90 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %91, 30
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %95 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %94, i32 0, i32 1
  store i32 3, i32* %95, align 4
  br label %115

96:                                               ; preds = %88, %82, %76
  %97 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %98 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %104 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %110 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %109, i32 0, i32 1
  store i32 3, i32* %110, align 4
  br label %114

111:                                              ; preds = %102, %96
  %112 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %113 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %112, i32 0, i32 1
  store i32 1, i32* %113, align 4
  br label %114

114:                                              ; preds = %111, %108
  br label %115

115:                                              ; preds = %114, %93
  br label %140

116:                                              ; preds = %70
  %117 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %118 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %136

122:                                              ; preds = %116
  %123 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %124 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SSB_BOARD_BCM4309G, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %122
  %129 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %130 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = icmp sge i32 %131, 30
  br i1 %132, label %133, label %136

133:                                              ; preds = %128
  %134 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %135 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %134, i32 0, i32 1
  store i32 7, i32* %135, align 4
  br label %139

136:                                              ; preds = %128, %122, %116
  %137 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %138 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %137, i32 0, i32 1
  store i32 6, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133
  br label %140

140:                                              ; preds = %139, %115
  br label %221

141:                                              ; preds = %63
  %142 = load %struct.b43_phy*, %struct.b43_phy** %6, align 8
  %143 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @B43_PHYTYPE_G, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %196

147:                                              ; preds = %141
  %148 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %149 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %167

153:                                              ; preds = %147
  %154 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %155 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @SSB_BOARD_BCM4309G, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %161 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp sge i32 %162, 30
  br i1 %163, label %164, label %167

164:                                              ; preds = %159
  %165 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %166 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %165, i32 0, i32 1
  store i32 3, i32* %166, align 4
  br label %195

167:                                              ; preds = %159, %153, %147
  %168 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %169 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @SSB_BOARDVENDOR_BCM, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %175 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @SSB_BOARD_BU4306, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %181 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %180, i32 0, i32 1
  store i32 5, i32* %181, align 4
  br label %194

182:                                              ; preds = %173, %167
  %183 = load %struct.b43_bus_dev*, %struct.b43_bus_dev** %5, align 8
  %184 = getelementptr inbounds %struct.b43_bus_dev, %struct.b43_bus_dev* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %185, 17184
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %189 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %188, i32 0, i32 1
  store i32 4, i32* %189, align 4
  br label %193

190:                                              ; preds = %182
  %191 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %192 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %191, i32 0, i32 1
  store i32 3, i32* %192, align 4
  br label %193

193:                                              ; preds = %190, %187
  br label %194

194:                                              ; preds = %193, %179
  br label %195

195:                                              ; preds = %194, %164
  br label %199

196:                                              ; preds = %141
  %197 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %198 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %197, i32 0, i32 1
  store i32 6, i32* %198, align 4
  br label %199

199:                                              ; preds = %196, %195
  br label %221

200:                                              ; preds = %63
  %201 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %202 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %201, i32 0, i32 1
  store i32 5, i32* %202, align 4
  br label %221

203:                                              ; preds = %63, %63
  %204 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %205 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %204, i32 0, i32 1
  store i32 1, i32* %205, align 4
  br label %221

206:                                              ; preds = %63, %63
  %207 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %208 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %207, i32 0, i32 1
  store i32 5, i32* %208, align 4
  br label %221

209:                                              ; preds = %63
  %210 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %211 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %210, i32 0, i32 1
  store i32 10, i32* %211, align 4
  %212 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %213 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %212, i32 0, i32 0
  store i32 1, i32* %213, align 4
  br label %221

214:                                              ; preds = %63
  br label %215

215:                                              ; preds = %63, %214
  %216 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %217 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %216, i32 0, i32 1
  store i32 5, i32* %217, align 4
  br label %221

218:                                              ; preds = %51, %62
  %219 = load %struct.b43_rfatt*, %struct.b43_rfatt** %4, align 8
  %220 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %219, i32 0, i32 1
  store i32 5, i32* %220, align 4
  br label %221

221:                                              ; preds = %218, %215, %209, %206, %203, %200, %199, %140, %67, %59, %46, %36
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
