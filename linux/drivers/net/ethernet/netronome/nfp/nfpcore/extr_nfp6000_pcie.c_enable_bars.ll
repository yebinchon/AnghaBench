; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_enable_bars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_enable_bars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp6000_pcie = type { i32, %struct.nfp_bar*, i32, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_7__* }
%struct.nfp_bar = type { i32, i32*, i64, i32, i64, i64, %struct.nfp6000_pcie*, i64, %struct.resource* }
%struct.resource = type { i32 }
%struct.TYPE_8__ = type { i32**, i32*, i32* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32*, i32 }
%struct.TYPE_5__ = type { i32*, i32*, i64 }
%struct.TYPE_7__ = type { i32, i32, %struct.resource* }

@NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_LengthSelect_32BIT = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_MapType_BULK = common dso_local global i32 0, align 4
@NFP_CPP_TARGET_ISLAND_XPB = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT0 = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT1 = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT2 = common dso_local global i32 0, align 4
@NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"RESERVED BARs: \00", align 1
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"No usable BARs found!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFP_PCI_MIN_MAP_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"0.0: General/MSI-X SRAM, \00", align 1
@NFP_PCIE_SRAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Unsupported device ID: %04hx!\0A\00", align 1
@NFP_PCIE_EM = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"0.1: PCIe XPB/MSI-X PBA, \00", align 1
@NFP_PCIE_EXPLICIT_BARS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"0.%d: Explicit%d, \00", align 1
@bar_cmp = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"%sfree: %d/%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp6000_pcie*, i32)* @enable_bars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_bars(%struct.nfp6000_pcie* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp6000_pcie*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca [196 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.nfp_bar*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.resource*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nfp6000_pcie* %0, %struct.nfp6000_pcie** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL, align 4
  %21 = call i32 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32 %20)
  %22 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_LengthSelect_32BIT, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_MapType_BULK, align 4
  %25 = call i32 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32 %24)
  %26 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_LengthSelect_32BIT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @NFP_CPP_TARGET_ISLAND_XPB, align 4
  %29 = call i32 @NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress(i32 %28)
  %30 = or i32 %27, %29
  store i32 %30, i32* %7, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %32 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT0, align 4
  %33 = call i32 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32 %32)
  store i32 %33, i32* %31, align 4
  %34 = getelementptr inbounds i32, i32* %31, i64 1
  %35 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT1, align 4
  %36 = call i32 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32 %35)
  store i32 %36, i32* %34, align 4
  %37 = getelementptr inbounds i32, i32* %34, i64 1
  %38 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT2, align 4
  %39 = call i32 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32 %38)
  store i32 %39, i32* %37, align 4
  %40 = getelementptr inbounds i32, i32* %37, i64 1
  %41 = load i32, i32* @NFP_PCIE_BAR_PCIE2CPP_MapType_EXPLICIT3, align 4
  %42 = call i32 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32 %41)
  store i32 %42, i32* %40, align 4
  %43 = bitcast [196 x i8]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %43, i8 0, i64 196, i1 false)
  %44 = getelementptr inbounds [196 x i8], [196 x i8]* %9, i64 0, i64 0
  %45 = getelementptr inbounds [196 x i8], [196 x i8]* %9, i64 0, i64 0
  %46 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %45, i32 195, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %44, i64 %47
  store i8* %48, i8** %15, align 8
  %49 = getelementptr inbounds [196 x i8], [196 x i8]* %9, i64 0, i64 0
  %50 = getelementptr inbounds i8, i8* %49, i64 196
  %51 = getelementptr inbounds i8, i8* %50, i64 -1
  store i8* %51, i8** %16, align 8
  %52 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %53 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %52, i32 0, i32 1
  %54 = load %struct.nfp_bar*, %struct.nfp_bar** %53, align 8
  %55 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %54, i64 0
  store %struct.nfp_bar* %55, %struct.nfp_bar** %13, align 8
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %109, %2
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %59 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %58, i32 0, i32 1
  %60 = load %struct.nfp_bar*, %struct.nfp_bar** %59, align 8
  %61 = call i32 @ARRAY_SIZE(%struct.nfp_bar* %60)
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %56
  %64 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %65 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %64, i32 0, i32 5
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 2
  %68 = load %struct.resource*, %struct.resource** %67, align 8
  %69 = load i32, i32* %10, align 4
  %70 = ashr i32 %69, 3
  %71 = mul nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.resource, %struct.resource* %68, i64 %72
  store %struct.resource* %73, %struct.resource** %17, align 8
  %74 = load %struct.resource*, %struct.resource** %17, align 8
  %75 = call i32 @resource_type(%struct.resource* %74)
  %76 = load i32, i32* @IORESOURCE_MEM, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %63
  %80 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %81 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %80, i32 -1
  store %struct.nfp_bar* %81, %struct.nfp_bar** %13, align 8
  br label %109

