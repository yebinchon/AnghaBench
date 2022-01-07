; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_update_phy_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000e_update_phy_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.TYPE_6__, %struct.e1000_hw }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_5__ = type { i32 }

@IGP01E1000_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@HV_STATS_PAGE = common dso_local global i32 0, align 4
@IGP_PAGE_SHIFT = common dso_local global i32 0, align 4
@HV_SCC_UPPER = common dso_local global i32 0, align 4
@HV_SCC_LOWER = common dso_local global i32 0, align 4
@HV_ECOL_UPPER = common dso_local global i32 0, align 4
@HV_ECOL_LOWER = common dso_local global i32 0, align 4
@HV_MCC_UPPER = common dso_local global i32 0, align 4
@HV_MCC_LOWER = common dso_local global i32 0, align 4
@HV_LATECOL_UPPER = common dso_local global i32 0, align 4
@HV_LATECOL_LOWER = common dso_local global i32 0, align 4
@HV_COLC_UPPER = common dso_local global i32 0, align 4
@HV_COLC_LOWER = common dso_local global i32 0, align 4
@HV_DC_UPPER = common dso_local global i32 0, align 4
@HV_DC_LOWER = common dso_local global i32 0, align 4
@HV_TNCRS_UPPER = common dso_local global i32 0, align 4
@HV_TNCRS_LOWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000e_update_phy_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000e_update_phy_stats(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 1
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 3
  %12 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %11, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = bitcast %struct.e1000_hw* %13 to %struct.e1000_hw.3*
  %15 = call i64 %12(%struct.e1000_hw.3* %14)
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %4, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %255

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = load i32, i32* @IGP01E1000_PHY_PAGE_SELECT, align 4
  %25 = call i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw* %23, i32 %24, i32* %5)
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %246

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @HV_STATS_PAGE, align 4
  %32 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = icmp ne i32 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 2
  %40 = load i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.2*, i32)** %39, align 8
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = bitcast %struct.e1000_hw* %41 to %struct.e1000_hw.2*
  %43 = load i32, i32* @HV_STATS_PAGE, align 4
  %44 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = call i64 %40(%struct.e1000_hw.2* %42, i32 %45)
  store i64 %46, i64* %4, align 8
  %47 = load i64, i64* %4, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %35
  br label %246

50:                                               ; preds = %35
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.1*
  %59 = load i32, i32* @HV_SCC_UPPER, align 4
  %60 = call i64 %56(%struct.e1000_hw.1* %58, i32 %59, i32* %5)
  %61 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %62 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.1*
  %68 = load i32, i32* @HV_SCC_LOWER, align 4
  %69 = call i64 %65(%struct.e1000_hw.1* %67, i32 %68, i32* %5)
  store i64 %69, i64* %4, align 8
  %70 = load i64, i64* %4, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %51
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %75 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = add nsw i32 %77, %73
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %72, %51
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 1
  %84 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %83, align 8
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = bitcast %struct.e1000_hw* %85 to %struct.e1000_hw.1*
  %87 = load i32, i32* @HV_ECOL_UPPER, align 4
  %88 = call i64 %84(%struct.e1000_hw.1* %86, i32 %87, i32* %5)
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 1
  %93 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %92, align 8
  %94 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %95 = bitcast %struct.e1000_hw* %94 to %struct.e1000_hw.1*
  %96 = load i32, i32* @HV_ECOL_LOWER, align 4
  %97 = call i64 %93(%struct.e1000_hw.1* %95, i32 %96, i32* %5)
  store i64 %97, i64* %4, align 8
  %98 = load i64, i64* %4, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %79
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %103 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, %101
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %100, %79
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %111, align 8
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %114 = bitcast %struct.e1000_hw* %113 to %struct.e1000_hw.1*
  %115 = load i32, i32* @HV_MCC_UPPER, align 4
  %116 = call i64 %112(%struct.e1000_hw.1* %114, i32 %115, i32* %5)
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 1
  %121 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %120, align 8
  %122 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %123 = bitcast %struct.e1000_hw* %122 to %struct.e1000_hw.1*
  %124 = load i32, i32* @HV_MCC_LOWER, align 4
  %125 = call i64 %121(%struct.e1000_hw.1* %123, i32 %124, i32* %5)
  store i64 %125, i64* %4, align 8
  %126 = load i64, i64* %4, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %107
  %129 = load i32, i32* %5, align 4
  %130 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %131 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %129
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %128, %107
  %136 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %137 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %139, align 8
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %142 = bitcast %struct.e1000_hw* %141 to %struct.e1000_hw.1*
  %143 = load i32, i32* @HV_LATECOL_UPPER, align 4
  %144 = call i64 %140(%struct.e1000_hw.1* %142, i32 %143, i32* %5)
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 1
  %149 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %148, align 8
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %151 = bitcast %struct.e1000_hw* %150 to %struct.e1000_hw.1*
  %152 = load i32, i32* @HV_LATECOL_LOWER, align 4
  %153 = call i64 %149(%struct.e1000_hw.1* %151, i32 %152, i32* %5)
  store i64 %153, i64* %4, align 8
  %154 = load i64, i64* %4, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %163, label %156

