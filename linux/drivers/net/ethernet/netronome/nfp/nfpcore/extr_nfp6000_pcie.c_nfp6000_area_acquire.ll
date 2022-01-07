; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_area_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_nfp6000_area_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_area = type { i32 }
%struct.nfp6000_pcie = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.nfp6000_area_priv = type { i32, i32, %struct.TYPE_11__*, i32*, i64, i64, %struct.TYPE_10__, i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_10__ = type { i32, i64, i64, i32 }
%struct.TYPE_9__ = type { i32 }

@NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL = common dso_local global i64 0, align 8
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Can't ioremap() a %d byte region of BAR %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp_area*)* @nfp6000_area_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp6000_area_acquire(%struct.nfp_cpp_area* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_cpp_area*, align 8
  %4 = alloca %struct.nfp6000_pcie*, align 8
  %5 = alloca %struct.nfp6000_area_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_cpp_area* %0, %struct.nfp_cpp_area** %3, align 8
  %8 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %9 = call i32 @nfp_cpp_area_cpp(%struct.nfp_cpp_area* %8)
  %10 = call %struct.nfp6000_pcie* @nfp_cpp_priv(i32 %9)
  store %struct.nfp6000_pcie* %10, %struct.nfp6000_pcie** %4, align 8
  %11 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %12 = call %struct.nfp6000_area_priv* @nfp_cpp_area_priv(%struct.nfp_cpp_area* %11)
  store %struct.nfp6000_area_priv* %12, %struct.nfp6000_area_priv** %5, align 8
  %13 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %14 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = icmp ne %struct.TYPE_11__* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %19 = call i32 @priv_area_get(%struct.nfp_cpp_area* %18)
  store i32 0, i32* %2, align 4
  br label %228

20:                                               ; preds = %1
  %21 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %22 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %23 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %22, i32 0, i32 8
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %26 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %25, i32 0, i32 10
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %29 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %32 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %35 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %34, i32 0, i32 4
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %38 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %37, i32 0, i32 9
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @nfp_alloc_bar(%struct.nfp6000_pcie* %21, i32 %24, i32 %27, i32 %30, i32 %33, i64 %36, i32 %40, i32 1)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %7, align 4
  br label %226

46:                                               ; preds = %20
  %47 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %48 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %47, i32 0, i32 1
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i64 %51
  %53 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %54 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %53, i32 0, i32 2
  store %struct.TYPE_11__* %52, %struct.TYPE_11__** %54, align 8
  %55 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %56 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = call i64 @nfp_bar_maptype(%struct.TYPE_11__* %57)
  %59 = load i64, i64* @NFP_PCIE_BAR_PCIE2CPP_MapType_GENERAL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %46
  %62 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %63 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %66 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %65, i32 0, i32 2
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = call i32 @NFP_PCIE_P2C_GENERAL_SIZE(%struct.TYPE_11__* %67)
  %69 = sub nsw i32 %68, 1
  %70 = and i32 %64, %69
  %71 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %72 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %74 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %77 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %76, i32 0, i32 8
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @NFP_PCIE_P2C_GENERAL_TARGET_OFFSET(%struct.TYPE_11__* %75, i32 %78)
  %80 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %81 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %87 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %86, i32 0, i32 2
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %90 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %89, i32 0, i32 7
  %91 = load i32, i32* %90, align 8
  %92 = call i64 @NFP_PCIE_P2C_GENERAL_TOKEN_OFFSET(%struct.TYPE_11__* %88, i32 %91)
  %93 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %94 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 4
  br label %111

99:                                               ; preds = %46
  %100 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %101 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %104 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %103, i32 0, i32 2
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %102, %107
  %109 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %110 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  br label %111

111:                                              ; preds = %99, %61
  %112 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %113 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %112, i32 0, i32 2
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** %113, align 8
  %115 = call i64 @nfp_bar_resource_start(%struct.TYPE_11__* %114)
  %116 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %117 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %115, %119
  %121 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %122 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %121, i32 0, i32 5
  store i64 %120, i64* %122, align 8
  %123 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %124 = call i32 @nfp_cpp_area_name(%struct.nfp_cpp_area* %123)
  %125 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %126 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 3
  store i32 %124, i32* %127, align 8
  %128 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %129 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %128, i32 0, i32 5
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %132 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %131, i32 0, i32 6
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 1
  store i64 %130, i64* %133, align 8
  %134 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %135 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %134, i32 0, i32 6
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %139 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %138, i32 0, i32 4
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %137, %140
  %142 = sub nsw i64 %141, 1
  %143 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %144 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  store i64 %142, i64* %145, align 8
  %146 = load i32, i32* @IORESOURCE_MEM, align 4
  %147 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %148 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %147, i32 0, i32 6
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  store i32 %146, i32* %149, align 8
  %150 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %151 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %150, i32 0, i32 2
  %152 = load %struct.TYPE_11__*, %struct.TYPE_11__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %169

156:                                              ; preds = %111
  %157 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %158 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %157, i32 0, i32 2
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %163 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  %167 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %168 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %167, i32 0, i32 3
  store i32* %166, i32** %168, align 8
  br label %179

169:                                              ; preds = %111
  %170 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %171 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %170, i32 0, i32 5
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %174 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %173, i32 0, i32 4
  %175 = load i64, i64* %174, align 8
  %176 = call i32* @ioremap_nocache(i64 %172, i64 %175)
  %177 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %178 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %177, i32 0, i32 3
  store i32* %176, i32** %178, align 8
  br label %179

179:                                              ; preds = %169, %156
  %180 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %181 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = call i64 @IS_ERR_OR_NULL(i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %215

185:                                              ; preds = %179
  %186 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %187 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %190 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %189, i32 0, i32 4
  %191 = load i64, i64* %190, align 8
  %192 = trunc i64 %191 to i32
  %193 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %194 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %193, i32 0, i32 2
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @dev_err(i32 %188, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %192, i32 %197)
  %199 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %200 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %199, i32 0, i32 3
  %201 = load i32*, i32** %200, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %185
  %204 = load i32, i32* @ENOMEM, align 4
  %205 = sub nsw i32 0, %204
  br label %211

206:                                              ; preds = %185
  %207 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %208 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %207, i32 0, i32 3
  %209 = load i32*, i32** %208, align 8
  %210 = call i32 @PTR_ERR(i32* %209)
  br label %211

211:                                              ; preds = %206, %203
  %212 = phi i32 [ %205, %203 ], [ %210, %206 ]
  store i32 %212, i32* %7, align 4
  %213 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %214 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %213, i32 0, i32 3
  store i32* null, i32** %214, align 8
  br label %218

215:                                              ; preds = %179
  %216 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %217 = call i32 @priv_area_get(%struct.nfp_cpp_area* %216)
  store i32 0, i32* %2, align 4
  br label %228

218:                                              ; preds = %211
  %219 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %4, align 8
  %220 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %221 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %220, i32 0, i32 2
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = call i32 @nfp_bar_put(%struct.nfp6000_pcie* %219, %struct.TYPE_11__* %222)
  %224 = load %struct.nfp6000_area_priv*, %struct.nfp6000_area_priv** %5, align 8
  %225 = getelementptr inbounds %struct.nfp6000_area_priv, %struct.nfp6000_area_priv* %224, i32 0, i32 2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %225, align 8
  br label %226

226:                                              ; preds = %218, %44
  %227 = load i32, i32* %7, align 4
  store i32 %227, i32* %2, align 4
  br label %228

228:                                              ; preds = %226, %215, %17
  %229 = load i32, i32* %2, align 4
  ret i32 %229
}

declare dso_local %struct.nfp6000_pcie* @nfp_cpp_priv(i32) #1

declare dso_local i32 @nfp_cpp_area_cpp(%struct.nfp_cpp_area*) #1

declare dso_local %struct.nfp6000_area_priv* @nfp_cpp_area_priv(%struct.nfp_cpp_area*) #1

declare dso_local i32 @priv_area_get(%struct.nfp_cpp_area*) #1

declare dso_local i32 @nfp_alloc_bar(%struct.nfp6000_pcie*, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @nfp_bar_maptype(%struct.TYPE_11__*) #1

declare dso_local i32 @NFP_PCIE_P2C_GENERAL_SIZE(%struct.TYPE_11__*) #1

declare dso_local i64 @NFP_PCIE_P2C_GENERAL_TARGET_OFFSET(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @NFP_PCIE_P2C_GENERAL_TOKEN_OFFSET(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @nfp_bar_resource_start(%struct.TYPE_11__*) #1

declare dso_local i32 @nfp_cpp_area_name(%struct.nfp_cpp_area*) #1

declare dso_local i32* @ioremap_nocache(i64, i64) #1

declare dso_local i64 @IS_ERR_OR_NULL(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @nfp_bar_put(%struct.nfp6000_pcie*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