82:                                               ; preds = %63
  %83 = load %struct.resource*, %struct.resource** %17, align 8
  %84 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %85 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %84, i32 0, i32 8
  store %struct.resource* %83, %struct.resource** %85, align 8
  %86 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %87 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %86, i32 0, i32 7
  store i64 0, i64* %87, align 8
  %88 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %89 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %90 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %89, i32 0, i32 6
  store %struct.nfp6000_pcie* %88, %struct.nfp6000_pcie** %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %93 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %95 = call i64 @nfp_bar_resource_len(%struct.nfp_bar* %94)
  %96 = sub nsw i64 %95, 1
  %97 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %98 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %97, i32 0, i32 5
  store i64 %96, i64* %98, align 8
  %99 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %100 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %99, i32 0, i32 5
  %101 = load i64, i64* %100, align 8
  %102 = call i64 @fls(i64 %101)
  %103 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %104 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %103, i32 0, i32 2
  store i64 %102, i64* %104, align 8
  %105 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %106 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %108 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %107, i32 0, i32 1
  store i32* null, i32** %108, align 8
  br label %109

109:                                              ; preds = %82, %79
  %110 = load i32, i32* %10, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %10, align 4
  %112 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %113 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %112, i32 1
  store %struct.nfp_bar* %113, %struct.nfp_bar** %13, align 8
  br label %56

114:                                              ; preds = %56
  %115 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %116 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %117 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %116, i32 0, i32 1
  %118 = load %struct.nfp_bar*, %struct.nfp_bar** %117, align 8
  %119 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %118, i64 0
  %120 = ptrtoint %struct.nfp_bar* %115 to i64
  %121 = ptrtoint %struct.nfp_bar* %119 to i64
  %122 = sub i64 %120, %121
  %123 = sdiv exact i64 %122, 72
  %124 = trunc i64 %123 to i32
  %125 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %126 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %128 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %129, 8
  br i1 %130, label %131, label %138

