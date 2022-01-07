; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i64, i64 }
%struct.ethtool_eeprom = type { i32, i32 }
%struct.xgbe_sfp_eeprom = type { i32 }

@XGBE_SFP_EEPROM_MAX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XGBE_PORT_MODE_SFP = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"I2C error setting SFP MUX\0A\00", align 1
@XGBE_SFP_SERIAL_ID_ADDRESS = common dso_local global i32 0, align 4
@XGBE_SFP_EEPROM_BASE_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"I2C error reading SFP EEPROM\0A\00", align 1
@XGBE_SFP_DIAG_INFO_ADDRESS = common dso_local global i32 0, align 4
@XGBE_SFP_EEPROM_DIAG_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"I2C error reading SFP DIAGS\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, %struct.ethtool_eeprom*, i64*)* @xgbe_phy_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_module_eeprom(%struct.xgbe_prv_data* %0, %struct.ethtool_eeprom* %1, i64* %2) #0 {
  %4 = alloca %struct.xgbe_prv_data*, align 8
  %5 = alloca %struct.ethtool_eeprom*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.xgbe_phy_data*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.xgbe_sfp_eeprom*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %4, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %5, align 8
  store i64* %2, i64** %6, align 8
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 1
  %18 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %17, align 8
  store %struct.xgbe_phy_data* %18, %struct.xgbe_phy_data** %7, align 8
  %19 = load i32, i32* @XGBE_SFP_EEPROM_MAX, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  %23 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %3
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %15, align 4
  br label %171

33:                                               ; preds = %3
  %34 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %38 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = add i32 %36, %39
  %41 = load i32, i32* @XGBE_SFP_EEPROM_MAX, align 4
  %42 = icmp ugt i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %33
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %15, align 4
  br label %171

46:                                               ; preds = %33
  %47 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %7, align 8
  %48 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @XGBE_PORT_MODE_SFP, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @ENXIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %15, align 4
  br label %171

55:                                               ; preds = %46
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %57 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @netif_running(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %55
  %62 = load i32, i32* @EIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %15, align 4
  br label %171

64:                                               ; preds = %55
  %65 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %7, align 8
  %66 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %15, align 4
  br label %171

72:                                               ; preds = %64
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %74 = call i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data* %73)
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %15, align 4
  br label %171

80:                                               ; preds = %72
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %82 = call i32 @xgbe_phy_sfp_get_mux(%struct.xgbe_prv_data* %81)
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %87 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @netdev_err(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @EIO, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %15, align 4
  br label %168

92:                                               ; preds = %80
  store i64 0, i64* %8, align 8
  %93 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %94 = load i32, i32* @XGBE_SFP_SERIAL_ID_ADDRESS, align 4
  %95 = load i32, i32* @XGBE_SFP_EEPROM_BASE_LEN, align 4
  %96 = call i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data* %93, i32 %94, i64* %8, i32 8, i64* %22, i32 %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %101 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @netdev_err(i32 %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %15, align 4
  br label %165

106:                                              ; preds = %92
  %107 = bitcast i64* %22 to %struct.xgbe_sfp_eeprom*
  store %struct.xgbe_sfp_eeprom* %107, %struct.xgbe_sfp_eeprom** %11, align 8
  %108 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %11, align 8
  %109 = call i64 @XGBE_SFP_DIAGS_SUPPORTED(%struct.xgbe_sfp_eeprom* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %129

111:                                              ; preds = %106
  store i64 0, i64* %8, align 8
  %112 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %113 = load i32, i32* @XGBE_SFP_DIAG_INFO_ADDRESS, align 4
  %114 = load i32, i32* @XGBE_SFP_EEPROM_BASE_LEN, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %22, i64 %115
  %117 = load i32, i32* @XGBE_SFP_EEPROM_DIAG_LEN, align 4
  %118 = call i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data* %112, i32 %113, i64* %8, i32 8, i64* %116, i32 %117)
  store i32 %118, i32* %15, align 4
  %119 = load i32, i32* %15, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %111
  %122 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %123 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @netdev_err(i32 %124, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %15, align 4
  br label %165

128:                                              ; preds = %111
  br label %129

129:                                              ; preds = %128, %106
  store i32 0, i32* %12, align 4
  %130 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %131 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %13, align 4
  br label %133

133:                                              ; preds = %159, %129
  %134 = load i32, i32* %12, align 4
  %135 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %136 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %164

139:                                              ; preds = %133
  %140 = load i32, i32* %13, align 4
  %141 = load i32, i32* @XGBE_SFP_EEPROM_BASE_LEN, align 4
  %142 = icmp uge i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %139
  %144 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %11, align 8
  %145 = call i64 @XGBE_SFP_DIAGS_SUPPORTED(%struct.xgbe_sfp_eeprom* %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %143
  br label %164

148:                                              ; preds = %143, %139
  %149 = load i32, i32* %13, align 4
  %150 = zext i32 %149 to i64
  %151 = getelementptr inbounds i64, i64* %22, i64 %150
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %6, align 8
  %154 = load i32, i32* %12, align 4
  %155 = zext i32 %154 to i64
  %156 = getelementptr inbounds i64, i64* %153, i64 %155
  store i64 %152, i64* %156, align 8
  %157 = load i32, i32* %14, align 4
  %158 = add i32 %157, -1
  store i32 %158, i32* %14, align 4
  br label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %12, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* %13, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %133

164:                                              ; preds = %147, %133
  br label %165

165:                                              ; preds = %164, %121, %99
  %166 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %167 = call i32 @xgbe_phy_sfp_put_mux(%struct.xgbe_prv_data* %166)
  br label %168

168:                                              ; preds = %165, %85
  %169 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %4, align 8
  %170 = call i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data* %169)
  br label %171

171:                                              ; preds = %168, %77, %69, %61, %52, %43, %30
  %172 = load i32, i32* %14, align 4
  %173 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %5, align 8
  %174 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = sub i32 %175, %172
  store i32 %176, i32* %174, align 4
  %177 = load i32, i32* %15, align 4
  %178 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %178)
  ret i32 %177
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @netif_running(i32) #2

declare dso_local i32 @xgbe_phy_get_comm_ownership(%struct.xgbe_prv_data*) #2

declare dso_local i32 @xgbe_phy_sfp_get_mux(%struct.xgbe_prv_data*) #2

declare dso_local i32 @netdev_err(i32, i8*) #2

declare dso_local i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data*, i32, i64*, i32, i64*, i32) #2

declare dso_local i64 @XGBE_SFP_DIAGS_SUPPORTED(%struct.xgbe_sfp_eeprom*) #2

declare dso_local i32 @xgbe_phy_sfp_put_mux(%struct.xgbe_prv_data*) #2

declare dso_local i32 @xgbe_phy_put_comm_ownership(%struct.xgbe_prv_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
