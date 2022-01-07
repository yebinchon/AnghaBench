; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_diag_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.e1000_adapter = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i32, i32 }

@__E1000_TESTING = common dso_local global i32 0, align 4
@FLAG_HAS_AMT = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @e1000_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %12)
  store %struct.e1000_adapter* %13, %struct.e1000_adapter** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @netif_running(%struct.net_device* %14)
  store i32 %15, i32* %11, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pm_runtime_get_sync(i32 %19)
  %21 = load i32, i32* @__E1000_TESTING, align 4
  %22 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %23 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %22, i32 0, i32 1
  %24 = call i32 @set_bit(i32 %21, i32* %23)
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %50, label %27

27:                                               ; preds = %3
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FLAG_HAS_AMT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %36 = call i32 @e1000e_get_hw_control(%struct.e1000_adapter* %35)
  br label %37

37:                                               ; preds = %34, %27
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %39 = call i32 @e1000e_power_up_phy(%struct.e1000_adapter* %38)
  %40 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %41 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %45 = call i32 @e1000e_reset(%struct.e1000_adapter* %44)
  %46 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %47 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %50

50:                                               ; preds = %37, %3
  %51 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %182

56:                                               ; preds = %50
  %57 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %58 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %63 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %9, align 8
  %67 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %68 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %10, align 8
  %72 = call i32 @e_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %56
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = call i32 @e1000e_close(%struct.net_device* %76)
  br label %78

78:                                               ; preds = %75, %56
  %79 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = call i64 @e1000_reg_test(%struct.e1000_adapter* %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %78
  %85 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %86 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %78
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %92 = call i32 @e1000e_reset(%struct.e1000_adapter* %91)
  %93 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  %96 = call i64 @e1000_eeprom_test(%struct.e1000_adapter* %93, i32* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %90
  %99 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %100 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %101 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %98, %90
  %105 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %106 = call i32 @e1000e_reset(%struct.e1000_adapter* %105)
  %107 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 2
  %110 = call i64 @e1000_intr_test(%struct.e1000_adapter* %107, i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %114 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %113
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %104
  %119 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %120 = call i32 @e1000e_reset(%struct.e1000_adapter* %119)
  %121 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %122 = load i32*, i32** %6, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 3
  %124 = call i64 @e1000_loopback_test(%struct.e1000_adapter* %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %118
  %127 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %128 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %118
  %133 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %134 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  store i32 1, i32* %136, align 8
  %137 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %138 = call i32 @e1000e_reset(%struct.e1000_adapter* %137)
  %139 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %140 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  store i32 0, i32* %142, align 8
  %143 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 4
  %146 = call i64 @e1000_link_test(%struct.e1000_adapter* %143, i32* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %132
  %149 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %150 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %151 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %149
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %132
  %155 = load i32, i32* %8, align 4
  %156 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %157 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 4
  %160 = load i8*, i8** %9, align 8
  %161 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %162 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i8* %160, i8** %164, align 8
  %165 = load i8*, i8** %10, align 8
  %166 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %167 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %166, i32 0, i32 2
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  store i8* %165, i8** %169, align 8
  %170 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %171 = call i32 @e1000e_reset(%struct.e1000_adapter* %170)
  %172 = load i32, i32* @__E1000_TESTING, align 4
  %173 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %174 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %173, i32 0, i32 1
  %175 = call i32 @clear_bit(i32 %172, i32* %174)
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %154
  %179 = load %struct.net_device*, %struct.net_device** %4, align 8
  %180 = call i32 @e1000e_open(%struct.net_device* %179)
  br label %181

181:                                              ; preds = %178, %154
  br label %208

182:                                              ; preds = %50
  %183 = call i32 @e_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %184 = load i32*, i32** %6, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  store i32 0, i32* %185, align 4
  %186 = load i32*, i32** %6, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  store i32 0, i32* %187, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 2
  store i32 0, i32* %189, align 4
  %190 = load i32*, i32** %6, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  store i32 0, i32* %191, align 4
  %192 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %193 = load i32*, i32** %6, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 4
  %195 = call i64 @e1000_link_test(%struct.e1000_adapter* %192, i32* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %182
  %198 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %199 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %200 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %197, %182
  %204 = load i32, i32* @__E1000_TESTING, align 4
  %205 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %206 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %205, i32 0, i32 1
  %207 = call i32 @clear_bit(i32 %204, i32* %206)
  br label %208

208:                                              ; preds = %203, %181
  %209 = load i32, i32* %11, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %208
  %212 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %213 = call i32 @e1000e_reset(%struct.e1000_adapter* %212)
  %214 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %215 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* @FLAG_HAS_AMT, align 4
  %218 = and i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %223

220:                                              ; preds = %211
  %221 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %222 = call i32 @e1000e_release_hw_control(%struct.e1000_adapter* %221)
  br label %223

223:                                              ; preds = %220, %211
  br label %224

224:                                              ; preds = %223, %208
  %225 = call i32 @msleep_interruptible(i32 4000)
  %226 = load %struct.net_device*, %struct.net_device** %4, align 8
  %227 = getelementptr inbounds %struct.net_device, %struct.net_device* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @pm_runtime_put_sync(i32 %229)
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @e1000e_get_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_power_up_phy(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @e_info(i8*) #1

declare dso_local i32 @e1000e_close(%struct.net_device*) #1

declare dso_local i64 @e1000_reg_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_eeprom_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_intr_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_loopback_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i64 @e1000_link_test(%struct.e1000_adapter*, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @e1000e_open(%struct.net_device*) #1

declare dso_local i32 @e1000e_release_hw_control(%struct.e1000_adapter*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
