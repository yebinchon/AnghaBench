; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_setup_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_setup_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32 }

@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@B44_MII_ALEDCTRL = common dso_local global i32 0, align 4
@MII_ALEDCTRL_ALLMSK = common dso_local global i32 0, align 4
@B44_MII_TLEDCTRL = common dso_local global i32 0, align 4
@MII_TLEDCTRL_ENABLE = common dso_local global i32 0, align 4
@B44_FLAG_FORCE_LINK = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@B44_FLAG_PAUSE_AUTO = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@B44_FLAG_100_BASE_T = common dso_local global i32 0, align 4
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b44*)* @b44_setup_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_setup_phy(%struct.b44* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b44*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %3, align 8
  %8 = load %struct.b44*, %struct.b44** %3, align 8
  %9 = call i32 @b44_wap54g10_workaround(%struct.b44* %8)
  %10 = load %struct.b44*, %struct.b44** %3, align 8
  %11 = getelementptr inbounds %struct.b44, %struct.b44* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %178

17:                                               ; preds = %1
  %18 = load %struct.b44*, %struct.b44** %3, align 8
  %19 = load i32, i32* @B44_MII_ALEDCTRL, align 4
  %20 = call i32 @b44_readphy(%struct.b44* %18, i32 %19, i32* %4)
  store i32 %20, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %176

23:                                               ; preds = %17
  %24 = load %struct.b44*, %struct.b44** %3, align 8
  %25 = load i32, i32* @B44_MII_ALEDCTRL, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @MII_ALEDCTRL_ALLMSK, align 4
  %28 = and i32 %26, %27
  %29 = call i32 @b44_writephy(%struct.b44* %24, i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %176

32:                                               ; preds = %23
  %33 = load %struct.b44*, %struct.b44** %3, align 8
  %34 = load i32, i32* @B44_MII_TLEDCTRL, align 4
  %35 = call i32 @b44_readphy(%struct.b44* %33, i32 %34, i32* %4)
  store i32 %35, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %176

38:                                               ; preds = %32
  %39 = load %struct.b44*, %struct.b44** %3, align 8
  %40 = load i32, i32* @B44_MII_TLEDCTRL, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MII_TLEDCTRL_ENABLE, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @b44_writephy(%struct.b44* %39, i32 %40, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  br label %176

47:                                               ; preds = %38
  %48 = load %struct.b44*, %struct.b44** %3, align 8
  %49 = getelementptr inbounds %struct.b44, %struct.b44* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %129, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* @ADVERTISE_CSMA, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.b44*, %struct.b44** %3, align 8
  %57 = getelementptr inbounds %struct.b44, %struct.b44* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %54
  %63 = load i32, i32* @ADVERTISE_10HALF, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %62, %54
  %67 = load %struct.b44*, %struct.b44** %3, align 8
  %68 = getelementptr inbounds %struct.b44, %struct.b44* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* @ADVERTISE_10FULL, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %73, %66
  %78 = load %struct.b44*, %struct.b44** %3, align 8
  %79 = getelementptr inbounds %struct.b44, %struct.b44* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* @ADVERTISE_100HALF, align 4
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %84, %77
  %89 = load %struct.b44*, %struct.b44** %3, align 8
  %90 = getelementptr inbounds %struct.b44, %struct.b44* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @ADVERTISE_100FULL, align 4
  %97 = load i32, i32* %6, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %95, %88
  %100 = load %struct.b44*, %struct.b44** %3, align 8
  %101 = getelementptr inbounds %struct.b44, %struct.b44* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @B44_FLAG_PAUSE_AUTO, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %108 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* %6, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %6, align 4
  br label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.b44*, %struct.b44** %3, align 8
  %114 = load i32, i32* @MII_ADVERTISE, align 4
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @b44_writephy(%struct.b44* %113, i32 %114, i32 %115)
  store i32 %116, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %176

119:                                              ; preds = %112
  %120 = load %struct.b44*, %struct.b44** %3, align 8
  %121 = load i32, i32* @MII_BMCR, align 4
  %122 = load i32, i32* @BMCR_ANENABLE, align 4
  %123 = load i32, i32* @BMCR_ANRESTART, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @b44_writephy(%struct.b44* %120, i32 %121, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %119
  br label %176

128:                                              ; preds = %119
  br label %175

129:                                              ; preds = %47
  %130 = load %struct.b44*, %struct.b44** %3, align 8
  %131 = load i32, i32* @MII_BMCR, align 4
  %132 = call i32 @b44_readphy(%struct.b44* %130, i32 %131, i32* %7)
  store i32 %132, i32* %5, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %129
  br label %176

135:                                              ; preds = %129
  %136 = load i32, i32* @BMCR_FULLDPLX, align 4
  %137 = load i32, i32* @BMCR_ANENABLE, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @BMCR_SPEED100, align 4
  %140 = or i32 %138, %139
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %7, align 4
  %144 = load %struct.b44*, %struct.b44** %3, align 8
  %145 = getelementptr inbounds %struct.b44, %struct.b44* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %135
  %151 = load i32, i32* @BMCR_SPEED100, align 4
  %152 = load i32, i32* %7, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %7, align 4
  br label %154

154:                                              ; preds = %150, %135
  %155 = load %struct.b44*, %struct.b44** %3, align 8
  %156 = getelementptr inbounds %struct.b44, %struct.b44* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %165

161:                                              ; preds = %154
  %162 = load i32, i32* @BMCR_FULLDPLX, align 4
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %7, align 4
  br label %165

165:                                              ; preds = %161, %154
  %166 = load %struct.b44*, %struct.b44** %3, align 8
  %167 = load i32, i32* @MII_BMCR, align 4
  %168 = load i32, i32* %7, align 4
  %169 = call i32 @b44_writephy(%struct.b44* %166, i32 %167, i32 %168)
  store i32 %169, i32* %5, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %176

172:                                              ; preds = %165
  %173 = load %struct.b44*, %struct.b44** %3, align 8
  %174 = call i32 @b44_set_flow_ctrl(%struct.b44* %173, i32 0, i32 0)
  br label %175

175:                                              ; preds = %172, %128
  br label %176

176:                                              ; preds = %175, %171, %134, %127, %118, %46, %37, %31, %22
  %177 = load i32, i32* %5, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %176, %16
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @b44_wap54g10_workaround(%struct.b44*) #1

declare dso_local i32 @b44_readphy(%struct.b44*, i32, i32*) #1

declare dso_local i32 @b44_writephy(%struct.b44*, i32, i32) #1

declare dso_local i32 @b44_set_flow_ctrl(%struct.b44*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
