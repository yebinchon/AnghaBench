; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_link_ksettings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_link_ksettings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_link_ksettings = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.xgbe_prv_data = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*, i64)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque
%struct.TYPE_5__ = type { i64, i64, i64, i64, %struct.ethtool_link_ksettings }

@advertising = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid phy address %hhu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"unsupported autoneg %hhu\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"unsupported speed %u\0A\00", align 1
@DUPLEX_FULL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"unsupported duplex %hhu\0A\00", align 1
@link = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"requested advertisement 0x%*pb, phy supported 0x%*pb\0A\00", align 1
@__ETHTOOL_LINK_MODE_MASK_NBITS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"unsupported requested advertisement\0A\00", align 1
@Autoneg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_link_ksettings*)* @xgbe_set_link_ksettings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_link_ksettings(%struct.net_device* %0, %struct.ethtool_link_ksettings* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_link_ksettings*, align 8
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.ethtool_link_ksettings*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_link_ksettings* %1, %struct.ethtool_link_ksettings** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %10)
  store %struct.xgbe_prv_data* %11, %struct.xgbe_prv_data** %6, align 8
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  store %struct.ethtool_link_ksettings* %14, %struct.ethtool_link_ksettings** %7, align 8
  %15 = load i32, i32* @advertising, align 4
  %16 = call i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32 %15)
  %17 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %18 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %8, align 8
  %21 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %26 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %24, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %2
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %31, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %198

39:                                               ; preds = %2
  %40 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @AUTONEG_ENABLE, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %39
  %47 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AUTONEG_DISABLE, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %46
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %198

62:                                               ; preds = %46, %39
  %63 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @AUTONEG_DISABLE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %102

69:                                               ; preds = %62
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %71 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32 (%struct.xgbe_prv_data.1*, i64)*, i32 (%struct.xgbe_prv_data.1*, i64)** %72, align 8
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %75 = bitcast %struct.xgbe_prv_data* %74 to %struct.xgbe_prv_data.1*
  %76 = load i64, i64* %8, align 8
  %77 = call i32 %73(%struct.xgbe_prv_data.1* %75, i64 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %69
  %80 = load %struct.net_device*, %struct.net_device** %4, align 8
  %81 = load i64, i64* %8, align 8
  %82 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %80, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i64 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %198

85:                                               ; preds = %69
  %86 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @DUPLEX_FULL, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %85
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %95 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i64 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %198

101:                                              ; preds = %85
  br label %102

102:                                              ; preds = %101, %62
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %104 = load i32, i32* @link, align 4
  %105 = load %struct.net_device*, %struct.net_device** %4, align 8
  %106 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %107 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %108 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %112 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %113 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @netif_dbg(%struct.xgbe_prv_data* %103, i32 %104, %struct.net_device* %105, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %106, i32 %110, i32 %111, i32 %115)
  %117 = load i32, i32* @advertising, align 4
  %118 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %119 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %123 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %127 = call i32 @bitmap_and(i32 %117, i32 %121, i32 %125, i32 %126)
  %128 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @AUTONEG_ENABLE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %102
  %135 = load i32, i32* @advertising, align 4
  %136 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %137 = call i64 @bitmap_empty(i32 %135, i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %134
  %140 = load %struct.net_device*, %struct.net_device** %4, align 8
  %141 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %140, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %3, align 4
  br label %198

144:                                              ; preds = %134, %102
  store i32 0, i32* %9, align 4
  %145 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %146 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %150 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 1
  store i64 %148, i64* %151, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %154 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 3
  store i64 %152, i64* %155, align 8
  %156 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %157 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %161 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 2
  store i64 %159, i64* %162, align 8
  %163 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %164 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* @advertising, align 4
  %168 = load i32, i32* @__ETHTOOL_LINK_MODE_MASK_NBITS, align 4
  %169 = call i32 @bitmap_copy(i32 %166, i32 %167, i32 %168)
  %170 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %5, align 8
  %171 = getelementptr inbounds %struct.ethtool_link_ksettings, %struct.ethtool_link_ksettings* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @AUTONEG_ENABLE, align 8
  %175 = icmp eq i64 %173, %174
  br i1 %175, label %176, label %180

176:                                              ; preds = %144
  %177 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %178 = load i32, i32* @Autoneg, align 4
  %179 = call i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings* %177, i32 %178)
  br label %184

180:                                              ; preds = %144
  %181 = load %struct.ethtool_link_ksettings*, %struct.ethtool_link_ksettings** %7, align 8
  %182 = load i32, i32* @Autoneg, align 4
  %183 = call i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings* %181, i32 %182)
  br label %184

184:                                              ; preds = %180, %176
  %185 = load %struct.net_device*, %struct.net_device** %4, align 8
  %186 = call i64 @netif_running(%struct.net_device* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %196

188:                                              ; preds = %184
  %189 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %190 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 0
  %192 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %191, align 8
  %193 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %194 = bitcast %struct.xgbe_prv_data* %193 to %struct.xgbe_prv_data.0*
  %195 = call i32 %192(%struct.xgbe_prv_data.0* %194)
  store i32 %195, i32* %9, align 4
  br label %196

196:                                              ; preds = %188, %184
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %3, align 4
  br label %198

198:                                              ; preds = %196, %139, %92, %79, %53, %30
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__ETHTOOL_DECLARE_LINK_MODE_MASK(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, %struct.net_device*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_and(i32, i32, i32, i32) #1

declare dso_local i64 @bitmap_empty(i32, i32) #1

declare dso_local i32 @bitmap_copy(i32, i32, i32) #1

declare dso_local i32 @XGBE_SET_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i32 @XGBE_CLR_ADV(%struct.ethtool_link_ksettings*, i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
