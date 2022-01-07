; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32, i32, i32, i64, i32, i32, i32*, i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"%s-stats\00", align 1
@SYS_STAT_CFG = common dso_local global i32 0, align 4
@ETH_P_8021AD = common dso_local global i32 0, align 4
@SYS_VLAN_ETYPE_CFG = common dso_local global i32 0, align 4
@ANA_AGGR_CFG_AC_SMAC_ENA = common dso_local global i32 0, align 4
@ANA_AGGR_CFG_AC_DMAC_ENA = common dso_local global i32 0, align 4
@ANA_AGGR_CFG_AC_IP4_SIPDIP_ENA = common dso_local global i32 0, align 4
@ANA_AGGR_CFG_AC_IP4_TCPUDP_ENA = common dso_local global i32 0, align 4
@ANA_AGGR_CFG = common dso_local global i32 0, align 4
@BR_DEFAULT_AGEING_TIME = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ANA_AUTOAGE = common dso_local global i32 0, align 4
@ANA_ADVLEARN_VLAN_CHK = common dso_local global i64 0, align 8
@SYS_FRM_AGING_AGE_TX_ENA = common dso_local global i32 0, align 4
@SYS_FRM_AGING = common dso_local global i32 0, align 4
@PGID_MC = common dso_local global i32 0, align 4
@PGID_UC = common dso_local global i32 0, align 4
@ANA_FLOODING = common dso_local global i32 0, align 4
@PGID_MCIPV6 = common dso_local global i32 0, align 4
@PGID_MCIPV4 = common dso_local global i32 0, align 4
@ANA_FLOODING_IPMC = common dso_local global i32 0, align 4
@ANA_PGID_PGID = common dso_local global i32 0, align 4
@ANA_PORT_CPU_FWD_BPDU_CFG = common dso_local global i32 0, align 4
@PGID_SRC = common dso_local global i32 0, align 4
@PGID_CPU = common dso_local global i32 0, align 4
@ANA_PORT_PORT_CFG_RECV_ENA = common dso_local global i32 0, align 4
@ANA_PORT_PORT_CFG = common dso_local global i32 0, align 4
@QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE = common dso_local global i32 0, align 4
@QSYS_SWITCH_PORT_MODE_PORT_ENA = common dso_local global i32 0, align 4
@QSYS_SWITCH_PORT_MODE = common dso_local global i32 0, align 4
@SYS_PORT_MODE = common dso_local global i32 0, align 4
@QS_INJ_GRP_CFG_BYTE_SWAP = common dso_local global i32 0, align 4
@QS_INJ_GRP_CFG = common dso_local global i32 0, align 4
@QS_XTR_GRP_CFG_BYTE_SWAP = common dso_local global i32 0, align 4
@QS_XTR_GRP_CFG = common dso_local global i32 0, align 4
@ANA_CPUQ_CFG = common dso_local global i32 0, align 4
@ANA_CPUQ_8021_CFG = common dso_local global i32 0, align 4
@ocelot_check_stats_work = common dso_local global i32 0, align 4
@OCELOT_STATS_CHECK_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Timestamp initialization failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocelot_init(%struct.ocelot* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocelot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [32 x i8], align 16
  %9 = alloca i32, align 4
  store %struct.ocelot* %0, %struct.ocelot** %3, align 8
  %10 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %11 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %14 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %17 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @devm_kcalloc(i32 %15, i32 %18, i32 4, i32 %19)
  %21 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %22 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %21, i32 0, i32 11
  store i8* %20, i8** %22, align 8
  %23 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %24 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %23, i32 0, i32 11
  %25 = load i8*, i8** %24, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %342

30:                                               ; preds = %1
  %31 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %32 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %35 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %38 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = mul nsw i32 %36, %39
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call i8* @devm_kcalloc(i32 %33, i32 %40, i32 4, i32 %41)
  %43 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %44 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %43, i32 0, i32 10
  store i8* %42, i8** %44, align 8
  %45 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %46 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %45, i32 0, i32 10
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %30
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %342

52:                                               ; preds = %30
  %53 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %54 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %53, i32 0, i32 9
  %55 = call i32 @mutex_init(i32* %54)
  %56 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %57 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %56, i32 0, i32 8
  %58 = call i32 @mutex_init(i32* %57)
  %59 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %60 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %59, i32 0, i32 7
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %63 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %64 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i8* @dev_name(i32 %65)
  %67 = call i32 @snprintf(i8* %62, i32 32, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %66)
  %68 = getelementptr inbounds [32 x i8], [32 x i8]* %8, i64 0, i64 0
  %69 = call i32 @create_singlethread_workqueue(i8* %68)
  %70 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %71 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %70, i32 0, i32 5
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %73 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %52
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %2, align 4
  br label %342

79:                                               ; preds = %52
  %80 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %81 = call i32 @ocelot_mact_init(%struct.ocelot* %80)
  %82 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %83 = call i32 @ocelot_vlan_init(%struct.ocelot* %82)
  %84 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %85 = call i32 @ocelot_ace_init(%struct.ocelot* %84)
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %100, %79
  %87 = load i32, i32* %4, align 4
  %88 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %89 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %94 = load i32, i32* %4, align 4
  %95 = call i32 @SYS_STAT_CFG_STAT_VIEW(i32 %94)
  %96 = call i32 @SYS_STAT_CFG_STAT_CLEAR_SHOT(i32 127)
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SYS_STAT_CFG, align 4
  %99 = call i32 @ocelot_write(%struct.ocelot* %93, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  br label %86

103:                                              ; preds = %86
  %104 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %105 = load i32, i32* @ETH_P_8021AD, align 4
  %106 = load i32, i32* @SYS_VLAN_ETYPE_CFG, align 4
  %107 = call i32 @ocelot_write(%struct.ocelot* %104, i32 %105, i32 %106)
  %108 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %109 = load i32, i32* @ANA_AGGR_CFG_AC_SMAC_ENA, align 4
  %110 = load i32, i32* @ANA_AGGR_CFG_AC_DMAC_ENA, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @ANA_AGGR_CFG_AC_IP4_SIPDIP_ENA, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @ANA_AGGR_CFG_AC_IP4_TCPUDP_ENA, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @ANA_AGGR_CFG, align 4
  %117 = call i32 @ocelot_write(%struct.ocelot* %108, i32 %115, i32 %116)
  %118 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %119 = load i32, i32* @BR_DEFAULT_AGEING_TIME, align 4
  %120 = sdiv i32 %119, 2
  %121 = load i32, i32* @HZ, align 4
  %122 = sdiv i32 %120, %121
  %123 = call i32 @ANA_AUTOAGE_AGE_PERIOD(i32 %122)
  %124 = load i32, i32* @ANA_AUTOAGE, align 4
  %125 = call i32 @ocelot_write(%struct.ocelot* %118, i32 %123, i32 %124)
  %126 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %127 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = load i64, i64* @ANA_ADVLEARN_VLAN_CHK, align 8
  %130 = getelementptr inbounds i32, i32* %128, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @regmap_field_write(i32 %131, i32 1)
  %133 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %134 = load i32, i32* @SYS_FRM_AGING_AGE_TX_ENA, align 4
  %135 = call i32 @SYS_FRM_AGING_MAX_AGE(i32 307692)
  %136 = or i32 %134, %135
  %137 = load i32, i32* @SYS_FRM_AGING, align 4
  %138 = call i32 @ocelot_write(%struct.ocelot* %133, i32 %136, i32 %137)
  %139 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %140 = load i32, i32* @PGID_MC, align 4
  %141 = call i32 @ANA_FLOODING_FLD_MULTICAST(i32 %140)
  %142 = load i32, i32* @PGID_MC, align 4
  %143 = call i32 @ANA_FLOODING_FLD_BROADCAST(i32 %142)
  %144 = or i32 %141, %143
  %145 = load i32, i32* @PGID_UC, align 4
  %146 = call i32 @ANA_FLOODING_FLD_UNICAST(i32 %145)
  %147 = or i32 %144, %146
  %148 = load i32, i32* @ANA_FLOODING, align 4
  %149 = call i32 @ocelot_write_rix(%struct.ocelot* %139, i32 %147, i32 %148, i32 0)
  %150 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %151 = load i32, i32* @PGID_MCIPV6, align 4
  %152 = call i32 @ANA_FLOODING_IPMC_FLD_MC6_DATA(i32 %151)
  %153 = load i32, i32* @PGID_MC, align 4
  %154 = call i32 @ANA_FLOODING_IPMC_FLD_MC6_CTRL(i32 %153)
  %155 = or i32 %152, %154
  %156 = load i32, i32* @PGID_MCIPV4, align 4
  %157 = call i32 @ANA_FLOODING_IPMC_FLD_MC4_DATA(i32 %156)
  %158 = or i32 %155, %157
  %159 = load i32, i32* @PGID_MC, align 4
  %160 = call i32 @ANA_FLOODING_IPMC_FLD_MC4_CTRL(i32 %159)
  %161 = or i32 %158, %160
  %162 = load i32, i32* @ANA_FLOODING_IPMC, align 4
  %163 = call i32 @ocelot_write(%struct.ocelot* %150, i32 %161, i32 %162)
  store i32 0, i32* %4, align 4
  br label %164

164:                                              ; preds = %188, %103
  %165 = load i32, i32* %4, align 4
  %166 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %167 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = icmp slt i32 %165, %168
  br i1 %169, label %170, label %191

170:                                              ; preds = %164
  %171 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %172 = load i32, i32* %4, align 4
  %173 = call i32 @BIT(i32 %172)
  %174 = load i32, i32* @ANA_PGID_PGID, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @ocelot_write_rix(%struct.ocelot* %171, i32 %173, i32 %174, i32 %175)
  %177 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %178 = call i32 @ANA_PORT_CPU_FWD_BPDU_CFG_BPDU_REDIR_ENA(i32 65535)
  %179 = load i32, i32* @ANA_PORT_CPU_FWD_BPDU_CFG, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 @ocelot_write_gix(%struct.ocelot* %177, i32 %178, i32 %179, i32 %180)
  %182 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %183 = load i32, i32* @ANA_PGID_PGID, align 4
  %184 = load i32, i32* @PGID_SRC, align 4
  %185 = load i32, i32* %4, align 4
  %186 = add nsw i32 %184, %185
  %187 = call i32 @ocelot_write_rix(%struct.ocelot* %182, i32 0, i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %170
  %189 = load i32, i32* %4, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %4, align 4
  br label %164

191:                                              ; preds = %164
  %192 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %193 = load i32, i32* @ANA_PGID_PGID, align 4
  %194 = load i32, i32* %7, align 4
  %195 = call i32 @ocelot_write_rix(%struct.ocelot* %192, i32 0, i32 %193, i32 %194)
  %196 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i32 @BIT(i32 %197)
  %199 = load i32, i32* @ANA_PGID_PGID, align 4
  %200 = load i32, i32* @PGID_CPU, align 4
  %201 = call i32 @ocelot_write_rix(%struct.ocelot* %196, i32 %198, i32 %199, i32 %200)
  %202 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %203 = load i32, i32* @ANA_PORT_PORT_CFG_RECV_ENA, align 4
  %204 = load i32, i32* %7, align 4
  %205 = call i32 @ANA_PORT_PORT_CFG_PORTID_VAL(i32 %204)
  %206 = or i32 %203, %205
  %207 = load i32, i32* @ANA_PORT_PORT_CFG, align 4
  %208 = load i32, i32* %7, align 4
  %209 = call i32 @ocelot_write_gix(%struct.ocelot* %202, i32 %206, i32 %207, i32 %208)
  %210 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %211 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %5, align 4
  br label %214

214:                                              ; preds = %230, %191
  %215 = load i32, i32* %5, align 4
  %216 = load i32, i32* @PGID_CPU, align 4
  %217 = icmp slt i32 %215, %216
  br i1 %217, label %218, label %233

218:                                              ; preds = %214
  %219 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %220 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = sub nsw i32 %221, 1
  %223 = call i32 @GENMASK(i32 %222, i32 0)
  %224 = call i32 @ANA_PGID_PGID_PGID(i32 %223)
  store i32 %224, i32* %9, align 4
  %225 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %226 = load i32, i32* %9, align 4
  %227 = load i32, i32* @ANA_PGID_PGID, align 4
  %228 = load i32, i32* %5, align 4
  %229 = call i32 @ocelot_write_rix(%struct.ocelot* %225, i32 %226, i32 %227, i32 %228)
  br label %230

230:                                              ; preds = %218
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %5, align 4
  br label %214

233:                                              ; preds = %214
  %234 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %235 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %236 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = call i32 @GENMASK(i32 %237, i32 0)
  %239 = call i32 @ANA_PGID_PGID_PGID(i32 %238)
  %240 = load i32, i32* @ANA_PGID_PGID, align 4
  %241 = load i32, i32* @PGID_MC, align 4
  %242 = call i32 @ocelot_write_rix(%struct.ocelot* %234, i32 %239, i32 %240, i32 %241)
  %243 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %244 = load i32, i32* @ANA_PGID_PGID, align 4
  %245 = load i32, i32* @PGID_MCIPV4, align 4
  %246 = call i32 @ocelot_write_rix(%struct.ocelot* %243, i32 0, i32 %244, i32 %245)
  %247 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %248 = load i32, i32* @ANA_PGID_PGID, align 4
  %249 = load i32, i32* @PGID_MCIPV6, align 4
  %250 = call i32 @ocelot_write_rix(%struct.ocelot* %247, i32 0, i32 %248, i32 %249)
  %251 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %252 = load i32, i32* @QSYS_SWITCH_PORT_MODE_INGRESS_DROP_MODE, align 4
  %253 = call i32 @QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG(i32 1)
  %254 = or i32 %252, %253
  %255 = load i32, i32* @QSYS_SWITCH_PORT_MODE_PORT_ENA, align 4
  %256 = or i32 %254, %255
  %257 = load i32, i32* @QSYS_SWITCH_PORT_MODE, align 4
  %258 = load i32, i32* %7, align 4
  %259 = call i32 @ocelot_write_rix(%struct.ocelot* %251, i32 %256, i32 %257, i32 %258)
  %260 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %261 = call i32 @SYS_PORT_MODE_INCL_XTR_HDR(i32 1)
  %262 = call i32 @SYS_PORT_MODE_INCL_INJ_HDR(i32 1)
  %263 = or i32 %261, %262
  %264 = load i32, i32* @SYS_PORT_MODE, align 4
  %265 = load i32, i32* %7, align 4
  %266 = call i32 @ocelot_write_rix(%struct.ocelot* %260, i32 %263, i32 %264, i32 %265)
  %267 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %268 = load i32, i32* @QS_INJ_GRP_CFG_BYTE_SWAP, align 4
  %269 = call i32 @QS_INJ_GRP_CFG_MODE(i32 1)
  %270 = or i32 %268, %269
  %271 = load i32, i32* @QS_INJ_GRP_CFG, align 4
  %272 = call i32 @ocelot_write_rix(%struct.ocelot* %267, i32 %270, i32 %271, i32 0)
  %273 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %274 = load i32, i32* @QS_XTR_GRP_CFG_BYTE_SWAP, align 4
  %275 = call i32 @QS_XTR_GRP_CFG_MODE(i32 1)
  %276 = or i32 %274, %275
  %277 = load i32, i32* @QS_XTR_GRP_CFG, align 4
  %278 = call i32 @ocelot_write_rix(%struct.ocelot* %273, i32 %276, i32 %277, i32 0)
  %279 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %280 = call i32 @ANA_CPUQ_CFG_CPUQ_MIRROR(i32 2)
  %281 = call i32 @ANA_CPUQ_CFG_CPUQ_LRN(i32 2)
  %282 = or i32 %280, %281
  %283 = call i32 @ANA_CPUQ_CFG_CPUQ_MAC_COPY(i32 2)
  %284 = or i32 %282, %283
  %285 = call i32 @ANA_CPUQ_CFG_CPUQ_SRC_COPY(i32 2)
  %286 = or i32 %284, %285
  %287 = call i32 @ANA_CPUQ_CFG_CPUQ_LOCKED_PORTMOVE(i32 2)
  %288 = or i32 %286, %287
  %289 = call i32 @ANA_CPUQ_CFG_CPUQ_ALLBRIDGE(i32 6)
  %290 = or i32 %288, %289
  %291 = call i32 @ANA_CPUQ_CFG_CPUQ_IPMC_CTRL(i32 6)
  %292 = or i32 %290, %291
  %293 = call i32 @ANA_CPUQ_CFG_CPUQ_IGMP(i32 6)
  %294 = or i32 %292, %293
  %295 = call i32 @ANA_CPUQ_CFG_CPUQ_MLD(i32 6)
  %296 = or i32 %294, %295
  %297 = load i32, i32* @ANA_CPUQ_CFG, align 4
  %298 = call i32 @ocelot_write(%struct.ocelot* %279, i32 %296, i32 %297)
  store i32 0, i32* %5, align 4
  br label %299

299:                                              ; preds = %310, %233
  %300 = load i32, i32* %5, align 4
  %301 = icmp slt i32 %300, 16
  br i1 %301, label %302, label %313

302:                                              ; preds = %299
  %303 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %304 = call i32 @ANA_CPUQ_8021_CFG_CPUQ_GARP_VAL(i32 6)
  %305 = call i32 @ANA_CPUQ_8021_CFG_CPUQ_BPDU_VAL(i32 6)
  %306 = or i32 %304, %305
  %307 = load i32, i32* @ANA_CPUQ_8021_CFG, align 4
  %308 = load i32, i32* %5, align 4
  %309 = call i32 @ocelot_write_rix(%struct.ocelot* %303, i32 %306, i32 %307, i32 %308)
  br label %310

310:                                              ; preds = %302
  %311 = load i32, i32* %5, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %5, align 4
  br label %299

313:                                              ; preds = %299
  %314 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %315 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %314, i32 0, i32 4
  %316 = load i32, i32* @ocelot_check_stats_work, align 4
  %317 = call i32 @INIT_DELAYED_WORK(i32* %315, i32 %316)
  %318 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %319 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %322 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %321, i32 0, i32 4
  %323 = load i32, i32* @OCELOT_STATS_CHECK_DELAY, align 4
  %324 = call i32 @queue_delayed_work(i32 %320, i32* %322, i32 %323)
  %325 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %326 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %325, i32 0, i32 3
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %341

329:                                              ; preds = %313
  %330 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %331 = call i32 @ocelot_init_timestamp(%struct.ocelot* %330)
  store i32 %331, i32* %6, align 4
  %332 = load i32, i32* %6, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %340

334:                                              ; preds = %329
  %335 = load %struct.ocelot*, %struct.ocelot** %3, align 8
  %336 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %335, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = call i32 @dev_err(i32 %337, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %339 = load i32, i32* %6, align 4
  store i32 %339, i32* %2, align 4
  br label %342

340:                                              ; preds = %329
  br label %341

341:                                              ; preds = %340, %313
  store i32 0, i32* %2, align 4
  br label %342

342:                                              ; preds = %341, %334, %76, %49, %27
  %343 = load i32, i32* %2, align 4
  ret i32 %343
}

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dev_name(i32) #1

declare dso_local i32 @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @ocelot_mact_init(%struct.ocelot*) #1

declare dso_local i32 @ocelot_vlan_init(%struct.ocelot*) #1

declare dso_local i32 @ocelot_ace_init(%struct.ocelot*) #1

declare dso_local i32 @ocelot_write(%struct.ocelot*, i32, i32) #1

declare dso_local i32 @SYS_STAT_CFG_STAT_VIEW(i32) #1

declare dso_local i32 @SYS_STAT_CFG_STAT_CLEAR_SHOT(i32) #1

declare dso_local i32 @ANA_AUTOAGE_AGE_PERIOD(i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @SYS_FRM_AGING_MAX_AGE(i32) #1

declare dso_local i32 @ocelot_write_rix(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @ANA_FLOODING_FLD_MULTICAST(i32) #1

declare dso_local i32 @ANA_FLOODING_FLD_BROADCAST(i32) #1

declare dso_local i32 @ANA_FLOODING_FLD_UNICAST(i32) #1

declare dso_local i32 @ANA_FLOODING_IPMC_FLD_MC6_DATA(i32) #1

declare dso_local i32 @ANA_FLOODING_IPMC_FLD_MC6_CTRL(i32) #1

declare dso_local i32 @ANA_FLOODING_IPMC_FLD_MC4_DATA(i32) #1

declare dso_local i32 @ANA_FLOODING_IPMC_FLD_MC4_CTRL(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ocelot_write_gix(%struct.ocelot*, i32, i32, i32) #1

declare dso_local i32 @ANA_PORT_CPU_FWD_BPDU_CFG_BPDU_REDIR_ENA(i32) #1

declare dso_local i32 @ANA_PORT_PORT_CFG_PORTID_VAL(i32) #1

declare dso_local i32 @ANA_PGID_PGID_PGID(i32) #1

declare dso_local i32 @GENMASK(i32, i32) #1

declare dso_local i32 @QSYS_SWITCH_PORT_MODE_SCH_NEXT_CFG(i32) #1

declare dso_local i32 @SYS_PORT_MODE_INCL_XTR_HDR(i32) #1

declare dso_local i32 @SYS_PORT_MODE_INCL_INJ_HDR(i32) #1

declare dso_local i32 @QS_INJ_GRP_CFG_MODE(i32) #1

declare dso_local i32 @QS_XTR_GRP_CFG_MODE(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_MIRROR(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_LRN(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_MAC_COPY(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_SRC_COPY(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_LOCKED_PORTMOVE(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_ALLBRIDGE(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_IPMC_CTRL(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_IGMP(i32) #1

declare dso_local i32 @ANA_CPUQ_CFG_CPUQ_MLD(i32) #1

declare dso_local i32 @ANA_CPUQ_8021_CFG_CPUQ_GARP_VAL(i32) #1

declare dso_local i32 @ANA_CPUQ_8021_CFG_CPUQ_BPDU_VAL(i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @ocelot_init_timestamp(%struct.ocelot*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
