; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_82xx_get_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_82xx_get_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_hardware_context*, %struct.TYPE_4__*, i32 }
%struct.qlcnic_hardware_context = type { i64, i32, i32, i64, i8*, i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, i8*, i32, i32, i64 }

@QLCNIC_GBE = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_10baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_100baseT_Full = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Half = common dso_local global i64 0, align 8
@SUPPORTED_1000baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_100baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Half = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Full = common dso_local global i64 0, align 8
@QLCNIC_XGBE = common dso_local global i64 0, align 8
@QLCNIC_PORT_MODE_ADDR = common dso_local global i32 0, align 4
@QLCNIC_PORT_MODE_802_3_AP = common dso_local global i64 0, align 8
@SUPPORTED_10000baseT_Full = common dso_local global i64 0, align 8
@ADVERTISED_10000baseT_Full = common dso_local global i64 0, align 8
@P3P_LINK_SPEED_MHZ = common dso_local global i64 0, align 8
@SPEED_UNKNOWN = common dso_local global i64 0, align 8
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i8* null, align 8
@EIO = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i64 0, align 8
@ADVERTISED_Autoneg = common dso_local global i64 0, align 8
@SUPPORTED_TP = common dso_local global i64 0, align 8
@ADVERTISED_TP = common dso_local global i64 0, align 8
@PORT_TP = common dso_local global i8* null, align 8
@SUPPORTED_MII = common dso_local global i64 0, align 8
@ADVERTISED_MII = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i8* null, align 8
@SUPPORTED_FIBRE = common dso_local global i64 0, align 8
@ADVERTISED_FIBRE = common dso_local global i64 0, align 8
@PORT_FIBRE = common dso_local global i8* null, align 8
@AUTONEG_ENABLE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Unsupported board model %d\0A\00", align 1
@PORT_OTHER = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.ethtool_link_ksettings*)* @qlcnic_82xx_get_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_82xx_get_link_ksettings(%struct.qlcnic_adapter* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.qlcnic_hardware_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 0
  %17 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %16, align 8
  store %struct.qlcnic_hardware_context* %17, %struct.qlcnic_hardware_context** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %19 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %11, align 4
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 0
  %23 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %22, align 8
  %24 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QLCNIC_GBE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %71

28:                                               ; preds = %2
  %29 = load i64, i64* @SUPPORTED_10baseT_Half, align 8
  %30 = load i64, i64* @SUPPORTED_10baseT_Full, align 8
  %31 = or i64 %29, %30
  %32 = load i64, i64* @SUPPORTED_100baseT_Half, align 8
  %33 = or i64 %31, %32
  %34 = load i64, i64* @SUPPORTED_100baseT_Full, align 8
  %35 = or i64 %33, %34
  %36 = load i64, i64* @SUPPORTED_1000baseT_Half, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* @SUPPORTED_1000baseT_Full, align 8
  %39 = or i64 %37, %38
  store i64 %39, i64* %12, align 8
  %40 = load i64, i64* @ADVERTISED_100baseT_Half, align 8
  %41 = load i64, i64* @ADVERTISED_100baseT_Full, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* @ADVERTISED_1000baseT_Half, align 8
  %44 = or i64 %42, %43
  %45 = load i64, i64* @ADVERTISED_1000baseT_Full, align 8
  %46 = or i64 %44, %45
  store i64 %46, i64* %13, align 8
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 0
  %49 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %48, align 8
  %50 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 4
  store i64 %51, i64* %54, align 8
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %55, i32 0, i32 0
  %57 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %56, align 8
  %58 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %57, i32 0, i32 6
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %61 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store i32 %59, i32* %62, align 4
  %63 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %63, i32 0, i32 0
  %65 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %64, align 8
  %66 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  br label %157

71:                                               ; preds = %2
  %72 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %73 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %72, i32 0, i32 0
  %74 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %73, align 8
  %75 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @QLCNIC_XGBE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %153

79:                                               ; preds = %71
  store i64 0, i64* %14, align 8
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %81 = load i32, i32* @QLCNIC_PORT_MODE_ADDR, align 4
  %82 = call i64 @QLCRD32(%struct.qlcnic_adapter* %80, i32 %81, i32* %10)
  store i64 %82, i64* %14, align 8
  %83 = load i64, i64* %14, align 8
  %84 = load i64, i64* @QLCNIC_PORT_MODE_802_3_AP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %79
  %87 = load i64, i64* @SUPPORTED_1000baseT_Full, align 8
  store i64 %87, i64* %12, align 8
  %88 = load i64, i64* @ADVERTISED_1000baseT_Full, align 8
  store i64 %88, i64* %13, align 8
  br label %92

89:                                               ; preds = %79
  %90 = load i64, i64* @SUPPORTED_10000baseT_Full, align 8
  store i64 %90, i64* %12, align 8
  %91 = load i64, i64* @ADVERTISED_10000baseT_Full, align 8
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @netif_running(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %140

98:                                               ; preds = %92
  %99 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %100 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %140

103:                                              ; preds = %98
  %104 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %105 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %104, i32 0, i32 8
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @P3P_LINK_SPEED_REG(i32 %110)
  %112 = call i64 @QLCRD32(%struct.qlcnic_adapter* %109, i32 %111, i32* %10)
  store i64 %112, i64* %8, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i64, i64* %8, align 8
  %115 = call i64 @P3P_LINK_SPEED_VAL(i32 %113, i64 %114)
  store i64 %115, i64* %7, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load i64, i64* @P3P_LINK_SPEED_MHZ, align 8
  %118 = mul nsw i64 %116, %117
  %119 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %120 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %119, i32 0, i32 7
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %108, %103
  %122 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %123 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 4
  store i64 %124, i64* %127, align 8
  %128 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %129 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %128, i32 0, i32 4
  %130 = load i8*, i8** %129, align 8
  %131 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %132 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  store i8* %130, i8** %133, align 8
  %134 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %135 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %134, i32 0, i32 6
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %138 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  br label %158

140:                                              ; preds = %98, %92
  %141 = load i64, i64* @SPEED_UNKNOWN, align 8
  %142 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %143 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 4
  store i64 %141, i64* %144, align 8
  %145 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %146 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %147 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 4
  %149 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %150 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %151 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 1
  store i8* %149, i8** %152, align 8
  br label %156

153:                                              ; preds = %71
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %3, align 4
  br label %359

156:                                              ; preds = %140
  br label %157

157:                                              ; preds = %156, %28
  br label %158

158:                                              ; preds = %157, %121
  %159 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %160 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %159, i32 0, i32 0
  %161 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %160, align 8
  %162 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %165 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %164, i32 0, i32 1
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 2
  store i32 %163, i32* %166, align 8
  %167 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %168 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %167, i32 0, i32 0
  %169 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %168, align 8
  %170 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 8
  switch i32 %171, label %308 [
    i32 129, label %172
    i32 133, label %172
    i32 132, label %172
    i32 140, label %179
    i32 139, label %179
    i32 141, label %179
    i32 130, label %198
    i32 128, label %198
    i32 131, label %198
    i32 137, label %213
    i32 138, label %213
    i32 136, label %213
    i32 134, label %233
    i32 135, label %248
  ]

172:                                              ; preds = %158, %158, %158
  %173 = load i64, i64* @SUPPORTED_Autoneg, align 8
  %174 = load i64, i64* %12, align 8
  %175 = or i64 %174, %173
  store i64 %175, i64* %12, align 8
  %176 = load i64, i64* @ADVERTISED_Autoneg, align 8
  %177 = load i64, i64* %13, align 8
  %178 = or i64 %177, %176
  store i64 %178, i64* %13, align 8
  br label %179

179:                                              ; preds = %158, %158, %158, %172
  %180 = load i64, i64* @SUPPORTED_TP, align 8
  %181 = load i64, i64* %12, align 8
  %182 = or i64 %181, %180
  store i64 %182, i64* %12, align 8
  %183 = load i64, i64* @ADVERTISED_TP, align 8
  %184 = load i64, i64* %13, align 8
  %185 = or i64 %184, %183
  store i64 %185, i64* %13, align 8
  %186 = load i8*, i8** @PORT_TP, align 8
  %187 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %188 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i8* %186, i8** %189, align 8
  %190 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %191 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %190, i32 0, i32 0
  %192 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %191, align 8
  %193 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %192, i32 0, i32 4
  %194 = load i8*, i8** %193, align 8
  %195 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %196 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  store i8* %194, i8** %197, align 8
  br label %321

198:                                              ; preds = %158, %158, %158
  %199 = load i64, i64* @SUPPORTED_MII, align 8
  %200 = load i64, i64* %12, align 8
  %201 = or i64 %200, %199
  store i64 %201, i64* %12, align 8
  %202 = load i64, i64* @ADVERTISED_MII, align 8
  %203 = load i64, i64* %13, align 8
  %204 = or i64 %203, %202
  store i64 %204, i64* %13, align 8
  %205 = load i8*, i8** @PORT_MII, align 8
  %206 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %207 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  store i8* %205, i8** %208, align 8
  %209 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %210 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %211 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %210, i32 0, i32 1
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 1
  store i8* %209, i8** %212, align 8
  br label %321

213:                                              ; preds = %158, %158, %158
  %214 = load i64, i64* @ADVERTISED_TP, align 8
  %215 = load i64, i64* %13, align 8
  %216 = or i64 %215, %214
  store i64 %216, i64* %13, align 8
  %217 = load i64, i64* @SUPPORTED_TP, align 8
  %218 = load i64, i64* %12, align 8
  %219 = or i64 %218, %217
  store i64 %219, i64* %12, align 8
  %220 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %221 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = call i64 @netif_running(i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %213
  %226 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %227 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br label %230

230:                                              ; preds = %225, %213
  %231 = phi i1 [ false, %213 ], [ %229, %225 ]
  %232 = zext i1 %231 to i32
  store i32 %232, i32* %9, align 4
  br label %233

233:                                              ; preds = %158, %230
  %234 = load i64, i64* @SUPPORTED_FIBRE, align 8
  %235 = load i64, i64* %12, align 8
  %236 = or i64 %235, %234
  store i64 %236, i64* %12, align 8
  %237 = load i64, i64* @ADVERTISED_FIBRE, align 8
  %238 = load i64, i64* %13, align 8
  %239 = or i64 %238, %237
  store i64 %239, i64* %13, align 8
  %240 = load i8*, i8** @PORT_FIBRE, align 8
  %241 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %242 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  store i8* %240, i8** %243, align 8
  %244 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %245 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %246 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %245, i32 0, i32 1
  %247 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %246, i32 0, i32 1
  store i8* %244, i8** %247, align 8
  br label %321

248:                                              ; preds = %158
  %249 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %250 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %249, i32 0, i32 0
  %251 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %250, align 8
  %252 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @QLCNIC_XGBE, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %288

256:                                              ; preds = %248
  %257 = load i8*, i8** @AUTONEG_DISABLE, align 8
  %258 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %259 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %258, i32 0, i32 1
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 1
  store i8* %257, i8** %260, align 8
  %261 = load i64, i64* @SUPPORTED_FIBRE, align 8
  %262 = load i64, i64* @SUPPORTED_TP, align 8
  %263 = or i64 %261, %262
  %264 = load i64, i64* %12, align 8
  %265 = or i64 %264, %263
  store i64 %265, i64* %12, align 8
  %266 = load i64, i64* @ADVERTISED_FIBRE, align 8
  %267 = load i64, i64* @ADVERTISED_TP, align 8
  %268 = or i64 %266, %267
  %269 = load i64, i64* %13, align 8
  %270 = or i64 %269, %268
  store i64 %270, i64* %13, align 8
  %271 = load i8*, i8** @PORT_FIBRE, align 8
  %272 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %273 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %273, i32 0, i32 0
  store i8* %271, i8** %274, align 8
  %275 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %276 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = call i64 @netif_running(i32 %277)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %256
  %281 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %6, align 8
  %282 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br label %285

285:                                              ; preds = %280, %256
  %286 = phi i1 [ false, %256 ], [ %284, %280 ]
  %287 = zext i1 %286 to i32
  store i32 %287, i32* %9, align 4
  br label %307

288:                                              ; preds = %248
  %289 = load i8*, i8** @AUTONEG_ENABLE, align 8
  %290 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %291 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %291, i32 0, i32 1
  store i8* %289, i8** %292, align 8
  %293 = load i64, i64* @SUPPORTED_TP, align 8
  %294 = load i64, i64* @SUPPORTED_Autoneg, align 8
  %295 = or i64 %293, %294
  %296 = load i64, i64* %12, align 8
  %297 = or i64 %296, %295
  store i64 %297, i64* %12, align 8
  %298 = load i64, i64* @ADVERTISED_TP, align 8
  %299 = load i64, i64* @ADVERTISED_Autoneg, align 8
  %300 = or i64 %298, %299
  %301 = load i64, i64* %13, align 8
  %302 = or i64 %301, %300
  store i64 %302, i64* %13, align 8
  %303 = load i8*, i8** @PORT_TP, align 8
  %304 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %305 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %304, i32 0, i32 1
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 0
  store i8* %303, i8** %306, align 8
  br label %307

307:                                              ; preds = %288, %285
  br label %321

308:                                              ; preds = %158
  %309 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %310 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %309, i32 0, i32 1
  %311 = load %struct.TYPE_4__*, %struct.TYPE_4__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 0
  %313 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %314 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %313, i32 0, i32 0
  %315 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %314, align 8
  %316 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = call i32 @dev_err(i32* %312, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %317)
  %319 = load i32, i32* @EIO, align 4
  %320 = sub nsw i32 0, %319
  store i32 %320, i32* %3, align 4
  br label %359

321:                                              ; preds = %307, %233, %198, %179
  %322 = load i32, i32* %9, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %324, label %346

324:                                              ; preds = %321
  %325 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %326 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %325, i32 0, i32 0
  %327 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %326, align 8
  %328 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 4
  switch i32 %329, label %340 [
    i32 145, label %330
    i32 146, label %330
    i32 148, label %330
    i32 147, label %330
    i32 143, label %335
    i32 142, label %335
    i32 144, label %335
  ]

330:                                              ; preds = %324, %324, %324, %324
  %331 = load i8*, i8** @PORT_FIBRE, align 8
  %332 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %333 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %332, i32 0, i32 1
  %334 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %333, i32 0, i32 0
  store i8* %331, i8** %334, align 8
  br label %345

335:                                              ; preds = %324, %324, %324
  %336 = load i8*, i8** @PORT_TP, align 8
  %337 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %338 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %337, i32 0, i32 1
  %339 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %338, i32 0, i32 0
  store i8* %336, i8** %339, align 8
  br label %345

340:                                              ; preds = %324
  %341 = load i8*, i8** @PORT_OTHER, align 8
  %342 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %343 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %343, i32 0, i32 0
  store i8* %341, i8** %344, align 8
  br label %345

345:                                              ; preds = %340, %335, %330
  br label %346

346:                                              ; preds = %345, %321
  %347 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %348 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load i64, i64* %12, align 8
  %352 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %350, i64 %351)
  %353 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %354 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 8
  %357 = load i64, i64* %13, align 8
  %358 = call i32 @ethtool_convert_legacy_u32_to_link_mode(i32 %356, i64 %357)
  store i32 0, i32* %3, align 4
  br label %359

359:                                              ; preds = %346, %308, %153
  %360 = load i32, i32* %3, align 4
  ret i32 %360
}

declare dso_local i64 @QLCRD32(%struct.qlcnic_adapter*, i32, i32*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @P3P_LINK_SPEED_REG(i32) #1

declare dso_local i64 @P3P_LINK_SPEED_VAL(i32, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @ethtool_convert_legacy_u32_to_link_mode(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
