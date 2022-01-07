; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_setup_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_setup_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2 = type { i32, i64, i64, i32, i64, %struct.TYPE_2__*, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@PORT_TP = common dso_local global i64 0, align 8
@AUTONEG_SPEED = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE = common dso_local global i64 0, align 8
@BNX2_EMAC_MODE_PORT = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_MPKT_RCVD = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_ACPI_RCVD = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_MPKT = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_PORT_MII = common dso_local global i32 0, align 4
@BNX2_EMAC_MODE_PORT_GMII = common dso_local global i32 0, align 4
@SPEED_2500 = common dso_local global i64 0, align 8
@BNX2_EMAC_MODE_25G_MODE = common dso_local global i32 0, align 4
@NUM_MC_HASH_REGISTERS = common dso_local global i32 0, align 4
@BNX2_EMAC_MULTICAST_HASH0 = common dso_local global i64 0, align 8
@BNX2_EMAC_RX_MODE = common dso_local global i64 0, align 8
@BNX2_EMAC_RX_MODE_SORT_MODE = common dso_local global i32 0, align 4
@BNX2_RPM_SORT_USER0_BC_EN = common dso_local global i32 0, align 4
@BNX2_RPM_SORT_USER0_MC_EN = common dso_local global i32 0, align 4
@BNX2_RPM_SORT_USER0 = common dso_local global i64 0, align 8
@BNX2_RPM_SORT_USER0_ENA = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_SET_BITS = common dso_local global i64 0, align 8
@BNX2_MISC_ENABLE_SET_BITS_RX_PARSER_MAC_ENABLE = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_SET_BITS_TX_HEADER_Q_ENABLE = common dso_local global i32 0, align 4
@BNX2_MISC_ENABLE_SET_BITS_EMAC_ENABLE = common dso_local global i32 0, align 4
@BNX2_RPM_CONFIG = common dso_local global i64 0, align 8
@BNX2_RPM_CONFIG_ACPI_ENA = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_SUSPEND_WOL = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_CODE_SUSPEND_NO_WOL = common dso_local global i32 0, align 4
@BNX2_FLAG_NO_WOL = common dso_local global i32 0, align 4
@BNX2_DRV_MSG_DATA_WAIT3 = common dso_local global i32 0, align 4
@BNX2_CHIP_5709 = common dso_local global i64 0, align 8
@BNX2_PORT_FEATURE = common dso_local global i32 0, align 4
@BNX2_PORT_FEATURE_ASF_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2*)* @bnx2_setup_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2_setup_wol(%struct.bnx2* %0) #0 {
  %2 = alloca %struct.bnx2*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnx2* %0, %struct.bnx2** %2, align 8
  %9 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %10 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %9, i32 0, i32 8
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %164

13:                                               ; preds = %1
  %14 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %15 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %7, align 4
  %17 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %18 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %21 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PORT_TP, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %40

