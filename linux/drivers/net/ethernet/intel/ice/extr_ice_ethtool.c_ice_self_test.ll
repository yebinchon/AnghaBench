; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_self_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_self_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.ice_netdev_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@__ICE_TESTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\0A\00", align 1
@ICE_ETH_TEST_REG = common dso_local global i64 0, align 8
@ICE_ETH_TEST_EEPROM = common dso_local global i64 0, align 8
@ICE_ETH_TEST_INTR = common dso_local global i64 0, align 8
@ICE_ETH_TEST_LOOP = common dso_local global i64 0, align 8
@ICE_ETH_TEST_LINK = common dso_local global i64 0, align 8
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Could not open device %s, err %d\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"testing finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @ice_self_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_self_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ice_netdev_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ice_pf*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ice_netdev_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ice_netdev_priv* %12, %struct.ice_netdev_priv** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_running(%struct.net_device* %13)
  store i32 %14, i32* %8, align 4
  %15 = load %struct.ice_netdev_priv*, %struct.ice_netdev_priv** %7, align 8
  %16 = getelementptr inbounds %struct.ice_netdev_priv, %struct.ice_netdev_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.ice_pf*, %struct.ice_pf** %18, align 8
  store %struct.ice_pf* %19, %struct.ice_pf** %9, align 8
  %20 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %159

25:                                               ; preds = %3
  %26 = load %struct.net_device*, %struct.net_device** %4, align 8
  %27 = call i32 @netdev_info(%struct.net_device* %26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @__ICE_TESTING, align 4
  %29 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %30 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @set_bit(i32 %28, i32 %31)
  %33 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %34 = call i64 @ice_active_vfs(%struct.ice_pf* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %67

36:                                               ; preds = %25
  %37 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %38 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @dev_warn(i32* %40, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32*, i32** %6, align 8
  %43 = load i64, i64* @ICE_ETH_TEST_REG, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 1, i32* %44, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = load i64, i64* @ICE_ETH_TEST_EEPROM, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  store i32 1, i32* %47, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i64, i64* @ICE_ETH_TEST_INTR, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 1, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i64, i64* @ICE_ETH_TEST_LOOP, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  store i32 1, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i64, i64* @ICE_ETH_TEST_LINK, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 1, i32* %56, align 4
  %57 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %58 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %59 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  %62 = load i32, i32* @__ICE_TESTING, align 4
  %63 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %64 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @clear_bit(i32 %62, i32 %65)
  br label %192

67:                                               ; preds = %25
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = call i32 @ice_stop(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = call i32 @ice_link_test(%struct.net_device* %74)
  %76 = load i32*, i32** %6, align 8
  %77 = load i64, i64* @ICE_ETH_TEST_LINK, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @ice_eeprom_test(%struct.net_device* %79)
  %81 = load i32*, i32** %6, align 8
  %82 = load i64, i64* @ICE_ETH_TEST_EEPROM, align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32 %80, i32* %83, align 4
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = call i32 @ice_intr_test(%struct.net_device* %84)
  %86 = load i32*, i32** %6, align 8
  %87 = load i64, i64* @ICE_ETH_TEST_INTR, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = call i32 @ice_loopback_test(%struct.net_device* %89)
  %91 = load i32*, i32** %6, align 8
  %92 = load i64, i64* @ICE_ETH_TEST_LOOP, align 8
  %93 = getelementptr inbounds i32, i32* %91, i64 %92
  store i32 %90, i32* %93, align 4
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = call i32 @ice_reg_test(%struct.net_device* %94)
  %96 = load i32*, i32** %6, align 8
  %97 = load i64, i64* @ICE_ETH_TEST_REG, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %95, i32* %98, align 4
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* @ICE_ETH_TEST_LINK, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %128, label %104

104:                                              ; preds = %73
  %105 = load i32*, i32** %6, align 8
  %106 = load i64, i64* @ICE_ETH_TEST_EEPROM, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %128, label %110

110:                                              ; preds = %104
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* @ICE_ETH_TEST_LOOP, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %128, label %116

116:                                              ; preds = %110
  %117 = load i32*, i32** %6, align 8
  %118 = load i64, i64* @ICE_ETH_TEST_INTR, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load i32*, i32** %6, align 8
  %124 = load i64, i64* @ICE_ETH_TEST_REG, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %122, %116, %110, %104, %73
  %129 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %130 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %122
  %135 = load i32, i32* @__ICE_TESTING, align 4
  %136 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %137 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @clear_bit(i32 %135, i32 %138)
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %134
  %143 = load %struct.net_device*, %struct.net_device** %4, align 8
  %144 = call i32 @ice_open(%struct.net_device* %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %157

147:                                              ; preds = %142
  %148 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %149 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  %153 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call i32 @dev_err(i32* %151, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %147, %142
  br label %158

158:                                              ; preds = %157, %134
  br label %191

159:                                              ; preds = %3
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = call i32 @netdev_info(%struct.net_device* %160, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %162 = load %struct.net_device*, %struct.net_device** %4, align 8
  %163 = call i32 @ice_link_test(%struct.net_device* %162)
  %164 = load i32*, i32** %6, align 8
  %165 = load i64, i64* @ICE_ETH_TEST_LINK, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  store i32 %163, i32* %166, align 4
  %167 = load i32*, i32** %6, align 8
  %168 = load i64, i64* @ICE_ETH_TEST_LINK, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %159
  %173 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %174 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %175 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %159
  %179 = load i32*, i32** %6, align 8
  %180 = load i64, i64* @ICE_ETH_TEST_REG, align 8
  %181 = getelementptr inbounds i32, i32* %179, i64 %180
  store i32 0, i32* %181, align 4
  %182 = load i32*, i32** %6, align 8
  %183 = load i64, i64* @ICE_ETH_TEST_EEPROM, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 0, i32* %184, align 4
  %185 = load i32*, i32** %6, align 8
  %186 = load i64, i64* @ICE_ETH_TEST_INTR, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32 0, i32* %187, align 4
  %188 = load i32*, i32** %6, align 8
  %189 = load i64, i64* @ICE_ETH_TEST_LOOP, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32 0, i32* %190, align 4
  br label %191

191:                                              ; preds = %178, %158
  br label %192

192:                                              ; preds = %191, %36
  %193 = load %struct.net_device*, %struct.net_device** %4, align 8
  %194 = call i32 @netdev_info(%struct.net_device* %193, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local %struct.ice_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @ice_active_vfs(%struct.ice_pf*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @ice_stop(%struct.net_device*) #1

declare dso_local i32 @ice_link_test(%struct.net_device*) #1

declare dso_local i32 @ice_eeprom_test(%struct.net_device*) #1

declare dso_local i32 @ice_intr_test(%struct.net_device*) #1

declare dso_local i32 @ice_loopback_test(%struct.net_device*) #1

declare dso_local i32 @ice_reg_test(%struct.net_device*) #1

declare dso_local i32 @ice_open(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
