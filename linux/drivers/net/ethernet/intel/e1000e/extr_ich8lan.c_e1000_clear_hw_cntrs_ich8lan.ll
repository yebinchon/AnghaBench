; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_clear_hw_cntrs_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_clear_hw_cntrs_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque

@ALGNERRC = common dso_local global i32 0, align 4
@RXERRC = common dso_local global i32 0, align 4
@TNCRS = common dso_local global i32 0, align 4
@CEXTERR = common dso_local global i32 0, align 4
@TSCTC = common dso_local global i32 0, align 4
@TSCTFC = common dso_local global i32 0, align 4
@MGTPRC = common dso_local global i32 0, align 4
@MGTPDC = common dso_local global i32 0, align 4
@MGTPTC = common dso_local global i32 0, align 4
@IAC = common dso_local global i32 0, align 4
@ICRXOC = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@e1000_phy_82579 = common dso_local global i64 0, align 8
@e1000_phy_i217 = common dso_local global i64 0, align 8
@e1000_phy_82577 = common dso_local global i64 0, align 8
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*)* @e1000_clear_hw_cntrs_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_clear_hw_cntrs_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %5 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %6 = call i32 @e1000e_clear_hw_cntrs_base(%struct.e1000_hw* %5)
  %7 = load i32, i32* @ALGNERRC, align 4
  %8 = call i32 @er32(i32 %7)
  %9 = load i32, i32* @RXERRC, align 4
  %10 = call i32 @er32(i32 %9)
  %11 = load i32, i32* @TNCRS, align 4
  %12 = call i32 @er32(i32 %11)
  %13 = load i32, i32* @CEXTERR, align 4
  %14 = call i32 @er32(i32 %13)
  %15 = load i32, i32* @TSCTC, align 4
  %16 = call i32 @er32(i32 %15)
  %17 = load i32, i32* @TSCTFC, align 4
  %18 = call i32 @er32(i32 %17)
  %19 = load i32, i32* @MGTPRC, align 4
  %20 = call i32 @er32(i32 %19)
  %21 = load i32, i32* @MGTPDC, align 4
  %22 = call i32 @er32(i32 %21)
  %23 = load i32, i32* @MGTPTC, align 4
  %24 = call i32 @er32(i32 %23)
  %25 = load i32, i32* @IAC, align 4
  %26 = call i32 @er32(i32 %25)
  %27 = load i32, i32* @ICRXOC, align 4
  %28 = call i32 @er32(i32 %27)
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_phy_82578, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %56, label %35

35:                                               ; preds = %1
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @e1000_phy_82579, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %35
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @e1000_phy_i217, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %51 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @e1000_phy_82577, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %219

56:                                               ; preds = %49, %42, %35, %1
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %60, align 8
  %62 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %63 = bitcast %struct.e1000_hw* %62 to %struct.e1000_hw.3*
  %64 = call i64 %61(%struct.e1000_hw.3* %63)
  store i64 %64, i64* %4, align 8
  %65 = load i64, i64* %4, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  br label %219

68:                                               ; preds = %56
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load i64 (%struct.e1000_hw.2*, i32)*, i64 (%struct.e1000_hw.2*, i32)** %72, align 8
  %74 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %75 = bitcast %struct.e1000_hw* %74 to %struct.e1000_hw.2*
  %76 = load i32, i32* @HV_STATS_PAGE, align 4
  %77 = load i32, i32* @IGP_PAGE_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = call i64 %73(%struct.e1000_hw.2* %75, i32 %78)
  store i64 %79, i64* %4, align 8
  %80 = load i64, i64* %4, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %210