131:                                              ; preds = %114
  %132 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %133 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i8*, ...) @dev_err(i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %3, align 4
  br label %469

138:                                              ; preds = %114
  %139 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %140 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %12, align 4
  %142 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %143 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %142, i32 0, i32 4
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 4
  %145 = call i32 @mutex_init(i32* %144)
  %146 = load i32, i32* %5, align 4
  %147 = call i32 @NFP_CPP_INTERFACE_UNIT_of(i32 %146)
  %148 = and i32 %147, 3
  %149 = add nsw i32 %148, 4
  %150 = shl i32 %149, 4
  %151 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %152 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 8
  %154 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %155 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %154, i32 0, i32 4
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 1
  store i32 16, i32* %156, align 4
  %157 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %158 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %157, i32 0, i32 1
  %159 = load %struct.nfp_bar*, %struct.nfp_bar** %158, align 8
  %160 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %159, i64 0
  store %struct.nfp_bar* %160, %struct.nfp_bar** %13, align 8
  %161 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %162 = call i64 @nfp_bar_resource_len(%struct.nfp_bar* %161)
  %163 = load i64, i64* @NFP_PCI_MIN_MAP_SIZE, align 8
  %164 = icmp sge i64 %162, %163
  br i1 %164, label %165, label %174

165:                                              ; preds = %138
  %166 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %167 = call i32 @nfp_bar_resource_start(%struct.nfp_bar* %166)
  %168 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %169 = call i64 @nfp_bar_resource_len(%struct.nfp_bar* %168)
  %170 = call i8* @ioremap_nocache(i32 %167, i64 %169)
  %171 = bitcast i8* %170 to i32*
  %172 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %173 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %172, i32 0, i32 1
  store i32* %171, i32** %173, align 8
  br label %174

174:                                              ; preds = %165, %138
  %175 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %176 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %264

179:                                              ; preds = %174
  %180 = load i8*, i8** %15, align 8
  %181 = load i8*, i8** %16, align 8
  %182 = load i8*, i8** %15, align 8
  %183 = ptrtoint i8* %181 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = trunc i64 %185 to i32
  %187 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %180, i32 %186, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %188 = load i8*, i8** %15, align 8
  %189 = sext i32 %187 to i64
  %190 = getelementptr inbounds i8, i8* %188, i64 %189
  store i8* %190, i8** %15, align 8
  %191 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %192 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %191, i32 0, i32 3
  %193 = call i32 @atomic_inc(i32* %192)
  %194 = load i32, i32* %12, align 4
  %195 = add nsw i32 %194, -1
  store i32 %195, i32* %12, align 4
  %196 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %197 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %198 = load i32, i32* %6, align 4
  %199 = call i32 @nfp6000_bar_write(%struct.nfp6000_pcie* %196, %struct.nfp_bar* %197, i32 %198)
  %200 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %201 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %200, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* @NFP_PCIE_SRAM, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = getelementptr inbounds i32, i32* %205, i64 4096
  %207 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %208 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %207, i32 0, i32 4
  %209 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %208, i32 0, i32 3
  store i32* %206, i32** %209, align 8
  %210 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %211 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %210, i32 0, i32 5
  %212 = load %struct.TYPE_7__*, %struct.TYPE_7__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  switch i32 %214, label %242 [
    i32 131, label %215
    i32 130, label %232
    i32 129, label %232
    i32 128, label %232
  ]

215:                                              ; preds = %179
  %216 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %217 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %216, i32 0, i32 5
  %218 = load %struct.TYPE_7__*, %struct.TYPE_7__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = and i32 %220, 7
  store i32 %221, i32* %18, align 4
  %222 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %223 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %18, align 4
  %226 = call i32 @NFP_PCIE_BAR(i32 %225)
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  %229 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %230 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 2
  store i32* %228, i32** %231, align 8
  br label %254

232:                                              ; preds = %179, %179, %179
  %233 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %234 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = call i32 @NFP_PCIE_BAR(i32 0)
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %240 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 2
  store i32* %238, i32** %241, align 8
  br label %254

242:                                              ; preds = %179
  %243 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %244 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %247 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %246, i32 0, i32 5
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = call i32 (i32, i8*, ...) @dev_err(i32 %245, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %250)
  %252 = load i32, i32* @EINVAL, align 4
  %253 = sub nsw i32 0, %252
  store i32 %253, i32* %11, align 4
  br label %451

254:                                              ; preds = %232, %215
  %255 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %256 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* @NFP_PCIE_EM, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %262 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 1
  store i32* %260, i32** %263, align 8
  br label %264

264:                                              ; preds = %254, %174
  %265 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %266 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %265, i32 0, i32 5
  %267 = load %struct.TYPE_7__*, %struct.TYPE_7__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  switch i32 %269, label %272 [
    i32 131, label %270
    i32 130, label %271
    i32 129, label %271
    i32 128, label %271
  ]

270:                                              ; preds = %264
  store i32 1, i32* %14, align 4
  br label %284

271:                                              ; preds = %264, %264, %264
  store i32 4, i32* %14, align 4
  br label %284

272:                                              ; preds = %264
  %273 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %274 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %277 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %276, i32 0, i32 5
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = call i32 (i32, i8*, ...) @dev_err(i32 %275, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %280)
  %282 = load i32, i32* @EINVAL, align 4
  %283 = sub nsw i32 0, %282
  store i32 %283, i32* %11, align 4
  br label %451

284:                                              ; preds = %271, %270
  %285 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %286 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %285, i32 0, i32 1
  %287 = load %struct.nfp_bar*, %struct.nfp_bar** %286, align 8
  %288 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %287, i64 1
  store %struct.nfp_bar* %288, %struct.nfp_bar** %13, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = load i8*, i8** %16, align 8
  %291 = load i8*, i8** %15, align 8
  %292 = ptrtoint i8* %290 to i64
  %293 = ptrtoint i8* %291 to i64
  %294 = sub i64 %292, %293
  %295 = trunc i64 %294 to i32
  %296 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %289, i32 %295, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %297 = load i8*, i8** %15, align 8
  %298 = sext i32 %296 to i64
  %299 = getelementptr inbounds i8, i8* %297, i64 %298
  store i8* %299, i8** %15, align 8
  %300 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %301 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %300, i32 0, i32 3
  %302 = call i32 @atomic_inc(i32* %301)
  %303 = load i32, i32* %12, align 4
  %304 = add nsw i32 %303, -1
  store i32 %304, i32* %12, align 4
  %305 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %306 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %307 = load i32, i32* %7, align 4
  %308 = call i32 @nfp6000_bar_write(%struct.nfp6000_pcie* %305, %struct.nfp_bar* %306, i32 %307)
  store i32 0, i32* %10, align 4
  br label %309

309:                                              ; preds = %429, %284
  %310 = load i32, i32* %10, align 4
  %311 = icmp slt i32 %310, 4
  br i1 %311, label %312, label %432

312:                                              ; preds = %309
  %313 = load i32, i32* %10, align 4
  %314 = load i32, i32* @NFP_PCIE_EXPLICIT_BARS, align 4
  %315 = icmp sge i32 %313, %314
  br i1 %315, label %320, label %316

316:                                              ; preds = %312
  %317 = load i32, i32* %10, align 4
  %318 = load i32, i32* %14, align 4
  %319 = icmp sge i32 %317, %318
  br i1 %319, label %320, label %329

320:                                              ; preds = %316, %312
  %321 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %322 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %321, i32 0, i32 4
  %323 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %322, i32 0, i32 2
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %323, align 8
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i64 %326
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 2
  store i64 0, i64* %328, align 8
  br label %429

329:                                              ; preds = %316
  %330 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %331 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %330, i32 0, i32 1
  %332 = load %struct.nfp_bar*, %struct.nfp_bar** %331, align 8
  %333 = load i32, i32* %10, align 4
  %334 = add nsw i32 4, %333
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %332, i64 %335
  store %struct.nfp_bar* %336, %struct.nfp_bar** %13, align 8
  %337 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %338 = call i32 @nfp_bar_resource_start(%struct.nfp_bar* %337)
  %339 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %340 = call i64 @nfp_bar_resource_len(%struct.nfp_bar* %339)
  %341 = call i8* @ioremap_nocache(i32 %338, i64 %340)
  %342 = bitcast i8* %341 to i32*
  %343 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %344 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %343, i32 0, i32 1
  store i32* %342, i32** %344, align 8
  %345 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %346 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = icmp ne i32* %347, null
  br i1 %348, label %349, label %418

349:                                              ; preds = %329
  %350 = load i8*, i8** %15, align 8
  %351 = load i8*, i8** %16, align 8
  %352 = load i8*, i8** %15, align 8
  %353 = ptrtoint i8* %351 to i64
  %354 = ptrtoint i8* %352 to i64
  %355 = sub i64 %353, %354
  %356 = trunc i64 %355 to i32
  %357 = load i32, i32* %10, align 4
  %358 = add nsw i32 4, %357
  %359 = load i32, i32* %10, align 4
  %360 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %350, i32 %356, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %358, i32 %359)
  %361 = load i8*, i8** %15, align 8
  %362 = sext i32 %360 to i64
  %363 = getelementptr inbounds i8, i8* %361, i64 %362
  store i8* %363, i8** %15, align 8
  %364 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %365 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %364, i32 0, i32 3
  %366 = call i32 @atomic_inc(i32* %365)
  %367 = load i32, i32* %12, align 4
  %368 = add nsw i32 %367, -1
  store i32 %368, i32* %12, align 4
  %369 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %370 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %369, i32 0, i32 2
  %371 = load i64, i64* %370, align 8
  %372 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %373 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %372, i32 0, i32 4
  %374 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %373, i32 0, i32 2
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %374, align 8
  %376 = load i32, i32* %10, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 2
  store i64 %371, i64* %379, align 8
  %380 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %381 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %380, i32 0, i32 1
  %382 = load i32*, i32** %381, align 8
  %383 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %384 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %383, i32 0, i32 4
  %385 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %384, i32 0, i32 2
  %386 = load %struct.TYPE_5__*, %struct.TYPE_5__** %385, align 8
  %387 = load i32, i32* %10, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %389, i32 0, i32 1
  store i32* %382, i32** %390, align 8
  %391 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %392 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %393 = load i32, i32* %10, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 %394
  %396 = load i32, i32* %395, align 4
  %397 = call i32 @nfp6000_bar_write(%struct.nfp6000_pcie* %391, %struct.nfp_bar* %392, i32 %396)
  store i32 0, i32* %19, align 4
  br label %398

