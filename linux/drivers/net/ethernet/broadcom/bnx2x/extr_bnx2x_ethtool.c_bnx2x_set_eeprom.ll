; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_ethtool.c_bnx2x_set_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32, i32 }
%struct.bnx2x = type { i64, %struct.TYPE_9__, i32, %struct.TYPE_6__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_6__ = type { i32 }

@BNX2X_MSG_ETHTOOL = common dso_local global i32 0, align 4
@BNX2X_MSG_NVM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"cannot access eeprom when the interface is down\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"ethtool_eeprom: cmd %d\0A  magic 0x%x  offset 0x%x (%d)  len 0x%x (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"wrong magic or interface is not pmf\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dev_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@STATS_EVENT_STOP = common dso_local global i32 0, align 4
@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101 = common dso_local global i64 0, align 8
@MISC_REGISTERS_GPIO_0 = common dso_local global i32 0, align 4
@MISC_REGISTERS_GPIO_HIGH = common dso_local global i32 0, align 4
@BNX2X_STATE_OPEN = common dso_local global i64 0, align 8
@MISC_REGISTERS_GPIO_LOW = common dso_local global i32 0, align 4
@EXT_PHY1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @bnx2x_set_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.bnx2x* @netdev_priv(%struct.net_device* %12)
  store %struct.bnx2x* %13, %struct.bnx2x** %8, align 8
  %14 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %15 = call i32 @BP_PORT(%struct.bnx2x* %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %17 = call i32 @bnx2x_is_nvm_accessible(%struct.bnx2x* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %21 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %22 = or i32 %20, %21
  %23 = call i32 (i32, i8*, ...) @DP(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %193

26:                                               ; preds = %3
  %27 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %28 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %31 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %37 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %40 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %43 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %46 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @DP(i32 %29, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %32, i32 %35, i32 %38, i32 %41, i32 %44, i32 %47)
  %49 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %50 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp sge i32 %51, 1346918656
  br i1 %52, label %53, label %71

53:                                               ; preds = %26
  %54 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %55 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp sle i32 %56, 1346918911
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %60 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %71, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* @BNX2X_MSG_ETHTOOL, align 4
  %66 = load i32, i32* @BNX2X_MSG_NVM, align 4
  %67 = or i32 %65, %66
  %68 = call i32 (i32, i8*, ...) @DP(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %193

71:                                               ; preds = %58, %53, %26
  %72 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dev_info, i32 0, i32 0), align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @SHMEM_RD(%struct.bnx2x* %72, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %81 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 1346918736
  br i1 %83, label %84, label %112

84:                                               ; preds = %71
  %85 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %86 = load i32, i32* @STATS_EVENT_STOP, align 4
  %87 = call i32 @bnx2x_stats_handle(%struct.bnx2x* %85, i32 %86)
  %88 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %89 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %88)
  %90 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %91 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %90, i32 0, i32 1
  %92 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %93 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %92, i32 0, i32 2
  %94 = call i32 @bnx2x_link_reset(%struct.TYPE_9__* %91, i32* %93, i32 0)
  %95 = load i32, i32* %10, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %11, align 4
  %98 = call i64 @XGXS_EXT_PHY_TYPE(i32 %97)
  %99 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %84
  %102 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %103 = load i32, i32* @MISC_REGISTERS_GPIO_0, align 4
  %104 = load i32, i32* @MISC_REGISTERS_GPIO_HIGH, align 4
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %102, i32 %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %101, %84
  %108 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %109 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %108)
  %110 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %111 = call i32 @bnx2x_link_report(%struct.bnx2x* %110)
  br label %191

112:                                              ; preds = %71
  %113 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %114 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 1346918738
  br i1 %116, label %117, label %145

117:                                              ; preds = %112
  %118 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %119 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @BNX2X_STATE_OPEN, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %117
  %124 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %125 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %124)
  %126 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %127 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %126, i32 0, i32 1
  %128 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %129 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %128, i32 0, i32 2
  %130 = call i32 @bnx2x_link_reset(%struct.TYPE_9__* %127, i32* %129, i32 1)
  %131 = load i32, i32* %10, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %10, align 4
  %133 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %134 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %133, i32 0, i32 1
  %135 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %136 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %135, i32 0, i32 2
  %137 = call i32 @bnx2x_phy_init(%struct.TYPE_9__* %134, i32* %136)
  %138 = load i32, i32* %10, align 4
  %139 = or i32 %138, %137
  store i32 %139, i32* %10, align 4
  %140 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %141 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %140)
  %142 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %143 = call i32 @bnx2x_calc_fc_adv(%struct.bnx2x* %142)
  br label %144

144:                                              ; preds = %123, %117
  br label %190

145:                                              ; preds = %112
  %146 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %147 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 1402493251
  br i1 %149, label %150, label %179

150:                                              ; preds = %145
  %151 = load i32, i32* %11, align 4
  %152 = call i64 @XGXS_EXT_PHY_TYPE(i32 %151)
  %153 = load i64, i64* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_SFX7101, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %178

155:                                              ; preds = %150
  %156 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %157 = load i32, i32* @MISC_REGISTERS_GPIO_0, align 4
  %158 = load i32, i32* @MISC_REGISTERS_GPIO_LOW, align 4
  %159 = load i32, i32* %9, align 4
  %160 = call i32 @bnx2x_set_gpio(%struct.bnx2x* %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %162 = call i32 @bnx2x_acquire_phy_lock(%struct.bnx2x* %161)
  %163 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %164 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %165 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @EXT_PHY1, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = call i32 @bnx2x_sfx7101_sp_sw_reset(%struct.bnx2x* %163, i32* %169)
  %171 = call i32 @msleep(i32 500)
  %172 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i32 @bnx2x_ext_phy_hw_reset(%struct.bnx2x* %172, i32 %173)
  %175 = call i32 @msleep(i32 500)
  %176 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %177 = call i32 @bnx2x_release_phy_lock(%struct.bnx2x* %176)
  br label %178

178:                                              ; preds = %155, %150
  br label %189

179:                                              ; preds = %145
  %180 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %181 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %182 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = load i32*, i32** %7, align 8
  %185 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %186 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @bnx2x_nvram_write(%struct.bnx2x* %180, i32 %183, i32* %184, i32 %187)
  store i32 %188, i32* %10, align 4
  br label %189

189:                                              ; preds = %179, %178
  br label %190

190:                                              ; preds = %189, %144
  br label %191

191:                                              ; preds = %190, %107
  %192 = load i32, i32* %10, align 4
  store i32 %192, i32* %4, align 4
  br label %193

193:                                              ; preds = %191, %64, %19
  %194 = load i32, i32* %4, align 4
  ret i32 %194
}

declare dso_local %struct.bnx2x* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_is_nvm_accessible(%struct.bnx2x*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @SHMEM_RD(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_stats_handle(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_acquire_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_reset(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i64 @XGXS_EXT_PHY_TYPE(i32) #1

declare dso_local i32 @bnx2x_set_gpio(%struct.bnx2x*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_release_phy_lock(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_link_report(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_phy_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @bnx2x_calc_fc_adv(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_sfx7101_sp_sw_reset(%struct.bnx2x*, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @bnx2x_ext_phy_hw_reset(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_nvram_write(%struct.bnx2x*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
