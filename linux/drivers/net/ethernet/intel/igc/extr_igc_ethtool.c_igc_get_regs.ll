; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_ethtool.c_igc_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.igc_adapter = type { %struct.TYPE_2__, %struct.igc_hw }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.igc_hw = type { i32, i32 }

@IGC_REGS_LEN = common dso_local global i32 0, align 4
@IGC_CTRL = common dso_local global i32 0, align 4
@IGC_STATUS = common dso_local global i32 0, align 4
@IGC_CTRL_EXT = common dso_local global i32 0, align 4
@IGC_MDIC = common dso_local global i32 0, align 4
@IGC_CONNSW = common dso_local global i32 0, align 4
@IGC_EECD = common dso_local global i32 0, align 4
@IGC_EICS = common dso_local global i32 0, align 4
@IGC_EIMS = common dso_local global i32 0, align 4
@IGC_EIMC = common dso_local global i32 0, align 4
@IGC_EIAC = common dso_local global i32 0, align 4
@IGC_EIAM = common dso_local global i32 0, align 4
@IGC_ICS = common dso_local global i32 0, align 4
@IGC_IMS = common dso_local global i32 0, align 4
@IGC_IMC = common dso_local global i32 0, align 4
@IGC_IAC = common dso_local global i32 0, align 4
@IGC_IAM = common dso_local global i32 0, align 4
@IGC_FCAL = common dso_local global i32 0, align 4
@IGC_FCAH = common dso_local global i32 0, align 4
@IGC_FCTTV = common dso_local global i32 0, align 4
@IGC_FCRTL = common dso_local global i32 0, align 4
@IGC_FCRTH = common dso_local global i32 0, align 4
@IGC_FCRTV = common dso_local global i32 0, align 4
@IGC_RCTL = common dso_local global i32 0, align 4
@IGC_RXCSUM = common dso_local global i32 0, align 4
@IGC_RLPML = common dso_local global i32 0, align 4
@IGC_RFCTL = common dso_local global i32 0, align 4
@IGC_TCTL = common dso_local global i32 0, align 4
@IGC_TIPG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @igc_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.igc_adapter*, align 8
  %8 = alloca %struct.igc_hw*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.igc_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.igc_adapter* %12, %struct.igc_adapter** %7, align 8
  %13 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %13, i32 0, i32 1
  store %struct.igc_hw* %14, %struct.igc_hw** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @IGC_REGS_LEN, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i8* %17, i32 0, i32 %21)
  %23 = load %struct.igc_hw*, %struct.igc_hw** %8, align 8
  %24 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 16
  %27 = or i32 16777216, %26
  %28 = load %struct.igc_hw*, %struct.igc_hw** %8, align 8
  %29 = getelementptr inbounds %struct.igc_hw, %struct.igc_hw* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %27, %30
  %32 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %33 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @IGC_CTRL, align 4
  %35 = call i32 @rd32(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @IGC_STATUS, align 4
  %39 = call i32 @rd32(i32 %38)
  %40 = load i32*, i32** %9, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @IGC_CTRL_EXT, align 4
  %43 = call i32 @rd32(i32 %42)
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @IGC_MDIC, align 4
  %47 = call i32 @rd32(i32 %46)
  %48 = load i32*, i32** %9, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @IGC_CONNSW, align 4
  %51 = call i32 @rd32(i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @IGC_EECD, align 4
  %55 = call i32 @rd32(i32 %54)
  %56 = load i32*, i32** %9, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 5
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @IGC_EICS, align 4
  %59 = call i32 @rd32(i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 6
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @IGC_EICS, align 4
  %63 = call i32 @rd32(i32 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @IGC_EIMS, align 4
  %67 = call i32 @rd32(i32 %66)
  %68 = load i32*, i32** %9, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 8
  store i32 %67, i32* %69, align 4
  %70 = load i32, i32* @IGC_EIMC, align 4
  %71 = call i32 @rd32(i32 %70)
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 9
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @IGC_EIAC, align 4
  %75 = call i32 @rd32(i32 %74)
  %76 = load i32*, i32** %9, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 10
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @IGC_EIAM, align 4
  %79 = call i32 @rd32(i32 %78)
  %80 = load i32*, i32** %9, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 11
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @IGC_ICS, align 4
  %83 = call i32 @rd32(i32 %82)
  %84 = load i32*, i32** %9, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 12
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @IGC_ICS, align 4
  %87 = call i32 @rd32(i32 %86)
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 13
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @IGC_IMS, align 4
  %91 = call i32 @rd32(i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 14
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @IGC_IMC, align 4
  %95 = call i32 @rd32(i32 %94)
  %96 = load i32*, i32** %9, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 15
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @IGC_IAC, align 4
  %99 = call i32 @rd32(i32 %98)
  %100 = load i32*, i32** %9, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 16
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @IGC_IAM, align 4
  %103 = call i32 @rd32(i32 %102)
  %104 = load i32*, i32** %9, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 17
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @IGC_FCAL, align 4
  %107 = call i32 @rd32(i32 %106)
  %108 = load i32*, i32** %9, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 18
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @IGC_FCAH, align 4
  %111 = call i32 @rd32(i32 %110)
  %112 = load i32*, i32** %9, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 19
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @IGC_FCTTV, align 4
  %115 = call i32 @rd32(i32 %114)
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 20
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @IGC_FCRTL, align 4
  %119 = call i32 @rd32(i32 %118)
  %120 = load i32*, i32** %9, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 21
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @IGC_FCRTH, align 4
  %123 = call i32 @rd32(i32 %122)
  %124 = load i32*, i32** %9, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 22
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @IGC_FCRTV, align 4
  %127 = call i32 @rd32(i32 %126)
  %128 = load i32*, i32** %9, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 23
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @IGC_RCTL, align 4
  %131 = call i32 @rd32(i32 %130)
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 24
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @IGC_RXCSUM, align 4
  %135 = call i32 @rd32(i32 %134)
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 25
  store i32 %135, i32* %137, align 4
  %138 = load i32, i32* @IGC_RLPML, align 4
  %139 = call i32 @rd32(i32 %138)
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 26
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @IGC_RFCTL, align 4
  %143 = call i32 @rd32(i32 %142)
  %144 = load i32*, i32** %9, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 27
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @IGC_TCTL, align 4
  %147 = call i32 @rd32(i32 %146)
  %148 = load i32*, i32** %9, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 28
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @IGC_TIPG, align 4
  %151 = call i32 @rd32(i32 %150)
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 29
  store i32 %151, i32* %153, align 4
  %154 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %155 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %155, i32 0, i32 60
  %157 = load i32, i32* %156, align 4
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 30
  store i32 %157, i32* %159, align 4
  %160 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %161 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 59
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 31
  store i32 %163, i32* %165, align 4
  %166 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %167 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i32 0, i32 58
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 32
  store i32 %169, i32* %171, align 4
  %172 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %173 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 57
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 33
  store i32 %175, i32* %177, align 4
  %178 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %179 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 56
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 34
  store i32 %181, i32* %183, align 4
  %184 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %185 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 55
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %9, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 35
  store i32 %187, i32* %189, align 4
  %190 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %191 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 54
  %193 = load i32, i32* %192, align 4
  %194 = load i32*, i32** %9, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 36
  store i32 %193, i32* %195, align 4
  %196 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %197 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 53
  %199 = load i32, i32* %198, align 4
  %200 = load i32*, i32** %9, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 37
  store i32 %199, i32* %201, align 4
  %202 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %203 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %202, i32 0, i32 0
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 52
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %9, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 38
  store i32 %205, i32* %207, align 4
  %208 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %209 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 51
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %9, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 39
  store i32 %211, i32* %213, align 4
  %214 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %215 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %215, i32 0, i32 50
  %217 = load i32, i32* %216, align 4
  %218 = load i32*, i32** %9, align 8
  %219 = getelementptr inbounds i32, i32* %218, i64 40
  store i32 %217, i32* %219, align 4
  %220 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %221 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %221, i32 0, i32 49
  %223 = load i32, i32* %222, align 4
  %224 = load i32*, i32** %9, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 41
  store i32 %223, i32* %225, align 4
  %226 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %227 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 48
  %229 = load i32, i32* %228, align 4
  %230 = load i32*, i32** %9, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 42
  store i32 %229, i32* %231, align 4
  %232 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %233 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %233, i32 0, i32 47
  %235 = load i32, i32* %234, align 4
  %236 = load i32*, i32** %9, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 43
  store i32 %235, i32* %237, align 4
  %238 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %239 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 46
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %9, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 44
  store i32 %241, i32* %243, align 4
  %244 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %245 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %245, i32 0, i32 45
  %247 = load i32, i32* %246, align 4
  %248 = load i32*, i32** %9, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 45
  store i32 %247, i32* %249, align 4
  %250 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %251 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %251, i32 0, i32 44
  %253 = load i32, i32* %252, align 4
  %254 = load i32*, i32** %9, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 46
  store i32 %253, i32* %255, align 4
  %256 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %257 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 43
  %259 = load i32, i32* %258, align 4
  %260 = load i32*, i32** %9, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 47
  store i32 %259, i32* %261, align 4
  %262 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %263 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %263, i32 0, i32 42
  %265 = load i32, i32* %264, align 4
  %266 = load i32*, i32** %9, align 8
  %267 = getelementptr inbounds i32, i32* %266, i64 48
  store i32 %265, i32* %267, align 4
  %268 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %269 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %269, i32 0, i32 41
  %271 = load i32, i32* %270, align 4
  %272 = load i32*, i32** %9, align 8
  %273 = getelementptr inbounds i32, i32* %272, i64 49
  store i32 %271, i32* %273, align 4
  %274 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %275 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 40
  %277 = load i32, i32* %276, align 4
  %278 = load i32*, i32** %9, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 50
  store i32 %277, i32* %279, align 4
  %280 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %281 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %281, i32 0, i32 39
  %283 = load i32, i32* %282, align 4
  %284 = load i32*, i32** %9, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 51
  store i32 %283, i32* %285, align 4
  %286 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %287 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i32 0, i32 38
  %289 = load i32, i32* %288, align 4
  %290 = load i32*, i32** %9, align 8
  %291 = getelementptr inbounds i32, i32* %290, i64 52
  store i32 %289, i32* %291, align 4
  %292 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %293 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %292, i32 0, i32 0
  %294 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %293, i32 0, i32 37
  %295 = load i32, i32* %294, align 4
  %296 = load i32*, i32** %9, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 53
  store i32 %295, i32* %297, align 4
  %298 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %299 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 36
  %301 = load i32, i32* %300, align 4
  %302 = load i32*, i32** %9, align 8
  %303 = getelementptr inbounds i32, i32* %302, i64 54
  store i32 %301, i32* %303, align 4
  %304 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %305 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %304, i32 0, i32 0
  %306 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %305, i32 0, i32 35
  %307 = load i32, i32* %306, align 4
  %308 = load i32*, i32** %9, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 55
  store i32 %307, i32* %309, align 4
  %310 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %311 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %311, i32 0, i32 34
  %313 = load i32, i32* %312, align 4
  %314 = load i32*, i32** %9, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 56
  store i32 %313, i32* %315, align 4
  %316 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %317 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %317, i32 0, i32 33
  %319 = load i32, i32* %318, align 4
  %320 = load i32*, i32** %9, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 57
  store i32 %319, i32* %321, align 4
  %322 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %323 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %323, i32 0, i32 32
  %325 = load i32, i32* %324, align 4
  %326 = load i32*, i32** %9, align 8
  %327 = getelementptr inbounds i32, i32* %326, i64 58
  store i32 %325, i32* %327, align 4
  %328 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %329 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %328, i32 0, i32 0
  %330 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %329, i32 0, i32 31
  %331 = load i32, i32* %330, align 4
  %332 = load i32*, i32** %9, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 59
  store i32 %331, i32* %333, align 4
  %334 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %335 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %335, i32 0, i32 30
  %337 = load i32, i32* %336, align 4
  %338 = load i32*, i32** %9, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 60
  store i32 %337, i32* %339, align 4
  %340 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %341 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %340, i32 0, i32 0
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %341, i32 0, i32 29
  %343 = load i32, i32* %342, align 4
  %344 = load i32*, i32** %9, align 8
  %345 = getelementptr inbounds i32, i32* %344, i64 61
  store i32 %343, i32* %345, align 4
  %346 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %347 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i32 0, i32 28
  %349 = load i32, i32* %348, align 4
  %350 = load i32*, i32** %9, align 8
  %351 = getelementptr inbounds i32, i32* %350, i64 62
  store i32 %349, i32* %351, align 4
  %352 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %353 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 27
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %9, align 8
  %357 = getelementptr inbounds i32, i32* %356, i64 63
  store i32 %355, i32* %357, align 4
  %358 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %359 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %359, i32 0, i32 26
  %361 = load i32, i32* %360, align 4
  %362 = load i32*, i32** %9, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 64
  store i32 %361, i32* %363, align 4
  %364 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %365 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %365, i32 0, i32 25
  %367 = load i32, i32* %366, align 4
  %368 = load i32*, i32** %9, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 65
  store i32 %367, i32* %369, align 4
  %370 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %371 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %371, i32 0, i32 24
  %373 = load i32, i32* %372, align 4
  %374 = load i32*, i32** %9, align 8
  %375 = getelementptr inbounds i32, i32* %374, i64 66
  store i32 %373, i32* %375, align 4
  %376 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %377 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 23
  %379 = load i32, i32* %378, align 4
  %380 = load i32*, i32** %9, align 8
  %381 = getelementptr inbounds i32, i32* %380, i64 67
  store i32 %379, i32* %381, align 4
  %382 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %383 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %383, i32 0, i32 22
  %385 = load i32, i32* %384, align 4
  %386 = load i32*, i32** %9, align 8
  %387 = getelementptr inbounds i32, i32* %386, i64 68
  store i32 %385, i32* %387, align 4
  %388 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %389 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %389, i32 0, i32 21
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %9, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 69
  store i32 %391, i32* %393, align 4
  %394 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %395 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %395, i32 0, i32 20
  %397 = load i32, i32* %396, align 4
  %398 = load i32*, i32** %9, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 70
  store i32 %397, i32* %399, align 4
  %400 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %401 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %401, i32 0, i32 19
  %403 = load i32, i32* %402, align 4
  %404 = load i32*, i32** %9, align 8
  %405 = getelementptr inbounds i32, i32* %404, i64 71
  store i32 %403, i32* %405, align 4
  %406 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %407 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %406, i32 0, i32 0
  %408 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i32 0, i32 18
  %409 = load i32, i32* %408, align 4
  %410 = load i32*, i32** %9, align 8
  %411 = getelementptr inbounds i32, i32* %410, i64 72
  store i32 %409, i32* %411, align 4
  %412 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %413 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %413, i32 0, i32 17
  %415 = load i32, i32* %414, align 4
  %416 = load i32*, i32** %9, align 8
  %417 = getelementptr inbounds i32, i32* %416, i64 73
  store i32 %415, i32* %417, align 4
  %418 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %419 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %418, i32 0, i32 0
  %420 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %419, i32 0, i32 16
  %421 = load i32, i32* %420, align 4
  %422 = load i32*, i32** %9, align 8
  %423 = getelementptr inbounds i32, i32* %422, i64 74
  store i32 %421, i32* %423, align 4
  %424 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %425 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i32 0, i32 15
  %427 = load i32, i32* %426, align 4
  %428 = load i32*, i32** %9, align 8
  %429 = getelementptr inbounds i32, i32* %428, i64 75
  store i32 %427, i32* %429, align 4
  %430 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %431 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %430, i32 0, i32 0
  %432 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %431, i32 0, i32 14
  %433 = load i32, i32* %432, align 4
  %434 = load i32*, i32** %9, align 8
  %435 = getelementptr inbounds i32, i32* %434, i64 76
  store i32 %433, i32* %435, align 4
  %436 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %437 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %437, i32 0, i32 13
  %439 = load i32, i32* %438, align 4
  %440 = load i32*, i32** %9, align 8
  %441 = getelementptr inbounds i32, i32* %440, i64 77
  store i32 %439, i32* %441, align 4
  %442 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %443 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %443, i32 0, i32 12
  %445 = load i32, i32* %444, align 4
  %446 = load i32*, i32** %9, align 8
  %447 = getelementptr inbounds i32, i32* %446, i64 78
  store i32 %445, i32* %447, align 4
  %448 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %449 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %449, i32 0, i32 11
  %451 = load i32, i32* %450, align 4
  %452 = load i32*, i32** %9, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 79
  store i32 %451, i32* %453, align 4
  %454 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %455 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %455, i32 0, i32 10
  %457 = load i32, i32* %456, align 4
  %458 = load i32*, i32** %9, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 80
  store i32 %457, i32* %459, align 4
  %460 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %461 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %461, i32 0, i32 9
  %463 = load i32, i32* %462, align 4
  %464 = load i32*, i32** %9, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 81
  store i32 %463, i32* %465, align 4
  %466 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %467 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %467, i32 0, i32 8
  %469 = load i32, i32* %468, align 4
  %470 = load i32*, i32** %9, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 82
  store i32 %469, i32* %471, align 4
  %472 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %473 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %472, i32 0, i32 0
  %474 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %473, i32 0, i32 7
  %475 = load i32, i32* %474, align 4
  %476 = load i32*, i32** %9, align 8
  %477 = getelementptr inbounds i32, i32* %476, i64 83
  store i32 %475, i32* %477, align 4
  %478 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %479 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %479, i32 0, i32 6
  %481 = load i32, i32* %480, align 4
  %482 = load i32*, i32** %9, align 8
  %483 = getelementptr inbounds i32, i32* %482, i64 84
  store i32 %481, i32* %483, align 4
  %484 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %485 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %485, i32 0, i32 5
  %487 = load i32, i32* %486, align 4
  %488 = load i32*, i32** %9, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 85
  store i32 %487, i32* %489, align 4
  %490 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %491 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %490, i32 0, i32 0
  %492 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %491, i32 0, i32 4
  %493 = load i32, i32* %492, align 4
  %494 = load i32*, i32** %9, align 8
  %495 = getelementptr inbounds i32, i32* %494, i64 86
  store i32 %493, i32* %495, align 4
  %496 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %497 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %496, i32 0, i32 0
  %498 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %497, i32 0, i32 3
  %499 = load i32, i32* %498, align 4
  %500 = load i32*, i32** %9, align 8
  %501 = getelementptr inbounds i32, i32* %500, i64 87
  store i32 %499, i32* %501, align 4
  %502 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %503 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %503, i32 0, i32 2
  %505 = load i32, i32* %504, align 4
  %506 = load i32*, i32** %9, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 88
  store i32 %505, i32* %507, align 4
  %508 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %509 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %508, i32 0, i32 0
  %510 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = load i32*, i32** %9, align 8
  %513 = getelementptr inbounds i32, i32* %512, i64 89
  store i32 %511, i32* %513, align 4
  %514 = load %struct.igc_adapter*, %struct.igc_adapter** %7, align 8
  %515 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %514, i32 0, i32 0
  %516 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %515, i32 0, i32 0
  %517 = load i32, i32* %516, align 4
  %518 = load i32*, i32** %9, align 8
  %519 = getelementptr inbounds i32, i32* %518, i64 90
  store i32 %517, i32* %519, align 4
  store i32 0, i32* %10, align 4
  br label %520

520:                                              ; preds = %532, %3
  %521 = load i32, i32* %10, align 4
  %522 = icmp slt i32 %521, 4
  br i1 %522, label %523, label %535

523:                                              ; preds = %520
  %524 = load i32, i32* %10, align 4
  %525 = call i32 @IGC_SRRCTL(i32 %524)
  %526 = call i32 @rd32(i32 %525)
  %527 = load i32*, i32** %9, align 8
  %528 = load i32, i32* %10, align 4
  %529 = add nsw i32 91, %528
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %527, i64 %530
  store i32 %526, i32* %531, align 4
  br label %532

532:                                              ; preds = %523
  %533 = load i32, i32* %10, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %10, align 4
  br label %520

535:                                              ; preds = %520
  store i32 0, i32* %10, align 4
  br label %536

536:                                              ; preds = %548, %535
  %537 = load i32, i32* %10, align 4
  %538 = icmp slt i32 %537, 4
  br i1 %538, label %539, label %551

539:                                              ; preds = %536
  %540 = load i32, i32* %10, align 4
  %541 = call i32 @IGC_PSRTYPE(i32 %540)
  %542 = call i32 @rd32(i32 %541)
  %543 = load i32*, i32** %9, align 8
  %544 = load i32, i32* %10, align 4
  %545 = add nsw i32 95, %544
  %546 = sext i32 %545 to i64
  %547 = getelementptr inbounds i32, i32* %543, i64 %546
  store i32 %542, i32* %547, align 4
  br label %548

548:                                              ; preds = %539
  %549 = load i32, i32* %10, align 4
  %550 = add nsw i32 %549, 1
  store i32 %550, i32* %10, align 4
  br label %536

551:                                              ; preds = %536
  store i32 0, i32* %10, align 4
  br label %552

552:                                              ; preds = %564, %551
  %553 = load i32, i32* %10, align 4
  %554 = icmp slt i32 %553, 4
  br i1 %554, label %555, label %567

555:                                              ; preds = %552
  %556 = load i32, i32* %10, align 4
  %557 = call i32 @IGC_RDBAL(i32 %556)
  %558 = call i32 @rd32(i32 %557)
  %559 = load i32*, i32** %9, align 8
  %560 = load i32, i32* %10, align 4
  %561 = add nsw i32 99, %560
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds i32, i32* %559, i64 %562
  store i32 %558, i32* %563, align 4
  br label %564

564:                                              ; preds = %555
  %565 = load i32, i32* %10, align 4
  %566 = add nsw i32 %565, 1
  store i32 %566, i32* %10, align 4
  br label %552

567:                                              ; preds = %552
  store i32 0, i32* %10, align 4
  br label %568

568:                                              ; preds = %580, %567
  %569 = load i32, i32* %10, align 4
  %570 = icmp slt i32 %569, 4
  br i1 %570, label %571, label %583

571:                                              ; preds = %568
  %572 = load i32, i32* %10, align 4
  %573 = call i32 @IGC_RDBAH(i32 %572)
  %574 = call i32 @rd32(i32 %573)
  %575 = load i32*, i32** %9, align 8
  %576 = load i32, i32* %10, align 4
  %577 = add nsw i32 103, %576
  %578 = sext i32 %577 to i64
  %579 = getelementptr inbounds i32, i32* %575, i64 %578
  store i32 %574, i32* %579, align 4
  br label %580

580:                                              ; preds = %571
  %581 = load i32, i32* %10, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %10, align 4
  br label %568

583:                                              ; preds = %568
  store i32 0, i32* %10, align 4
  br label %584

584:                                              ; preds = %596, %583
  %585 = load i32, i32* %10, align 4
  %586 = icmp slt i32 %585, 4
  br i1 %586, label %587, label %599

587:                                              ; preds = %584
  %588 = load i32, i32* %10, align 4
  %589 = call i32 @IGC_RDLEN(i32 %588)
  %590 = call i32 @rd32(i32 %589)
  %591 = load i32*, i32** %9, align 8
  %592 = load i32, i32* %10, align 4
  %593 = add nsw i32 107, %592
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i32, i32* %591, i64 %594
  store i32 %590, i32* %595, align 4
  br label %596

596:                                              ; preds = %587
  %597 = load i32, i32* %10, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %10, align 4
  br label %584

599:                                              ; preds = %584
  store i32 0, i32* %10, align 4
  br label %600

600:                                              ; preds = %612, %599
  %601 = load i32, i32* %10, align 4
  %602 = icmp slt i32 %601, 4
  br i1 %602, label %603, label %615

603:                                              ; preds = %600
  %604 = load i32, i32* %10, align 4
  %605 = call i32 @IGC_RDH(i32 %604)
  %606 = call i32 @rd32(i32 %605)
  %607 = load i32*, i32** %9, align 8
  %608 = load i32, i32* %10, align 4
  %609 = add nsw i32 111, %608
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds i32, i32* %607, i64 %610
  store i32 %606, i32* %611, align 4
  br label %612

612:                                              ; preds = %603
  %613 = load i32, i32* %10, align 4
  %614 = add nsw i32 %613, 1
  store i32 %614, i32* %10, align 4
  br label %600

615:                                              ; preds = %600
  store i32 0, i32* %10, align 4
  br label %616

616:                                              ; preds = %628, %615
  %617 = load i32, i32* %10, align 4
  %618 = icmp slt i32 %617, 4
  br i1 %618, label %619, label %631

619:                                              ; preds = %616
  %620 = load i32, i32* %10, align 4
  %621 = call i32 @IGC_RDT(i32 %620)
  %622 = call i32 @rd32(i32 %621)
  %623 = load i32*, i32** %9, align 8
  %624 = load i32, i32* %10, align 4
  %625 = add nsw i32 115, %624
  %626 = sext i32 %625 to i64
  %627 = getelementptr inbounds i32, i32* %623, i64 %626
  store i32 %622, i32* %627, align 4
  br label %628

628:                                              ; preds = %619
  %629 = load i32, i32* %10, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* %10, align 4
  br label %616

631:                                              ; preds = %616
  store i32 0, i32* %10, align 4
  br label %632

632:                                              ; preds = %644, %631
  %633 = load i32, i32* %10, align 4
  %634 = icmp slt i32 %633, 4
  br i1 %634, label %635, label %647

635:                                              ; preds = %632
  %636 = load i32, i32* %10, align 4
  %637 = call i32 @IGC_RXDCTL(i32 %636)
  %638 = call i32 @rd32(i32 %637)
  %639 = load i32*, i32** %9, align 8
  %640 = load i32, i32* %10, align 4
  %641 = add nsw i32 119, %640
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds i32, i32* %639, i64 %642
  store i32 %638, i32* %643, align 4
  br label %644

644:                                              ; preds = %635
  %645 = load i32, i32* %10, align 4
  %646 = add nsw i32 %645, 1
  store i32 %646, i32* %10, align 4
  br label %632

647:                                              ; preds = %632
  store i32 0, i32* %10, align 4
  br label %648

648:                                              ; preds = %660, %647
  %649 = load i32, i32* %10, align 4
  %650 = icmp slt i32 %649, 10
  br i1 %650, label %651, label %663

651:                                              ; preds = %648
  %652 = load i32, i32* %10, align 4
  %653 = call i32 @IGC_EITR(i32 %652)
  %654 = call i32 @rd32(i32 %653)
  %655 = load i32*, i32** %9, align 8
  %656 = load i32, i32* %10, align 4
  %657 = add nsw i32 123, %656
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds i32, i32* %655, i64 %658
  store i32 %654, i32* %659, align 4
  br label %660

660:                                              ; preds = %651
  %661 = load i32, i32* %10, align 4
  %662 = add nsw i32 %661, 1
  store i32 %662, i32* %10, align 4
  br label %648

663:                                              ; preds = %648
  store i32 0, i32* %10, align 4
  br label %664

664:                                              ; preds = %676, %663
  %665 = load i32, i32* %10, align 4
  %666 = icmp slt i32 %665, 16
  br i1 %666, label %667, label %679

667:                                              ; preds = %664
  %668 = load i32, i32* %10, align 4
  %669 = call i32 @IGC_RAL(i32 %668)
  %670 = call i32 @rd32(i32 %669)
  %671 = load i32*, i32** %9, align 8
  %672 = load i32, i32* %10, align 4
  %673 = add nsw i32 139, %672
  %674 = sext i32 %673 to i64
  %675 = getelementptr inbounds i32, i32* %671, i64 %674
  store i32 %670, i32* %675, align 4
  br label %676

676:                                              ; preds = %667
  %677 = load i32, i32* %10, align 4
  %678 = add nsw i32 %677, 1
  store i32 %678, i32* %10, align 4
  br label %664

679:                                              ; preds = %664
  store i32 0, i32* %10, align 4
  br label %680

680:                                              ; preds = %692, %679
  %681 = load i32, i32* %10, align 4
  %682 = icmp slt i32 %681, 16
  br i1 %682, label %683, label %695

683:                                              ; preds = %680
  %684 = load i32, i32* %10, align 4
  %685 = call i32 @IGC_RAH(i32 %684)
  %686 = call i32 @rd32(i32 %685)
  %687 = load i32*, i32** %9, align 8
  %688 = load i32, i32* %10, align 4
  %689 = add nsw i32 145, %688
  %690 = sext i32 %689 to i64
  %691 = getelementptr inbounds i32, i32* %687, i64 %690
  store i32 %686, i32* %691, align 4
  br label %692

692:                                              ; preds = %683
  %693 = load i32, i32* %10, align 4
  %694 = add nsw i32 %693, 1
  store i32 %694, i32* %10, align 4
  br label %680

695:                                              ; preds = %680
  store i32 0, i32* %10, align 4
  br label %696

696:                                              ; preds = %708, %695
  %697 = load i32, i32* %10, align 4
  %698 = icmp slt i32 %697, 4
  br i1 %698, label %699, label %711

699:                                              ; preds = %696
  %700 = load i32, i32* %10, align 4
  %701 = call i32 @IGC_TDBAL(i32 %700)
  %702 = call i32 @rd32(i32 %701)
  %703 = load i32*, i32** %9, align 8
  %704 = load i32, i32* %10, align 4
  %705 = add nsw i32 149, %704
  %706 = sext i32 %705 to i64
  %707 = getelementptr inbounds i32, i32* %703, i64 %706
  store i32 %702, i32* %707, align 4
  br label %708

708:                                              ; preds = %699
  %709 = load i32, i32* %10, align 4
  %710 = add nsw i32 %709, 1
  store i32 %710, i32* %10, align 4
  br label %696

711:                                              ; preds = %696
  store i32 0, i32* %10, align 4
  br label %712

712:                                              ; preds = %724, %711
  %713 = load i32, i32* %10, align 4
  %714 = icmp slt i32 %713, 4
  br i1 %714, label %715, label %727

715:                                              ; preds = %712
  %716 = load i32, i32* %10, align 4
  %717 = call i32 @IGC_TDBAH(i32 %716)
  %718 = call i32 @rd32(i32 %717)
  %719 = load i32*, i32** %9, align 8
  %720 = load i32, i32* %10, align 4
  %721 = add nsw i32 152, %720
  %722 = sext i32 %721 to i64
  %723 = getelementptr inbounds i32, i32* %719, i64 %722
  store i32 %718, i32* %723, align 4
  br label %724

724:                                              ; preds = %715
  %725 = load i32, i32* %10, align 4
  %726 = add nsw i32 %725, 1
  store i32 %726, i32* %10, align 4
  br label %712

727:                                              ; preds = %712
  store i32 0, i32* %10, align 4
  br label %728

728:                                              ; preds = %740, %727
  %729 = load i32, i32* %10, align 4
  %730 = icmp slt i32 %729, 4
  br i1 %730, label %731, label %743

731:                                              ; preds = %728
  %732 = load i32, i32* %10, align 4
  %733 = call i32 @IGC_TDLEN(i32 %732)
  %734 = call i32 @rd32(i32 %733)
  %735 = load i32*, i32** %9, align 8
  %736 = load i32, i32* %10, align 4
  %737 = add nsw i32 156, %736
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds i32, i32* %735, i64 %738
  store i32 %734, i32* %739, align 4
  br label %740

740:                                              ; preds = %731
  %741 = load i32, i32* %10, align 4
  %742 = add nsw i32 %741, 1
  store i32 %742, i32* %10, align 4
  br label %728

743:                                              ; preds = %728
  store i32 0, i32* %10, align 4
  br label %744

744:                                              ; preds = %756, %743
  %745 = load i32, i32* %10, align 4
  %746 = icmp slt i32 %745, 4
  br i1 %746, label %747, label %759

747:                                              ; preds = %744
  %748 = load i32, i32* %10, align 4
  %749 = call i32 @IGC_TDH(i32 %748)
  %750 = call i32 @rd32(i32 %749)
  %751 = load i32*, i32** %9, align 8
  %752 = load i32, i32* %10, align 4
  %753 = add nsw i32 160, %752
  %754 = sext i32 %753 to i64
  %755 = getelementptr inbounds i32, i32* %751, i64 %754
  store i32 %750, i32* %755, align 4
  br label %756

756:                                              ; preds = %747
  %757 = load i32, i32* %10, align 4
  %758 = add nsw i32 %757, 1
  store i32 %758, i32* %10, align 4
  br label %744

759:                                              ; preds = %744
  store i32 0, i32* %10, align 4
  br label %760

760:                                              ; preds = %772, %759
  %761 = load i32, i32* %10, align 4
  %762 = icmp slt i32 %761, 4
  br i1 %762, label %763, label %775

763:                                              ; preds = %760
  %764 = load i32, i32* %10, align 4
  %765 = call i32 @IGC_TDT(i32 %764)
  %766 = call i32 @rd32(i32 %765)
  %767 = load i32*, i32** %9, align 8
  %768 = load i32, i32* %10, align 4
  %769 = add nsw i32 164, %768
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds i32, i32* %767, i64 %770
  store i32 %766, i32* %771, align 4
  br label %772

772:                                              ; preds = %763
  %773 = load i32, i32* %10, align 4
  %774 = add nsw i32 %773, 1
  store i32 %774, i32* %10, align 4
  br label %760

775:                                              ; preds = %760
  store i32 0, i32* %10, align 4
  br label %776

776:                                              ; preds = %788, %775
  %777 = load i32, i32* %10, align 4
  %778 = icmp slt i32 %777, 4
  br i1 %778, label %779, label %791

779:                                              ; preds = %776
  %780 = load i32, i32* %10, align 4
  %781 = call i32 @IGC_TXDCTL(i32 %780)
  %782 = call i32 @rd32(i32 %781)
  %783 = load i32*, i32** %9, align 8
  %784 = load i32, i32* %10, align 4
  %785 = add nsw i32 168, %784
  %786 = sext i32 %785 to i64
  %787 = getelementptr inbounds i32, i32* %783, i64 %786
  store i32 %782, i32* %787, align 4
  br label %788

788:                                              ; preds = %779
  %789 = load i32, i32* %10, align 4
  %790 = add nsw i32 %789, 1
  store i32 %790, i32* %10, align 4
  br label %776

791:                                              ; preds = %776
  ret void
}

declare dso_local %struct.igc_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @rd32(i32) #1

declare dso_local i32 @IGC_SRRCTL(i32) #1

declare dso_local i32 @IGC_PSRTYPE(i32) #1

declare dso_local i32 @IGC_RDBAL(i32) #1

declare dso_local i32 @IGC_RDBAH(i32) #1

declare dso_local i32 @IGC_RDLEN(i32) #1

declare dso_local i32 @IGC_RDH(i32) #1

declare dso_local i32 @IGC_RDT(i32) #1

declare dso_local i32 @IGC_RXDCTL(i32) #1

declare dso_local i32 @IGC_EITR(i32) #1

declare dso_local i32 @IGC_RAL(i32) #1

declare dso_local i32 @IGC_RAH(i32) #1

declare dso_local i32 @IGC_TDBAL(i32) #1

declare dso_local i32 @IGC_TDBAH(i32) #1

declare dso_local i32 @IGC_TDLEN(i32) #1

declare dso_local i32 @IGC_TDH(i32) #1

declare dso_local i32 @IGC_TDT(i32) #1

declare dso_local i32 @IGC_TXDCTL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