398:                                              ; preds = %414, %349
  %399 = load i32, i32* %19, align 4
  %400 = icmp slt i32 %399, 4
  br i1 %400, label %401, label %417

401:                                              ; preds = %398
  %402 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %403 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %402, i32 0, i32 4
  %404 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %403, i32 0, i32 2
  %405 = load %struct.TYPE_5__*, %struct.TYPE_5__** %404, align 8
  %406 = load i32, i32* %10, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i64 %407
  %409 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %408, i32 0, i32 0
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %19, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  store i32 1, i32* %413, align 4
  br label %414

414:                                              ; preds = %401
  %415 = load i32, i32* %19, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %19, align 4
  br label %398

417:                                              ; preds = %398
  br label %418

418:                                              ; preds = %417, %329
  %419 = load %struct.nfp_bar*, %struct.nfp_bar** %13, align 8
  %420 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %419, i32 0, i32 1
  %421 = load i32*, i32** %420, align 8
  %422 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %423 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %422, i32 0, i32 3
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i32**, i32*** %424, align 8
  %426 = load i32, i32* %10, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds i32*, i32** %425, i64 %427
  store i32* %421, i32** %428, align 8
  br label %429

429:                                              ; preds = %418, %320
  %430 = load i32, i32* %10, align 4
  %431 = add nsw i32 %430, 1
  store i32 %431, i32* %10, align 4
  br label %309

