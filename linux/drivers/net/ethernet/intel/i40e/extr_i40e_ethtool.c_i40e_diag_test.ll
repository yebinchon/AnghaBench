; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_diag_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_diag_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_test = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ETH_TEST_FL_OFFLINE = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"offline testing starting\0A\00", align 1
@__I40E_TESTING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [101 x i8] c"Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\0A\00", align 1
@I40E_ETH_TEST_REG = common dso_local global i64 0, align 8
@I40E_ETH_TEST_EEPROM = common dso_local global i64 0, align 8
@I40E_ETH_TEST_INTR = common dso_local global i64 0, align 8
@I40E_ETH_TEST_LINK = common dso_local global i64 0, align 8
@ETH_TEST_FL_FAILED = common dso_local global i32 0, align 4
@__I40E_PF_RESET_REQUESTED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"online testing starting\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"testing finished\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_test*, i32*)* @i40e_diag_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_diag_test(%struct.net_device* %0, %struct.ethtool_test* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_test*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.i40e_netdev_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.i40e_pf*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_test* %1, %struct.ethtool_test** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.i40e_netdev_priv* %11, %struct.i40e_netdev_priv** %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @netif_running(%struct.net_device* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %7, align 8
  %15 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %9, align 8
  %19 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ETH_TEST_FL_OFFLINE, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %148

24:                                               ; preds = %3
  %25 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %26 = load i32, i32* @drv, align 4
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netif_info(%struct.i40e_pf* %25, i32 %26, %struct.net_device* %27, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @__I40E_TESTING, align 4
  %30 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %31 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @set_bit(i32 %29, i32 %32)
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %35 = call i64 @i40e_active_vfs(%struct.i40e_pf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %24
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %39 = call i64 @i40e_active_vmdqs(%struct.i40e_pf* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %69

41:                                               ; preds = %37, %24
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @dev_warn(i32* %45, i8* getelementptr inbounds ([101 x i8], [101 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32*, i32** %6, align 8
  %48 = load i64, i64* @I40E_ETH_TEST_REG, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 1, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* @I40E_ETH_TEST_EEPROM, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 1, i32* %52, align 4
  %53 = load i32*, i32** %6, align 8
  %54 = load i64, i64* @I40E_ETH_TEST_INTR, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 1, i32* %55, align 4
  %56 = load i32*, i32** %6, align 8
  %57 = load i64, i64* @I40E_ETH_TEST_LINK, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  store i32 1, i32* %58, align 4
  %59 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %60 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* @__I40E_TESTING, align 4
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @clear_bit(i32 %64, i32 %67)
  br label %176

69:                                               ; preds = %37
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = call i32 @i40e_close(%struct.net_device* %73)
  br label %80

75:                                               ; preds = %69
  %76 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %77 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %78 = call i32 @BIT(i32 %77)
  %79 = call i32 @i40e_do_reset(%struct.i40e_pf* %76, i32 %78, i32 1)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = load i32*, i32** %6, align 8
  %83 = load i64, i64* @I40E_ETH_TEST_LINK, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  %85 = call i64 @i40e_link_test(%struct.net_device* %81, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %89 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %87, %80
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = load i64, i64* @I40E_ETH_TEST_EEPROM, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = call i64 @i40e_eeprom_test(%struct.net_device* %94, i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %93
  %101 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %102 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %103 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 4
  br label %106

106:                                              ; preds = %100, %93
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = load i32*, i32** %6, align 8
  %109 = load i64, i64* @I40E_ETH_TEST_INTR, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = call i64 @i40e_intr_test(%struct.net_device* %107, i32* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %106
  %114 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %115 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %116 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %106
  %120 = load %struct.net_device*, %struct.net_device** %4, align 8
  %121 = load i32*, i32** %6, align 8
  %122 = load i64, i64* @I40E_ETH_TEST_REG, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = call i64 @i40e_reg_test(%struct.net_device* %120, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %119
  %127 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %128 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %126, %119
  %133 = load i32, i32* @__I40E_TESTING, align 4
  %134 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %135 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @clear_bit(i32 %133, i32 %136)
  %138 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %139 = load i32, i32* @__I40E_PF_RESET_REQUESTED, align 4
  %140 = call i32 @BIT(i32 %139)
  %141 = call i32 @i40e_do_reset(%struct.i40e_pf* %138, i32 %140, i32 1)
  %142 = load i32, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %132
  %145 = load %struct.net_device*, %struct.net_device** %4, align 8
  %146 = call i32 @i40e_open(%struct.net_device* %145)
  br label %147

147:                                              ; preds = %144, %132
  br label %175

148:                                              ; preds = %3
  %149 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %150 = load i32, i32* @drv, align 4
  %151 = load %struct.net_device*, %struct.net_device** %4, align 8
  %152 = call i32 @netif_info(%struct.i40e_pf* %149, i32 %150, %struct.net_device* %151, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = load i32*, i32** %6, align 8
  %155 = load i64, i64* @I40E_ETH_TEST_LINK, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  %157 = call i64 @i40e_link_test(%struct.net_device* %153, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %148
  %160 = load i32, i32* @ETH_TEST_FL_FAILED, align 4
  %161 = load %struct.ethtool_test*, %struct.ethtool_test** %5, align 8
  %162 = getelementptr inbounds %struct.ethtool_test, %struct.ethtool_test* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = or i32 %163, %160
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %148
  %166 = load i32*, i32** %6, align 8
  %167 = load i64, i64* @I40E_ETH_TEST_REG, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32 0, i32* %168, align 4
  %169 = load i32*, i32** %6, align 8
  %170 = load i64, i64* @I40E_ETH_TEST_EEPROM, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  store i32 0, i32* %171, align 4
  %172 = load i32*, i32** %6, align 8
  %173 = load i64, i64* @I40E_ETH_TEST_INTR, align 8
  %174 = getelementptr inbounds i32, i32* %172, i64 %173
  store i32 0, i32* %174, align 4
  br label %175

175:                                              ; preds = %165, %147
  br label %176

176:                                              ; preds = %175, %41
  %177 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %178 = load i32, i32* @drv, align 4
  %179 = load %struct.net_device*, %struct.net_device** %4, align 8
  %180 = call i32 @netif_info(%struct.i40e_pf* %177, i32 %178, %struct.net_device* %179, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.i40e_pf*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i64 @i40e_active_vfs(%struct.i40e_pf*) #1

declare dso_local i64 @i40e_active_vmdqs(%struct.i40e_pf*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @i40e_close(%struct.net_device*) #1

declare dso_local i32 @i40e_do_reset(%struct.i40e_pf*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @i40e_link_test(%struct.net_device*, i32*) #1

declare dso_local i64 @i40e_eeprom_test(%struct.net_device*, i32*) #1

declare dso_local i64 @i40e_intr_test(%struct.net_device*, i32*) #1

declare dso_local i64 @i40e_reg_test(%struct.net_device*, i32*) #1

declare dso_local i32 @i40e_open(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