25:                                               ; preds = %13
  %26 = load i32, i32* @AUTONEG_SPEED, align 4
  %27 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %28 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %30 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %39 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %25, %13
  %41 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %42 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %41, i32 0, i32 7
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %45 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %46 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @bnx2_setup_phy(%struct.bnx2* %44, i64 %47)
  %49 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %50 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %49, i32 0, i32 7
  %51 = call i32 @spin_unlock_bh(i32* %50)
  %52 = load i32, i32* %7, align 4
  %53 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %54 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %53, i32 0, i32 6
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %57 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %59 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %60 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %59, i32 0, i32 5
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @bnx2_set_mac_addr(%struct.bnx2* %58, i32 %63, i32 0)
  %65 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %66 = load i64, i64* @BNX2_EMAC_MODE, align 8
  %67 = call i32 @BNX2_RD(%struct.bnx2* %65, i64 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* @BNX2_EMAC_MODE_PORT, align 4
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* @BNX2_EMAC_MODE_MPKT_RCVD, align 4
  %73 = load i32, i32* @BNX2_EMAC_MODE_ACPI_RCVD, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @BNX2_EMAC_MODE_MPKT, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* %4, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %4, align 4
  %79 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %80 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PORT_TP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %88

84:                                               ; preds = %40
  %85 = load i32, i32* @BNX2_EMAC_MODE_PORT_MII, align 4
  %86 = load i32, i32* %4, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %4, align 4
  br label %102

88:                                               ; preds = %40
  %89 = load i32, i32* @BNX2_EMAC_MODE_PORT_GMII, align 4
  %90 = load i32, i32* %4, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %4, align 4
  %92 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %93 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %92, i32 0, i32 2
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @SPEED_2500, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i32, i32* @BNX2_EMAC_MODE_25G_MODE, align 4
  %99 = load i32, i32* %4, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %97, %88
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %104 = load i64, i64* @BNX2_EMAC_MODE, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @BNX2_WR(%struct.bnx2* %103, i64 %104, i32 %105)
  store i32 0, i32* %3, align 4
  br label %107

107:                                              ; preds = %119, %102
  %108 = load i32, i32* %3, align 4
  %109 = load i32, i32* @NUM_MC_HASH_REGISTERS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %122

111:                                              ; preds = %107
  %112 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %113 = load i64, i64* @BNX2_EMAC_MULTICAST_HASH0, align 8
  %114 = load i32, i32* %3, align 4
  %115 = mul nsw i32 %114, 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %113, %116
  %118 = call i32 @BNX2_WR(%struct.bnx2* %112, i64 %117, i32 -1)
  br label %119

119:                                              ; preds = %111
  %120 = load i32, i32* %3, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %3, align 4
  br label %107

122:                                              ; preds = %107
  %123 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %124 = load i64, i64* @BNX2_EMAC_RX_MODE, align 8
  %125 = load i32, i32* @BNX2_EMAC_RX_MODE_SORT_MODE, align 4
  %126 = call i32 @BNX2_WR(%struct.bnx2* %123, i64 %124, i32 %125)
  %127 = load i32, i32* @BNX2_RPM_SORT_USER0_BC_EN, align 4
  %128 = or i32 1, %127
  %129 = load i32, i32* @BNX2_RPM_SORT_USER0_MC_EN, align 4
  %130 = or i32 %128, %129
  store i32 %130, i32* %4, align 4
  %131 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %132 = load i64, i64* @BNX2_RPM_SORT_USER0, align 8
  %133 = call i32 @BNX2_WR(%struct.bnx2* %131, i64 %132, i32 0)
  %134 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %135 = load i64, i64* @BNX2_RPM_SORT_USER0, align 8
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @BNX2_WR(%struct.bnx2* %134, i64 %135, i32 %136)
  %138 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %139 = load i64, i64* @BNX2_RPM_SORT_USER0, align 8
  %140 = load i32, i32* %4, align 4
  %141 = load i32, i32* @BNX2_RPM_SORT_USER0_ENA, align 4
  %142 = or i32 %140, %141
  %143 = call i32 @BNX2_WR(%struct.bnx2* %138, i64 %139, i32 %142)
  %144 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %145 = load i64, i64* @BNX2_MISC_ENABLE_SET_BITS, align 8
  %146 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS_RX_PARSER_MAC_ENABLE, align 4
  %147 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS_TX_HEADER_Q_ENABLE, align 4
  %148 = or i32 %146, %147
  %149 = load i32, i32* @BNX2_MISC_ENABLE_SET_BITS_EMAC_ENABLE, align 4
  %150 = or i32 %148, %149
  %151 = call i32 @BNX2_WR(%struct.bnx2* %144, i64 %145, i32 %150)
  %152 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %153 = load i64, i64* @BNX2_RPM_CONFIG, align 8
  %154 = call i32 @BNX2_RD(%struct.bnx2* %152, i64 %153)
  store i32 %154, i32* %4, align 4
  %155 = load i32, i32* @BNX2_RPM_CONFIG_ACPI_ENA, align 4
  %156 = xor i32 %155, -1
  %157 = load i32, i32* %4, align 4
  %158 = and i32 %157, %156
  store i32 %158, i32* %4, align 4
  %159 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %160 = load i64, i64* @BNX2_RPM_CONFIG, align 8
  %161 = load i32, i32* %4, align 4
  %162 = call i32 @BNX2_WR(%struct.bnx2* %159, i64 %160, i32 %161)
  %163 = load i32, i32* @BNX2_DRV_MSG_CODE_SUSPEND_WOL, align 4
  store i32 %163, i32* %5, align 4
  br label %166

164:                                              ; preds = %1
  %165 = load i32, i32* @BNX2_DRV_MSG_CODE_SUSPEND_NO_WOL, align 4
  store i32 %165, i32* %5, align 4
  br label %166

166:                                              ; preds = %164, %122
  %167 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %168 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 8
  %170 = load i32, i32* @BNX2_FLAG_NO_WOL, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %207, label %173

173:                                              ; preds = %166
  %174 = load i32, i32* @BNX2_DRV_MSG_DATA_WAIT3, align 4
  %175 = load i32, i32* %5, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %5, align 4
  %177 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %178 = getelementptr inbounds %struct.bnx2, %struct.bnx2* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %186, label %181

181:                                              ; preds = %173
  %182 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %183 = call i64 @BNX2_CHIP(%struct.bnx2* %182)
  %184 = load i64, i64* @BNX2_CHIP_5709, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %190

186:                                              ; preds = %181, %173
  %187 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %188 = load i32, i32* %5, align 4
  %189 = call i32 @bnx2_fw_sync(%struct.bnx2* %187, i32 %188, i32 1, i32 0)
  br label %207

190:                                              ; preds = %181
  %191 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %192 = load i32, i32* @BNX2_PORT_FEATURE, align 4
  %193 = call i32 @bnx2_shmem_rd(%struct.bnx2* %191, i32 %192)
  store i32 %193, i32* %8, align 4
  %194 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %195 = load i32, i32* @BNX2_PORT_FEATURE, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load i32, i32* @BNX2_PORT_FEATURE_ASF_ENABLED, align 4
  %198 = or i32 %196, %197
  %199 = call i32 @bnx2_shmem_wr(%struct.bnx2* %194, i32 %195, i32 %198)
  %200 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %201 = load i32, i32* %5, align 4
  %202 = call i32 @bnx2_fw_sync(%struct.bnx2* %200, i32 %201, i32 1, i32 0)
  %203 = load %struct.bnx2*, %struct.bnx2** %2, align 8
  %204 = load i32, i32* @BNX2_PORT_FEATURE, align 4
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @bnx2_shmem_wr(%struct.bnx2* %203, i32 %204, i32 %205)
  br label %207

207:                                              ; preds = %186, %190, %166
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @bnx2_setup_phy(%struct.bnx2*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @bnx2_set_mac_addr(%struct.bnx2*, i32, i32) #1

declare dso_local i32 @BNX2_RD(%struct.bnx2*, i64) #1

declare dso_local i32 @BNX2_WR(%struct.bnx2*, i64, i32) #1

declare dso_local i64 @BNX2_CHIP(%struct.bnx2*) #1

declare dso_local i32 @bnx2_fw_sync(%struct.bnx2*, i32, i32, i32) #1

declare dso_local i32 @bnx2_shmem_rd(%struct.bnx2*, i32) #1

declare dso_local i32 @bnx2_shmem_wr(%struct.bnx2*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
