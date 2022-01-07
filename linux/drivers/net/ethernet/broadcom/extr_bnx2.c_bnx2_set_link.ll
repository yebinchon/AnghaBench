; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_set_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i64, i32, i32, i32, i32, i32 }

@MAC_LOOPBACK = common dso_local global i64 0, align 8
@PHY_LOOPBACK = common dso_local global i64 0, align 8
@BNX2_PHY_FLAG_REMOTE_PHY_CAP = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_SERDES = common dso_local global i32 0, align 4
@BNX2_CHIP_5706 = common dso_local global i64 0, align 8
@BNX2_PHY_FLAG_FORCED_DOWN = common dso_local global i32 0, align 4
@BNX2_EMAC_STATUS = common dso_local global i32 0, align 4
@MII_BNX2_MISC_SHADOW = common dso_local global i32 0, align 4
@MISC_SHDW_AN_DBG = common dso_local global i32 0, align 4
@BNX2_EMAC_STATUS_LINK = common dso_local global i32 0, align 4
@MISC_SHDW_AN_DBG_NOSYNC = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@BNX2_CHIP_5708 = common dso_local global i64 0, align 8
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@AUTONEG_SPEED = common dso_local global i32 0, align 4
@BNX2_PHY_FLAG_PARALLEL_DETECT = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2*)* @bnx2_set_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2_set_link(%struct.bnx2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bnx2*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %3, align 8
  %9 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %10 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAC_LOOPBACK, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %16 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PHY_LOOPBACK, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %14, %1
  %21 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %21, i32 0, i32 1
  store i32 1, i32* %22, align 8
  store i32 0, i32* %2, align 4
  br label %216

23:                                               ; preds = %14
  %24 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %25 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @BNX2_PHY_FLAG_REMOTE_PHY_CAP, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %216

31:                                               ; preds = %23
  %32 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %5, align 4
  %35 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %36 = call i32 @bnx2_enable_bmsr1(%struct.bnx2* %35)
  %37 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %38 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bnx2_read_phy(%struct.bnx2* %37, i32 %40, i32* %4)
  %42 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %43 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %44 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @bnx2_read_phy(%struct.bnx2* %42, i32 %45, i32* %4)
  %47 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %48 = call i32 @bnx2_disable_bmsr1(%struct.bnx2* %47)
  %49 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %109

55:                                               ; preds = %31
  %56 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %57 = call i64 @BNX2_CHIP(%struct.bnx2* %56)
  %58 = load i64, i64* @BNX2_CHIP_5706, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %109

60:                                               ; preds = %55
  %61 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %62 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @BNX2_PHY_FLAG_FORCED_DOWN, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %69 = call i32 @bnx2_5706s_force_link_dn(%struct.bnx2* %68, i32 0)
  %70 = load i32, i32* @BNX2_PHY_FLAG_FORCED_DOWN, align 4
  %71 = xor i32 %70, -1
  %72 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %73 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %67, %60
  %77 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %78 = load i32, i32* @BNX2_EMAC_STATUS, align 4
  %79 = call i32 @BNX2_RD(%struct.bnx2* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %81 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %82 = load i32, i32* @MISC_SHDW_AN_DBG, align 4
  %83 = call i32 @bnx2_write_phy(%struct.bnx2* %80, i32 %81, i32 %82)
  %84 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %85 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %86 = call i32 @bnx2_read_phy(%struct.bnx2* %84, i32 %85, i32* %7)
  %87 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %88 = load i32, i32* @MII_BNX2_MISC_SHADOW, align 4
  %89 = call i32 @bnx2_read_phy(%struct.bnx2* %87, i32 %88, i32* %7)
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @BNX2_EMAC_STATUS_LINK, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %103

94:                                               ; preds = %76
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @MISC_SHDW_AN_DBG_NOSYNC, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @BMSR_LSTATUS, align 4
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %4, align 4
  br label %108

103:                                              ; preds = %94, %76
  %104 = load i32, i32* @BMSR_LSTATUS, align 4
  %105 = xor i32 %104, -1
  %106 = load i32, i32* %4, align 4
  %107 = and i32 %106, %105
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %103, %99
  br label %109

109:                                              ; preds = %108, %55, %31
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @BMSR_LSTATUS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %156

114:                                              ; preds = %109
  %115 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %116 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %115, i32 0, i32 1
  store i32 1, i32* %116, align 8
  %117 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %118 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %114
  %124 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %125 = call i64 @BNX2_CHIP(%struct.bnx2* %124)
  %126 = load i64, i64* @BNX2_CHIP_5706, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %130 = call i32 @bnx2_5706s_linkup(%struct.bnx2* %129)
  br label %149

131:                                              ; preds = %123
  %132 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %133 = call i64 @BNX2_CHIP(%struct.bnx2* %132)
  %134 = load i64, i64* @BNX2_CHIP_5708, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %138 = call i32 @bnx2_5708s_linkup(%struct.bnx2* %137)
  br label %148

139:                                              ; preds = %131
  %140 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %141 = call i64 @BNX2_CHIP(%struct.bnx2* %140)
  %142 = load i64, i64* @BNX2_CHIP_5709, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %146 = call i32 @bnx2_5709s_linkup(%struct.bnx2* %145)
  br label %147

147:                                              ; preds = %144, %139
  br label %148

148:                                              ; preds = %147, %136
  br label %149

149:                                              ; preds = %148, %128
  br label %153

150:                                              ; preds = %114
  %151 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %152 = call i32 @bnx2_copper_linkup(%struct.bnx2* %151)
  br label %153

153:                                              ; preds = %150, %149
  %154 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %155 = call i32 @bnx2_resolve_flow_ctrl(%struct.bnx2* %154)
  br label %204

156:                                              ; preds = %109
  %157 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %158 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @BNX2_PHY_FLAG_SERDES, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %173

163:                                              ; preds = %156
  %164 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %165 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @AUTONEG_SPEED, align 4
  %168 = and i32 %166, %167
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %163
  %171 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %172 = call i32 @bnx2_disable_forced_2g5(%struct.bnx2* %171)
  br label %173

173:                                              ; preds = %170, %163, %156
  %174 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %175 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @BNX2_PHY_FLAG_PARALLEL_DETECT, align 4
  %178 = and i32 %176, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %201

180:                                              ; preds = %173
  %181 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %182 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %183 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @bnx2_read_phy(%struct.bnx2* %181, i32 %184, i32* %8)
  %186 = load i32, i32* @BMCR_ANENABLE, align 4
  %187 = load i32, i32* %8, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %8, align 4
  %189 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %190 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %191 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %8, align 4
  %194 = call i32 @bnx2_write_phy(%struct.bnx2* %189, i32 %192, i32 %193)
  %195 = load i32, i32* @BNX2_PHY_FLAG_PARALLEL_DETECT, align 4
  %196 = xor i32 %195, -1
  %197 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %198 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %180, %173
  %202 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %203 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %202, i32 0, i32 1
  store i32 0, i32* %203, align 8
  br label %204

204:                                              ; preds = %201, %153
  %205 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %206 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %204
  %211 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %212 = call i32 @bnx2_report_link(%struct.bnx2* %211)
  br label %213

213:                                              ; preds = %210, %204
  %214 = load %struct.bnx2*, %struct.bnx2** %3, align 8
  %215 = call i32 @bnx2_set_mac_link(%struct.bnx2* %214)
  store i32 0, i32* %2, align 4
  br label %216

216:                                              ; preds = %213, %30, %20
  %217 = load i32, i32* %2, align 4
  ret i32 %217
}

declare dso_local i32 @bnx2_enable_bmsr1(%struct.bnx2*) #1

declare dso_local i32 @bnx2_read_phy(%struct.bnx2*, i32, i32*) #1

declare dso_local i32 @bnx2_disable_bmsr1(%struct.bnx2*) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_5706s_force_link_dn(%struct.bnx2*, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_write_phy(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @bnx2_5706s_linkup(%struct.bnx2*) #1

declare dso_local i32 @bnx2_5708s_linkup(%struct.bnx2*) #1

declare dso_local i32 @bnx2_5709s_linkup(%struct.bnx2*) #1

declare dso_local i32 @bnx2_copper_linkup(%struct.bnx2*) #1

declare dso_local i32 @bnx2_resolve_flow_ctrl(%struct.bnx2*) #1

declare dso_local i32 @bnx2_disable_forced_2g5(%struct.bnx2*) #1

declare dso_local i32 @bnx2_report_link(%struct.bnx2*) #1

declare dso_local i32 @bnx2_set_mac_link(%struct.bnx2*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
