; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_diag_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.igb_adapter = type { i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@__IGB_TESTING = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@TEST_LINK = common dso_local global i64 0, align 8
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@TEST_REG = common dso_local global i64 0, align 8
@TEST_EEP = common dso_local global i64 0, align 8
@TEST_IRQ = common dso_local global i64 0, align 8
@TEST_LOOP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i64*)* @igb_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igb_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i64* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.igb_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.igb_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.igb_adapter* %13, %struct.igb_adapter** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* @__IGB_TESTING, align 4
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 0
  %19 = call i32 @set_bit(i32 %16, i32* %18)
  %20 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %3
  %35 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %180

40:                                               ; preds = %34
  %41 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  store i8* %50, i8** %9, align 8
  %51 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %52 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %10, align 8
  %56 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %57 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %56, i32 0, i32 1
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = call i32 @dev_info(i32* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %61 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %62 = call i32 @igb_power_up_link(%struct.igb_adapter* %61)
  %63 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* @TEST_LINK, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = call i64 @igb_link_test(%struct.igb_adapter* %63, i64* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %40
  %70 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %71 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %40
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @igb_close(%struct.net_device* %79)
  br label %84

81:                                               ; preds = %75
  %82 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %83 = call i32 @igb_reset(%struct.igb_adapter* %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* @TEST_REG, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = call i64 @igb_reg_test(%struct.igb_adapter* %85, i64* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %84
  %92 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %93 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %94 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %84
  %98 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %99 = call i32 @igb_reset(%struct.igb_adapter* %98)
  %100 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* @TEST_EEP, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = call i64 @igb_eeprom_test(%struct.igb_adapter* %100, i64* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %97
  %107 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %108 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %97
  %113 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %114 = call i32 @igb_reset(%struct.igb_adapter* %113)
  %115 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %116 = load i64*, i64** %6, align 8
  %117 = load i64, i64* @TEST_IRQ, align 8
  %118 = getelementptr inbounds i64, i64* %116, i64 %117
  %119 = call i64 @igb_intr_test(%struct.igb_adapter* %115, i64* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %112
  %122 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %123 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %124 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %112
  %128 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %129 = call i32 @igb_reset(%struct.igb_adapter* %128)
  %130 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %131 = call i32 @igb_power_up_link(%struct.igb_adapter* %130)
  %132 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %133 = load i64*, i64** %6, align 8
  %134 = load i64, i64* @TEST_LOOP, align 8
  %135 = getelementptr inbounds i64, i64* %133, i64 %134
  %136 = call i64 @igb_loopback_test(%struct.igb_adapter* %132, i64* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %127
  %139 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %140 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %141 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  br label %144

144:                                              ; preds = %138, %127
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %147 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  store i32 %145, i32* %149, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %152 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %151, i32 0, i32 2
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store i8* %150, i8** %154, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %157 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 0
  store i8* %155, i8** %159, align 8
  %160 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %161 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %162, i32 0, i32 0
  store i32 1, i32* %163, align 8
  %164 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %165 = call i32 @igb_reset(%struct.igb_adapter* %164)
  %166 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %167 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i32 0, i32* %169, align 8
  %170 = load i32, i32* @__IGB_TESTING, align 4
  %171 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %172 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %171, i32 0, i32 0
  %173 = call i32 @clear_bit(i32 %170, i32* %172)
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %144
  %177 = load %struct.net_device*, %struct.net_device** %4, align 8
  %178 = call i32 @igb_open(%struct.net_device* %177)
  br label %179

179:                                              ; preds = %176, %144
  br label %222

180:                                              ; preds = %34
  %181 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %182 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %181, i32 0, i32 1
  %183 = load %struct.TYPE_12__*, %struct.TYPE_12__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %183, i32 0, i32 0
  %185 = call i32 @dev_info(i32* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %186 = load i32, i32* %11, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %201

188:                                              ; preds = %180
  %189 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %190 = load i64*, i64** %6, align 8
  %191 = load i64, i64* @TEST_LINK, align 8
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  %193 = call i64 @igb_link_test(%struct.igb_adapter* %189, i64* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %188
  %196 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %197 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %198 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %205

201:                                              ; preds = %188, %180
  %202 = load i64*, i64** %6, align 8
  %203 = load i64, i64* @TEST_LINK, align 8
  %204 = getelementptr inbounds i64, i64* %202, i64 %203
  store i64 0, i64* %204, align 8
  br label %205

205:                                              ; preds = %201, %195
  %206 = load i64*, i64** %6, align 8
  %207 = load i64, i64* @TEST_REG, align 8
  %208 = getelementptr inbounds i64, i64* %206, i64 %207
  store i64 0, i64* %208, align 8
  %209 = load i64*, i64** %6, align 8
  %210 = load i64, i64* @TEST_EEP, align 8
  %211 = getelementptr inbounds i64, i64* %209, i64 %210
  store i64 0, i64* %211, align 8
  %212 = load i64*, i64** %6, align 8
  %213 = load i64, i64* @TEST_IRQ, align 8
  %214 = getelementptr inbounds i64, i64* %212, i64 %213
  store i64 0, i64* %214, align 8
  %215 = load i64*, i64** %6, align 8
  %216 = load i64, i64* @TEST_LOOP, align 8
  %217 = getelementptr inbounds i64, i64* %215, i64 %216
  store i64 0, i64* %217, align 8
  %218 = load i32, i32* @__IGB_TESTING, align 4
  %219 = load %struct.igb_adapter*, %struct.igb_adapter** %7, align 8
  %220 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %219, i32 0, i32 0
  %221 = call i32 @clear_bit(i32 %218, i32* %220)
  br label %222

222:                                              ; preds = %205, %179
  %223 = call i32 @msleep_interruptible(i32 4000)
  ret void
}

declare dso_local %struct.igb_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @igb_power_up_link(%struct.igb_adapter*) #1

declare dso_local i64 @igb_link_test(%struct.igb_adapter*, i64*) #1

declare dso_local i32 @igb_close(%struct.net_device*) #1

declare dso_local i32 @igb_reset(%struct.igb_adapter*) #1

declare dso_local i64 @igb_reg_test(%struct.igb_adapter*, i64*) #1

declare dso_local i64 @igb_eeprom_test(%struct.igb_adapter*, i64*) #1

declare dso_local i64 @igb_intr_test(%struct.igb_adapter*, i64*) #1

declare dso_local i64 @igb_loopback_test(%struct.igb_adapter*, i64*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @igb_open(%struct.net_device*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
