; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_intel_mgbe_common_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_pci.c_intel_mgbe_common_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.plat_stmmacenet_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, %struct.TYPE_10__*, %struct.TYPE_9__*, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, i32*, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32, i8* }
%struct.TYPE_6__ = type { i32, i32, i32, i8* }

@MTL_RX_ALGORITHM_SP = common dso_local global i32 0, align 4
@MTL_QUEUE_DCB = common dso_local global i8* null, align 8
@MTL_TX_ALGORITHM_WRR = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"stmmac-clk\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Fail to register stmmac-clk\0A\00", align 1
@HASH_TABLE_SIZE = common dso_local global i32 0, align 4
@JUMBO_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.plat_stmmacenet_data*)* @intel_mgbe_common_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_mgbe_common_data(%struct.pci_dev* %0, %struct.plat_stmmacenet_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.plat_stmmacenet_data*, align 8
  %6 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.plat_stmmacenet_data* %1, %struct.plat_stmmacenet_data** %5, align 8
  %7 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %8 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %7, i32 0, i32 0
  store i32 5, i32* %8, align 8
  %9 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %10 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %9, i32 0, i32 21
  store i64 0, i64* %10, align 8
  %11 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %12 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %11, i32 0, i32 1
  store i32 1, i32* %12, align 4
  %13 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %14 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %13, i32 0, i32 20
  store i64 0, i64* %14, align 8
  %15 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %16 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %15, i32 0, i32 2
  store i32 1, i32* %16, align 8
  %17 = load i32, i32* @MTL_RX_ALGORITHM_SP, align 4
  %18 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %19 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %18, i32 0, i32 19
  store i32 %17, i32* %19, align 8
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %57, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %23 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %20
  %27 = load i8*, i8** @MTL_QUEUE_DCB, align 8
  %28 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %29 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %28, i32 0, i32 18
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 3
  store i8* %27, i8** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %37 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %36, i32 0, i32 18
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %35, i32* %42, align 8
  %43 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %44 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %43, i32 0, i32 18
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %51 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %50, i32 0, i32 18
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i32 0, i32* %56, align 8
  br label %57

57:                                               ; preds = %26
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %20

60:                                               ; preds = %20
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %83, %60
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %64 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %61
  %68 = load i8*, i8** @MTL_QUEUE_DCB, align 8
  %69 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %70 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %69, i32 0, i32 16
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i8* %68, i8** %75, align 8
  %76 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %77 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %76, i32 0, i32 16
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 0, i32* %82, align 8
  br label %83

83:                                               ; preds = %67
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %61

86:                                               ; preds = %61
  %87 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %88 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, 4096
  %91 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %92 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 4
  %93 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %94 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = mul nsw i32 %95, 4096
  %97 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %98 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* @MTL_TX_ALGORITHM_WRR, align 4
  %100 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %101 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %100, i32 0, i32 17
  store i32 %99, i32* %101, align 8
  %102 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %103 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %102, i32 0, i32 16
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i64 0
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 1
  store i32 9, i32* %106, align 4
  %107 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %108 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %107, i32 0, i32 16
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  store i32 10, i32* %111, align 4
  %112 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %113 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %112, i32 0, i32 16
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i64 2
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  store i32 11, i32* %116, align 4
  %117 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %118 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %117, i32 0, i32 16
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i64 3
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 1
  store i32 12, i32* %121, align 4
  %122 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %123 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %122, i32 0, i32 16
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i64 4
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 1
  store i32 13, i32* %126, align 4
  %127 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %128 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %127, i32 0, i32 16
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i64 5
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %130, i32 0, i32 1
  store i32 14, i32* %131, align 4
  %132 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %133 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %132, i32 0, i32 16
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i64 6
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  store i32 15, i32* %136, align 4
  %137 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %138 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %137, i32 0, i32 16
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i64 7
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 1
  store i32 16, i32* %141, align 4
  %142 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %143 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %142, i32 0, i32 15
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %147 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %146, i32 0, i32 14
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 0
  store i32 32, i32* %149, align 8
  %150 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %151 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %150, i32 0, i32 14
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 1
  store i32 1, i32* %153, align 4
  %154 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %155 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %154, i32 0, i32 14
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 4
  store i64 0, i64* %157, align 8
  %158 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %159 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %158, i32 0, i32 14
  %160 = load %struct.TYPE_9__*, %struct.TYPE_9__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %160, i32 0, i32 3
  store i64 0, i64* %161, align 8
  %162 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %163 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %162, i32 0, i32 14
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 2
  store i64 0, i64* %165, align 8
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 0
  %168 = load i32, i32* @GFP_KERNEL, align 4
  %169 = call %struct.TYPE_10__* @devm_kzalloc(i32* %167, i32 32, i32 %168)
  %170 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %171 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %170, i32 0, i32 13
  store %struct.TYPE_10__* %169, %struct.TYPE_10__** %171, align 8
  %172 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %173 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %172, i32 0, i32 13
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = icmp ne %struct.TYPE_10__* %174, null
  br i1 %175, label %179, label %176

176:                                              ; preds = %86
  %177 = load i32, i32* @ENOMEM, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %251

179:                                              ; preds = %86
  %180 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %181 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %180, i32 0, i32 13
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 4
  store i64 0, i64* %183, align 8
  %184 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %185 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %184, i32 0, i32 13
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 3
  store i64 0, i64* %187, align 8
  %188 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %189 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %188, i32 0, i32 13
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  store i32 1, i32* %191, align 8
  %192 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %193 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %192, i32 0, i32 13
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 1
  store i32 1, i32* %195, align 4
  %196 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %197 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %196, i32 0, i32 13
  %198 = load %struct.TYPE_10__*, %struct.TYPE_10__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %198, i32 0, i32 2
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  store i32 4, i32* %201, align 4
  %202 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %203 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %202, i32 0, i32 13
  %204 = load %struct.TYPE_10__*, %struct.TYPE_10__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = getelementptr inbounds i32, i32* %206, i64 1
  store i32 8, i32* %207, align 4
  %208 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %209 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %208, i32 0, i32 13
  %210 = load %struct.TYPE_10__*, %struct.TYPE_10__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %210, i32 0, i32 2
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  store i32 16, i32* %213, align 4
  %214 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %215 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %214, i32 0, i32 11
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %218 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %217, i32 0, i32 12
  store i32 %216, i32* %218, align 4
  %219 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %220 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %219, i32 0, i32 0
  %221 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %222 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %221, i32 0, i32 11
  %223 = load i32, i32* %222, align 8
  %224 = call i32* @clk_register_fixed_rate(i32* %220, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* null, i32 0, i32 %223)
  %225 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %226 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %225, i32 0, i32 10
  store i32* %224, i32** %226, align 8
  %227 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %228 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %227, i32 0, i32 10
  %229 = load i32*, i32** %228, align 8
  %230 = call i64 @IS_ERR(i32* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %179
  %233 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %234 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %233, i32 0, i32 0
  %235 = call i32 @dev_warn(i32* %234, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %236 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %237 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %236, i32 0, i32 10
  store i32* null, i32** %237, align 8
  br label %238

238:                                              ; preds = %232, %179
  %239 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %240 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %239, i32 0, i32 10
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @clk_prepare_enable(i32* %241)
  %243 = load i32, i32* @HASH_TABLE_SIZE, align 4
  %244 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %245 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %244, i32 0, i32 9
  store i32 %243, i32* %245, align 4
  %246 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %247 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %246, i32 0, i32 7
  store i32 1, i32* %247, align 4
  %248 = load i32, i32* @JUMBO_LEN, align 4
  %249 = load %struct.plat_stmmacenet_data*, %struct.plat_stmmacenet_data** %5, align 8
  %250 = getelementptr inbounds %struct.plat_stmmacenet_data, %struct.plat_stmmacenet_data* %249, i32 0, i32 8
  store i32 %248, i32* %250, align 8
  store i32 0, i32* %3, align 4
  br label %251

251:                                              ; preds = %238, %176
  %252 = load i32, i32* %3, align 4
  ret i32 %252
}

declare dso_local %struct.TYPE_10__* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32* @clk_register_fixed_rate(i32*, i8*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @clk_prepare_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