83:                                               ; preds = %68
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %87, align 8
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %90 = bitcast %struct.e1000_hw* %89 to %struct.e1000_hw.1*
  %91 = load i32, i32* @HV_SCC_UPPER, align 4
  %92 = call i32 %88(%struct.e1000_hw.1* %90, i32 %91, i32* %3)
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  %97 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %96, align 8
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %99 = bitcast %struct.e1000_hw* %98 to %struct.e1000_hw.1*
  %100 = load i32, i32* @HV_SCC_LOWER, align 4
  %101 = call i32 %97(%struct.e1000_hw.1* %99, i32 %100, i32* %3)
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %105, align 8
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %108 = bitcast %struct.e1000_hw* %107 to %struct.e1000_hw.1*
  %109 = load i32, i32* @HV_ECOL_UPPER, align 4
  %110 = call i32 %106(%struct.e1000_hw.1* %108, i32 %109, i32* %3)
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %113, i32 0, i32 1
  %115 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %114, align 8
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %117 = bitcast %struct.e1000_hw* %116 to %struct.e1000_hw.1*
  %118 = load i32, i32* @HV_ECOL_LOWER, align 4
  %119 = call i32 %115(%struct.e1000_hw.1* %117, i32 %118, i32* %3)
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %121 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %123, align 8
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %126 = bitcast %struct.e1000_hw* %125 to %struct.e1000_hw.1*
  %127 = load i32, i32* @HV_MCC_UPPER, align 4
  %128 = call i32 %124(%struct.e1000_hw.1* %126, i32 %127, i32* %3)
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %130 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  %133 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %132, align 8
  %134 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %135 = bitcast %struct.e1000_hw* %134 to %struct.e1000_hw.1*
  %136 = load i32, i32* @HV_MCC_LOWER, align 4
  %137 = call i32 %133(%struct.e1000_hw.1* %135, i32 %136, i32* %3)
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %139 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 1
  %142 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %141, align 8
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %144 = bitcast %struct.e1000_hw* %143 to %struct.e1000_hw.1*
  %145 = load i32, i32* @HV_LATECOL_UPPER, align 4
  %146 = call i32 %142(%struct.e1000_hw.1* %144, i32 %145, i32* %3)
  %147 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %148 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %150, align 8
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %153 = bitcast %struct.e1000_hw* %152 to %struct.e1000_hw.1*
  %154 = load i32, i32* @HV_LATECOL_LOWER, align 4
  %155 = call i32 %151(%struct.e1000_hw.1* %153, i32 %154, i32* %3)
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %157 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %159, align 8
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %162 = bitcast %struct.e1000_hw* %161 to %struct.e1000_hw.1*
  %163 = load i32, i32* @HV_COLC_UPPER, align 4
  %164 = call i32 %160(%struct.e1000_hw.1* %162, i32 %163, i32* %3)
  %165 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %166 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %167, i32 0, i32 1
  %169 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %168, align 8
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %171 = bitcast %struct.e1000_hw* %170 to %struct.e1000_hw.1*
  %172 = load i32, i32* @HV_COLC_LOWER, align 4
  %173 = call i32 %169(%struct.e1000_hw.1* %171, i32 %172, i32* %3)
  %174 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %175 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %176, i32 0, i32 1
  %178 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %177, align 8
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %180 = bitcast %struct.e1000_hw* %179 to %struct.e1000_hw.1*
  %181 = load i32, i32* @HV_DC_UPPER, align 4
  %182 = call i32 %178(%struct.e1000_hw.1* %180, i32 %181, i32* %3)
  %183 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %184 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 1
  %187 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %186, align 8
  %188 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %189 = bitcast %struct.e1000_hw* %188 to %struct.e1000_hw.1*
  %190 = load i32, i32* @HV_DC_LOWER, align 4
  %191 = call i32 %187(%struct.e1000_hw.1* %189, i32 %190, i32* %3)
  %192 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %193 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %194, i32 0, i32 1
  %196 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %195, align 8
  %197 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %198 = bitcast %struct.e1000_hw* %197 to %struct.e1000_hw.1*
  %199 = load i32, i32* @HV_TNCRS_UPPER, align 4
  %200 = call i32 %196(%struct.e1000_hw.1* %198, i32 %199, i32* %3)
  %201 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %202 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %203, i32 0, i32 1
  %205 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %204, align 8
  %206 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %207 = bitcast %struct.e1000_hw* %206 to %struct.e1000_hw.1*
  %208 = load i32, i32* @HV_TNCRS_LOWER, align 4
  %209 = call i32 %205(%struct.e1000_hw.1* %207, i32 %208, i32* %3)
  br label %210

210:                                              ; preds = %83, %82
  %211 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %212 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 0
  %215 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %214, align 8
  %216 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %217 = bitcast %struct.e1000_hw* %216 to %struct.e1000_hw.0*
  %218 = call i32 %215(%struct.e1000_hw.0* %217)
  br label %219

219:                                              ; preds = %67, %210, %49
  ret void
}

declare dso_local i32 @e1000e_clear_hw_cntrs_base(%struct.e1000_hw*) #1

declare dso_local i32 @er32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
