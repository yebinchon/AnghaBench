; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_check_phy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_check_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b44 = type { i32, i32 }

@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@B44_FLAG_100_BASE_T = common dso_local global i32 0, align 4
@B44_TX_CTRL = common dso_local global i32 0, align 4
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@TX_CTRL_DUPLEX = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@B44_MII_AUXCTRL = common dso_local global i32 0, align 4
@MII_AUXCTRL_SPEED = common dso_local global i32 0, align 4
@MII_AUXCTRL_DUPLEX = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@B44_FLAG_FORCE_LINK = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@BMSR_RFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Remote fault detected in PHY\0A\00", align 1
@BMSR_JCD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Jabber detected in PHY\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b44*)* @b44_check_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_check_phy(%struct.b44* %0) #0 {
  %2 = alloca %struct.b44*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.b44* %0, %struct.b44** %2, align 8
  %9 = load %struct.b44*, %struct.b44** %2, align 8
  %10 = getelementptr inbounds %struct.b44, %struct.b44* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %1
  %16 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %17 = load %struct.b44*, %struct.b44** %2, align 8
  %18 = getelementptr inbounds %struct.b44, %struct.b44* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.b44*, %struct.b44** %2, align 8
  %22 = getelementptr inbounds %struct.b44, %struct.b44* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @netif_carrier_ok(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %56, label %26

26:                                               ; preds = %15
  %27 = load %struct.b44*, %struct.b44** %2, align 8
  %28 = load i32, i32* @B44_TX_CTRL, align 4
  %29 = call i32 @br32(%struct.b44* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.b44*, %struct.b44** %2, align 8
  %31 = getelementptr inbounds %struct.b44, %struct.b44* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %26
  %37 = load i32, i32* @TX_CTRL_DUPLEX, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %45

40:                                               ; preds = %26
  %41 = load i32, i32* @TX_CTRL_DUPLEX, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load %struct.b44*, %struct.b44** %2, align 8
  %47 = load i32, i32* @B44_TX_CTRL, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @bw32(%struct.b44* %46, i32 %47, i32 %48)
  %50 = load %struct.b44*, %struct.b44** %2, align 8
  %51 = getelementptr inbounds %struct.b44, %struct.b44* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @netif_carrier_on(i32 %52)
  %54 = load %struct.b44*, %struct.b44** %2, align 8
  %55 = call i32 @b44_link_report(%struct.b44* %54)
  br label %56

56:                                               ; preds = %45, %15
  br label %209

57:                                               ; preds = %1
  %58 = load %struct.b44*, %struct.b44** %2, align 8
  %59 = load i32, i32* @MII_BMSR, align 4
  %60 = call i32 @b44_readphy(%struct.b44* %58, i32 %59, i32* %3)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %209, label %62

62:                                               ; preds = %57
  %63 = load %struct.b44*, %struct.b44** %2, align 8
  %64 = load i32, i32* @B44_MII_AUXCTRL, align 4
  %65 = call i32 @b44_readphy(%struct.b44* %63, i32 %64, i32* %4)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %209, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %3, align 4
  %69 = icmp ne i32 %68, 65535
  br i1 %69, label %70, label %209

70:                                               ; preds = %67
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @MII_AUXCTRL_SPEED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %77 = load %struct.b44*, %struct.b44** %2, align 8
  %78 = getelementptr inbounds %struct.b44, %struct.b44* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  br label %88

81:                                               ; preds = %70
  %82 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %83 = xor i32 %82, -1
  %84 = load %struct.b44*, %struct.b44** %2, align 8
  %85 = getelementptr inbounds %struct.b44, %struct.b44* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %81, %75
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @MII_AUXCTRL_DUPLEX, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %88
  %94 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %95 = load %struct.b44*, %struct.b44** %2, align 8
  %96 = getelementptr inbounds %struct.b44, %struct.b44* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %106

99:                                               ; preds = %88
  %100 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.b44*, %struct.b44** %2, align 8
  %103 = getelementptr inbounds %struct.b44, %struct.b44* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %99, %93
  %107 = load %struct.b44*, %struct.b44** %2, align 8
  %108 = getelementptr inbounds %struct.b44, %struct.b44* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @netif_carrier_ok(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %169, label %112

112:                                              ; preds = %106
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @BMSR_LSTATUS, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %169

117:                                              ; preds = %112
  %118 = load %struct.b44*, %struct.b44** %2, align 8
  %119 = load i32, i32* @B44_TX_CTRL, align 4
  %120 = call i32 @br32(%struct.b44* %118, i32 %119)
  store i32 %120, i32* %6, align 4
  %121 = load %struct.b44*, %struct.b44** %2, align 8
  %122 = getelementptr inbounds %struct.b44, %struct.b44* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %117
  %128 = load i32, i32* @TX_CTRL_DUPLEX, align 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  br label %136

131:                                              ; preds = %117
  %132 = load i32, i32* @TX_CTRL_DUPLEX, align 4
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %6, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %131, %127
  %137 = load %struct.b44*, %struct.b44** %2, align 8
  %138 = load i32, i32* @B44_TX_CTRL, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i32 @bw32(%struct.b44* %137, i32 %138, i32 %139)
  %141 = load %struct.b44*, %struct.b44** %2, align 8
  %142 = getelementptr inbounds %struct.b44, %struct.b44* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %162, label %147

147:                                              ; preds = %136
  %148 = load %struct.b44*, %struct.b44** %2, align 8
  %149 = load i32, i32* @MII_ADVERTISE, align 4
  %150 = call i32 @b44_readphy(%struct.b44* %148, i32 %149, i32* %7)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %162, label %152

152:                                              ; preds = %147
  %153 = load %struct.b44*, %struct.b44** %2, align 8
  %154 = load i32, i32* @MII_LPA, align 4
  %155 = call i32 @b44_readphy(%struct.b44* %153, i32 %154, i32* %8)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %162, label %157

157:                                              ; preds = %152
  %158 = load %struct.b44*, %struct.b44** %2, align 8
  %159 = load i32, i32* %7, align 4
  %160 = load i32, i32* %8, align 4
  %161 = call i32 @b44_set_flow_ctrl(%struct.b44* %158, i32 %159, i32 %160)
  br label %162

162:                                              ; preds = %157, %152, %147, %136
  %163 = load %struct.b44*, %struct.b44** %2, align 8
  %164 = getelementptr inbounds %struct.b44, %struct.b44* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @netif_carrier_on(i32 %165)
  %167 = load %struct.b44*, %struct.b44** %2, align 8
  %168 = call i32 @b44_link_report(%struct.b44* %167)
  br label %188

169:                                              ; preds = %112, %106
  %170 = load %struct.b44*, %struct.b44** %2, align 8
  %171 = getelementptr inbounds %struct.b44, %struct.b44* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @netif_carrier_ok(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %187

175:                                              ; preds = %169
  %176 = load i32, i32* %3, align 4
  %177 = load i32, i32* @BMSR_LSTATUS, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %187, label %180

180:                                              ; preds = %175
  %181 = load %struct.b44*, %struct.b44** %2, align 8
  %182 = getelementptr inbounds %struct.b44, %struct.b44* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @netif_carrier_off(i32 %183)
  %185 = load %struct.b44*, %struct.b44** %2, align 8
  %186 = call i32 @b44_link_report(%struct.b44* %185)
  br label %187

187:                                              ; preds = %180, %175, %169
  br label %188

188:                                              ; preds = %187, %162
  %189 = load i32, i32* %3, align 4
  %190 = load i32, i32* @BMSR_RFAULT, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %188
  %194 = load %struct.b44*, %struct.b44** %2, align 8
  %195 = getelementptr inbounds %struct.b44, %struct.b44* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @netdev_warn(i32 %196, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %198

198:                                              ; preds = %193, %188
  %199 = load i32, i32* %3, align 4
  %200 = load i32, i32* @BMSR_JCD, align 4
  %201 = and i32 %199, %200
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %198
  %204 = load %struct.b44*, %struct.b44** %2, align 8
  %205 = getelementptr inbounds %struct.b44, %struct.b44* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @netdev_warn(i32 %206, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %208

208:                                              ; preds = %203, %198
  br label %209

209:                                              ; preds = %56, %208, %67, %62, %57
  ret void
}

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @b44_link_report(%struct.b44*) #1

declare dso_local i32 @b44_readphy(%struct.b44*, i32, i32*) #1

declare dso_local i32 @b44_set_flow_ctrl(%struct.b44*, i32, i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