432:                                              ; preds = %309
  %433 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %434 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %433, i32 0, i32 1
  %435 = load %struct.nfp_bar*, %struct.nfp_bar** %434, align 8
  %436 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %435, i64 0
  %437 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %438 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @bar_cmp, align 4
  %441 = call i32 @sort(%struct.nfp_bar* %436, i32 %439, i32 72, i32 %440, i32* null)
  %442 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %443 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %442, i32 0, i32 2
  %444 = load i32, i32* %443, align 8
  %445 = getelementptr inbounds [196 x i8], [196 x i8]* %9, i64 0, i64 0
  %446 = load i32, i32* %12, align 4
  %447 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %448 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = call i32 @dev_info(i32 %444, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* %445, i32 %446, i32 %449)
  store i32 0, i32* %3, align 4
  br label %469

451:                                              ; preds = %272, %242
  %452 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %453 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %452, i32 0, i32 1
  %454 = load %struct.nfp_bar*, %struct.nfp_bar** %453, align 8
  %455 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %454, i64 0
  %456 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %455, i32 0, i32 1
  %457 = load i32*, i32** %456, align 8
  %458 = icmp ne i32* %457, null
  br i1 %458, label %459, label %467

459:                                              ; preds = %451
  %460 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %461 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %460, i32 0, i32 1
  %462 = load %struct.nfp_bar*, %struct.nfp_bar** %461, align 8
  %463 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %462, i64 0
  %464 = getelementptr inbounds %struct.nfp_bar, %struct.nfp_bar* %463, i32 0, i32 1
  %465 = load i32*, i32** %464, align 8
  %466 = call i32 @iounmap(i32* %465)
  br label %467

467:                                              ; preds = %459, %451
  %468 = load i32, i32* %11, align 4
  store i32 %468, i32* %3, align 4
  br label %469

469:                                              ; preds = %467, %432, %131
  %470 = load i32, i32* %3, align 4
  ret i32 %470
}

declare dso_local i32 @NFP_PCIE_BAR_PCIE2CPP_MapType(i32) #1

declare dso_local i32 @NFP_PCIE_BAR_PCIE2CPP_Target_BaseAddress(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @ARRAY_SIZE(%struct.nfp_bar*) #1

declare dso_local i32 @resource_type(%struct.resource*) #1

declare dso_local i64 @nfp_bar_resource_len(%struct.nfp_bar*) #1

declare dso_local i64 @fls(i64) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @NFP_CPP_INTERFACE_UNIT_of(i32) #1

declare dso_local i8* @ioremap_nocache(i32, i64) #1

declare dso_local i32 @nfp_bar_resource_start(%struct.nfp_bar*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @nfp6000_bar_write(%struct.nfp6000_pcie*, %struct.nfp_bar*, i32) #1

declare dso_local i32 @NFP_PCIE_BAR(i32) #1

declare dso_local i32 @sort(%struct.nfp_bar*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @iounmap(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
