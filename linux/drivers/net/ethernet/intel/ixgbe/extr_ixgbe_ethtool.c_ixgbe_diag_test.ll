; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_diag_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.ixgbe_adapter = type { i32, i32, i32, %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i64 }

@hw = common dso_local global %struct.ixgbe_hw* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"Adapter removed - test blocked\0A\00", align 1
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@__IXGBE_TESTING = common dso_local global i32 0, align 4
@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"offline diagnostic is not supported when VFs are present\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"register testing starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"eeprom testing starting\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"interrupt testing starting\0A\00", align 1
@IXGBE_FLAG_VMDQ_ENABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"Skip MAC loopback diagnostic in VT mode\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"loopback testing starting\0A\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @ixgbe_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ixgbe_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbe_hw*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.ixgbe_adapter* %12, %struct.ixgbe_adapter** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 4
  %17 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @ixgbe_removed(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %3
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** @hw, align 8
  %23 = call i32 @e_err(%struct.ixgbe_hw* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = load i32*, i32** %6, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 1, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 1, i32* %27, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 1, i32* %29, align 4
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 1, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 4
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %35 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %36 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %262

39:                                               ; preds = %3
  %40 = load i32, i32* @__IXGBE_TESTING, align 4
  %41 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %41, i32 0, i32 2
  %43 = call i32 @set_bit(i32 %40, i32* %42)
  %44 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %232

49:                                               ; preds = %39
  %50 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %51 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %50, i32 0, i32 4
  store %struct.ixgbe_hw* %51, %struct.ixgbe_hw** %9, align 8
  %52 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %53 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %102

58:                                               ; preds = %49
  store i32 0, i32* %10, align 4
  br label %59

59:                                               ; preds = %98, %58
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %62 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %101

65:                                               ; preds = %59
  %66 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %67 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %65
  %76 = load %struct.net_device*, %struct.net_device** %4, align 8
  %77 = call i32 @netdev_warn(%struct.net_device* %76, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 1, i32* %79, align 4
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 1, i32* %81, align 4
  %82 = load i32*, i32** %6, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 1, i32* %83, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  store i32 1, i32* %85, align 4
  %86 = load i32*, i32** %6, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  store i32 1, i32* %87, align 4
  %88 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %89 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @__IXGBE_TESTING, align 4
  %94 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %95 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %94, i32 0, i32 2
  %96 = call i32 @clear_bit(i32 %93, i32* %95)
  br label %260

97:                                               ; preds = %65
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %59

101:                                              ; preds = %59
  br label %102

102:                                              ; preds = %101, %49
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %104 = call i32 @e_info(%struct.ixgbe_hw* %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %105 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %106 = load i32*, i32** %6, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = call i64 @ixgbe_link_test(%struct.ixgbe_adapter* %105, i32* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %112 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %110, %102
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = call i32 @ixgbe_close(%struct.net_device* %120)
  br label %125

122:                                              ; preds = %116
  %123 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %124 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %123)
  br label %125

125:                                              ; preds = %122, %119
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %127 = call i32 @e_info(%struct.ixgbe_hw* %126, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %128 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %129 = load i32*, i32** %6, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = call i64 @ixgbe_reg_test(%struct.ixgbe_adapter* %128, i32* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %135 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %136 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %125
  %140 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %141 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %140)
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %143 = call i32 @e_info(%struct.ixgbe_hw* %142, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %144 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %145 = load i32*, i32** %6, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = call i64 @ixgbe_eeprom_test(%struct.ixgbe_adapter* %144, i32* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %155

149:                                              ; preds = %139
  %150 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %151 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %152 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %150
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %149, %139
  %156 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %157 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %156)
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %159 = call i32 @e_info(%struct.ixgbe_hw* %158, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %160 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %161 = load i32*, i32** %6, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = call i64 @ixgbe_intr_test(%struct.ixgbe_adapter* %160, i32* %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %167 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %168 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %165, %155
  %172 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %173 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %176 = load i32, i32* @IXGBE_FLAG_VMDQ_ENABLED, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %171
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %182 = call i32 @e_info(%struct.ixgbe_hw* %181, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %183 = load i32*, i32** %6, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 3
  store i32 0, i32* %184, align 4
  br label %202

185:                                              ; preds = %171
  %186 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %187 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %186)
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %189 = call i32 @e_info(%struct.ixgbe_hw* %188, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %190 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %191 = load i32*, i32** %6, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 3
  %193 = call i64 @ixgbe_loopback_test(%struct.ixgbe_adapter* %190, i32* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %185
  %196 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %197 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %198 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = or i32 %199, %196
  store i32 %200, i32* %198, align 4
  br label %201

201:                                              ; preds = %195, %185
  br label %202

202:                                              ; preds = %201, %180
  %203 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %204 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %203)
  %205 = load i32, i32* @__IXGBE_TESTING, align 4
  %206 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %207 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %206, i32 0, i32 2
  %208 = call i32 @clear_bit(i32 %205, i32* %207)
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %202
  %212 = load %struct.net_device*, %struct.net_device** %4, align 8
  %213 = call i32 @ixgbe_open(%struct.net_device* %212)
  br label %231

214:                                              ; preds = %202
  %215 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %216 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 0
  %219 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %218, align 8
  %220 = icmp ne i32 (%struct.ixgbe_hw.0*)* %219, null
  br i1 %220, label %221, label %230

221:                                              ; preds = %214
  %222 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %223 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %225, align 8
  %227 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %9, align 8
  %228 = bitcast %struct.ixgbe_hw* %227 to %struct.ixgbe_hw.0*
  %229 = call i32 %226(%struct.ixgbe_hw.0* %228)
  br label %230

230:                                              ; preds = %221, %214
  br label %231

231:                                              ; preds = %230, %211
  br label %259

232:                                              ; preds = %39
  %233 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** @hw, align 8
  %234 = call i32 @e_info(%struct.ixgbe_hw* %233, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0))
  %235 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %236 = load i32*, i32** %6, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 4
  %238 = call i64 @ixgbe_link_test(%struct.ixgbe_adapter* %235, i32* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %246

240:                                              ; preds = %232
  %241 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %242 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %243 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %240, %232
  %247 = load i32*, i32** %6, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 0
  store i32 0, i32* %248, align 4
  %249 = load i32*, i32** %6, align 8
  %250 = getelementptr inbounds i32, i32* %249, i64 1
  store i32 0, i32* %250, align 4
  %251 = load i32*, i32** %6, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  store i32 0, i32* %252, align 4
  %253 = load i32*, i32** %6, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  store i32 0, i32* %254, align 4
  %255 = load i32, i32* @__IXGBE_TESTING, align 4
  %256 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %7, align 8
  %257 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %256, i32 0, i32 2
  %258 = call i32 @clear_bit(i32 %255, i32* %257)
  br label %259

259:                                              ; preds = %246, %231
  br label %260

260:                                              ; preds = %259, %75
  %261 = call i32 @msleep_interruptible(i32 4000)
  br label %262

262:                                              ; preds = %260, %21
  ret void
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @ixgbe_removed(i32) #1

declare dso_local i32 @e_err(%struct.ixgbe_hw*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @e_info(%struct.ixgbe_hw*, i8*) #1

declare dso_local i64 @ixgbe_link_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i32 @ixgbe_close(%struct.net_device*) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

declare dso_local i64 @ixgbe_reg_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i64 @ixgbe_eeprom_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i64 @ixgbe_intr_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i64 @ixgbe_loopback_test(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i32 @ixgbe_open(%struct.net_device*) #1

declare dso_local i32 @msleep_interruptible(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