156:                                              ; preds = %135
  %157 = load i32, i32* %5, align 4
  %158 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %159 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %157
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %156, %135
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 1
  %168 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %167, align 8
  %169 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %170 = bitcast %struct.e1000_hw* %169 to %struct.e1000_hw.1*
  %171 = load i32, i32* @HV_COLC_UPPER, align 4
  %172 = call i64 %168(%struct.e1000_hw.1* %170, i32 %171, i32* %5)
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %174 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %176, align 8
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %179 = bitcast %struct.e1000_hw* %178 to %struct.e1000_hw.1*
  %180 = load i32, i32* @HV_COLC_LOWER, align 4
  %181 = call i64 %177(%struct.e1000_hw.1* %179, i32 %180, i32* %5)
  store i64 %181, i64* %4, align 8
  %182 = load i64, i64* %4, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %189, label %184

184:                                              ; preds = %163
  %185 = load i32, i32* %5, align 4
  %186 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %187 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %186, i32 0, i32 1
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store i32 %185, i32* %188, align 8
  br label %189

189:                                              ; preds = %184, %163
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %191 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 1
  %194 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %193, align 8
  %195 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %196 = bitcast %struct.e1000_hw* %195 to %struct.e1000_hw.1*
  %197 = load i32, i32* @HV_DC_UPPER, align 4
  %198 = call i64 %194(%struct.e1000_hw.1* %196, i32 %197, i32* %5)
  %199 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %200 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 1
  %203 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %202, align 8
  %204 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %205 = bitcast %struct.e1000_hw* %204 to %struct.e1000_hw.1*
  %206 = load i32, i32* @HV_DC_LOWER, align 4
  %207 = call i64 %203(%struct.e1000_hw.1* %205, i32 %206, i32* %5)
  store i64 %207, i64* %4, align 8
  %208 = load i64, i64* %4, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %217, label %210

210:                                              ; preds = %189
  %211 = load i32, i32* %5, align 4
  %212 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %213 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, %211
  store i32 %216, i32* %214, align 8
  br label %217

217:                                              ; preds = %210, %189
  %218 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %219 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  %222 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %221, align 8
  %223 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %224 = bitcast %struct.e1000_hw* %223 to %struct.e1000_hw.1*
  %225 = load i32, i32* @HV_TNCRS_UPPER, align 4
  %226 = call i64 %222(%struct.e1000_hw.1* %224, i32 %225, i32* %5)
  %227 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %228 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 1
  %231 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %230, align 8
  %232 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %233 = bitcast %struct.e1000_hw* %232 to %struct.e1000_hw.1*
  %234 = load i32, i32* @HV_TNCRS_LOWER, align 4
  %235 = call i64 %231(%struct.e1000_hw.1* %233, i32 %234, i32* %5)
  store i64 %235, i64* %4, align 8
  %236 = load i64, i64* %4, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %245, label %238

238:                                              ; preds = %217
  %239 = load i32, i32* %5, align 4
  %240 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %241 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 5
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, %239
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %238, %217
  br label %246

246:                                              ; preds = %245, %49, %28
  %247 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %248 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 0
  %251 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %250, align 8
  %252 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %253 = bitcast %struct.e1000_hw* %252 to %struct.e1000_hw.0*
  %254 = call i32 %251(%struct.e1000_hw.0* %253)
  br label %255

255:                                              ; preds = %246, %18
  ret void
}

declare dso_local i64 @e1000e_read_phy_reg_mdic(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
