; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_get_cable_length_m88_gen2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_e1000_phy.c_igb_get_cable_length_m88_gen2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_phy_info }
%struct.e1000_phy_info = type { i32, i32*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@I347AT4_PAGE_SELECT = common dso_local global i32 0, align 4
@I347AT4_PCDC = common dso_local global i32 0, align 4
@I347AT4_PCDC_CABLE_LENGTH_UNIT = common dso_local global i32 0, align 4
@I347AT4_PCDL0 = common dso_local global i32 0, align 4
@I347AT4_PCDL1 = common dso_local global i32 0, align 4
@I347AT4_PCDL2 = common dso_local global i32 0, align 4
@I347AT4_PCDL3 = common dso_local global i32 0, align 4
@M88E1112_VCT_DSP_DISTANCE = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH = common dso_local global i32 0, align 4
@M88E1000_PSSR_CABLE_LENGTH_SHIFT = common dso_local global i32 0, align 4
@e1000_m88_cable_length_table = common dso_local global i8** null, align 8
@E1000_ERR_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_get_cable_length_m88_gen2(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_phy_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 0
  store %struct.e1000_phy_info* %14, %struct.e1000_phy_info** %3, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  switch i32 %18, label %342 [
    i32 128, label %19
    i32 129, label %19
    i32 131, label %19
    i32 132, label %19
    i32 130, label %251
  ]

19:                                               ; preds = %1, %1, %1, %1
  %20 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %21 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %22, align 8
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = bitcast %struct.e1000_hw* %24 to %struct.e1000_hw.1*
  %26 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %27 = call i32 %23(%struct.e1000_hw.1* %25, i32 %26, i32* %8)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %346

31:                                               ; preds = %19
  %32 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %33 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %34, align 8
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = bitcast %struct.e1000_hw* %36 to %struct.e1000_hw.0*
  %38 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %39 = call i32 %35(%struct.e1000_hw.0* %37, i32 %38, i32 7)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  br label %346

43:                                               ; preds = %31
  %44 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %45 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %46, align 8
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = bitcast %struct.e1000_hw* %48 to %struct.e1000_hw.1*
  %50 = load i32, i32* @I347AT4_PCDC, align 4
  %51 = call i32 %47(%struct.e1000_hw.1* %49, i32 %50, i32* %6)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  br label %346

55:                                               ; preds = %43
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @I347AT4_PCDC_CABLE_LENGTH_UNIT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  store i32 %61, i32* %9, align 4
  %62 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.1*
  %68 = load i32, i32* @I347AT4_PCDL0, align 4
  %69 = call i32 %65(%struct.e1000_hw.1* %67, i32 %68, i32* %5)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %346

73:                                               ; preds = %55
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i64
  %78 = select i1 %76, i32 100, i32 1
  %79 = sdiv i32 %74, %78
  %80 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %81 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  store i32 %88, i32* %10, align 4
  %89 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %90 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %95 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %12, align 4
  %99 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %100 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %101, align 8
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %104 = bitcast %struct.e1000_hw* %103 to %struct.e1000_hw.1*
  %105 = load i32, i32* @I347AT4_PCDL1, align 4
  %106 = call i32 %102(%struct.e1000_hw.1* %104, i32 %105, i32* %5)
  store i32 %106, i32* %4, align 4
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %73
  br label %346

110:                                              ; preds = %73
  %111 = load i32, i32* %5, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 100, i32 1
  %116 = sdiv i32 %111, %115
  %117 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %118 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  store i32 %116, i32* %120, align 4
  %121 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %122 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %10, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %10, align 4
  %128 = load i32, i32* %11, align 4
  %129 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %130 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %129, i32 0, i32 1
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @min(i32 %128, i32 %133)
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* %12, align 4
  %136 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %137 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @max(i32 %135, i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %143 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %142, i32 0, i32 5
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i32 0, i32 1
  %145 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %144, align 8
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %147 = bitcast %struct.e1000_hw* %146 to %struct.e1000_hw.1*
  %148 = load i32, i32* @I347AT4_PCDL2, align 4
  %149 = call i32 %145(%struct.e1000_hw.1* %147, i32 %148, i32* %5)
  store i32 %149, i32* %4, align 4
  %150 = load i32, i32* %4, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %110
  br label %346

153:                                              ; preds = %110
  %154 = load i32, i32* %5, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp ne i32 %155, 0
  %157 = zext i1 %156 to i64
  %158 = select i1 %156, i32 100, i32 1
  %159 = sdiv i32 %154, %158
  %160 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %161 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 2
  store i32 %159, i32* %163, align 4
  %164 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %165 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, %168
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %173 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %172, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 2
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @min(i32 %171, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* %12, align 4
  %179 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %180 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @max(i32 %178, i32 %183)
  store i32 %184, i32* %12, align 4
  %185 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %186 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %185, i32 0, i32 5
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 1
  %188 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %187, align 8
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %190 = bitcast %struct.e1000_hw* %189 to %struct.e1000_hw.1*
  %191 = load i32, i32* @I347AT4_PCDL3, align 4
  %192 = call i32 %188(%struct.e1000_hw.1* %190, i32 %191, i32* %5)
  store i32 %192, i32* %4, align 4
  %193 = load i32, i32* %4, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %196

195:                                              ; preds = %153
  br label %346

196:                                              ; preds = %153
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  %200 = zext i1 %199 to i64
  %201 = select i1 %199, i32 100, i32 1
  %202 = sdiv i32 %197, %201
  %203 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %204 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 3
  store i32 %202, i32* %206, align 4
  %207 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %208 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %207, i32 0, i32 1
  %209 = load i32*, i32** %208, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 3
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %10, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %11, align 4
  %215 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %216 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %215, i32 0, i32 1
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 3
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @min(i32 %214, i32 %219)
  store i32 %220, i32* %11, align 4
  %221 = load i32, i32* %12, align 4
  %222 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %223 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 3
  %226 = load i32, i32* %225, align 4
  %227 = call i32 @max(i32 %221, i32 %226)
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* %11, align 4
  %229 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %230 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %229, i32 0, i32 2
  store i32 %228, i32* %230, align 8
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %233 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %232, i32 0, i32 3
  store i32 %231, i32* %233, align 4
  %234 = load i32, i32* %10, align 4
  %235 = sdiv i32 %234, 4
  %236 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %237 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %239 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %238, i32 0, i32 5
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 0
  %241 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %240, align 8
  %242 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %243 = bitcast %struct.e1000_hw* %242 to %struct.e1000_hw.0*
  %244 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %245 = load i32, i32* %8, align 4
  %246 = call i32 %241(%struct.e1000_hw.0* %243, i32 %244, i32 %245)
  store i32 %246, i32* %4, align 4
  %247 = load i32, i32* %4, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %250

249:                                              ; preds = %196
  br label %346

250:                                              ; preds = %196
  br label %345

251:                                              ; preds = %1
  %252 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %253 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %253, i32 0, i32 1
  %255 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %254, align 8
  %256 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %257 = bitcast %struct.e1000_hw* %256 to %struct.e1000_hw.1*
  %258 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %259 = call i32 %255(%struct.e1000_hw.1* %257, i32 %258, i32* %8)
  store i32 %259, i32* %4, align 4
  %260 = load i32, i32* %4, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %251
  br label %346

263:                                              ; preds = %251
  %264 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %265 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 0
  %267 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %266, align 8
  %268 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %269 = bitcast %struct.e1000_hw* %268 to %struct.e1000_hw.0*
  %270 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %271 = call i32 %267(%struct.e1000_hw.0* %269, i32 %270, i32 5)
  store i32 %271, i32* %4, align 4
  %272 = load i32, i32* %4, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %275

274:                                              ; preds = %263
  br label %346

275:                                              ; preds = %263
  %276 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %277 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %276, i32 0, i32 5
  %278 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %277, i32 0, i32 1
  %279 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %278, align 8
  %280 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %281 = bitcast %struct.e1000_hw* %280 to %struct.e1000_hw.1*
  %282 = load i32, i32* @M88E1112_VCT_DSP_DISTANCE, align 4
  %283 = call i32 %279(%struct.e1000_hw.1* %281, i32 %282, i32* %5)
  store i32 %283, i32* %4, align 4
  %284 = load i32, i32* %4, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %275
  br label %346

287:                                              ; preds = %275
  %288 = load i32, i32* %5, align 4
  %289 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH, align 4
  %290 = and i32 %288, %289
  %291 = load i32, i32* @M88E1000_PSSR_CABLE_LENGTH_SHIFT, align 4
  %292 = ashr i32 %290, %291
  store i32 %292, i32* %7, align 4
  %293 = load i32, i32* %7, align 4
  %294 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %295 = call i32 @ARRAY_SIZE(i8** %294)
  %296 = sub nsw i32 %295, 1
  %297 = icmp sge i32 %293, %296
  br i1 %297, label %298, label %301

298:                                              ; preds = %287
  %299 = load i32, i32* @E1000_ERR_PHY, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %4, align 4
  br label %346

301:                                              ; preds = %287
  %302 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %303 = load i32, i32* %7, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i8*, i8** %302, i64 %304
  %306 = load i8*, i8** %305, align 8
  %307 = ptrtoint i8* %306 to i32
  %308 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %309 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %308, i32 0, i32 2
  store i32 %307, i32* %309, align 8
  %310 = load i8**, i8*** @e1000_m88_cable_length_table, align 8
  %311 = load i32, i32* %7, align 4
  %312 = add nsw i32 %311, 1
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds i8*, i8** %310, i64 %313
  %315 = load i8*, i8** %314, align 8
  %316 = ptrtoint i8* %315 to i32
  %317 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %318 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %317, i32 0, i32 3
  store i32 %316, i32* %318, align 4
  %319 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %320 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %319, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %323 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = add nsw i32 %321, %324
  %326 = sdiv i32 %325, 2
  %327 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %328 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %327, i32 0, i32 4
  store i32 %326, i32* %328, align 8
  %329 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %3, align 8
  %330 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %329, i32 0, i32 5
  %331 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %330, i32 0, i32 0
  %332 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %331, align 8
  %333 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %334 = bitcast %struct.e1000_hw* %333 to %struct.e1000_hw.0*
  %335 = load i32, i32* @I347AT4_PAGE_SELECT, align 4
  %336 = load i32, i32* %8, align 4
  %337 = call i32 %332(%struct.e1000_hw.0* %334, i32 %335, i32 %336)
  store i32 %337, i32* %4, align 4
  %338 = load i32, i32* %4, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %341

340:                                              ; preds = %301
  br label %346

341:                                              ; preds = %301
  br label %345

342:                                              ; preds = %1
  %343 = load i32, i32* @E1000_ERR_PHY, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %4, align 4
  br label %346

345:                                              ; preds = %341, %250
  br label %346

346:                                              ; preds = %345, %342, %340, %298, %286, %274, %262, %249, %195, %152, %109, %72, %54, %42, %30
  %347 = load i32, i32* %4, align 4
  ret i32 %347
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
