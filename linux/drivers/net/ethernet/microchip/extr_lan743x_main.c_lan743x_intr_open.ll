; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_intr_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_adapter = type { %struct.lan743x_adapter*, %struct.TYPE_6__, %struct.lan743x_adapter*, i32, %struct.TYPE_7__*, %struct.lan743x_intr }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.lan743x_intr = type { i32, i32, i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.msix_entry = type { i32, i32 }

@LAN743X_MAX_VECTOR_COUNT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LAN743X_USED_TX_CHANNELS = common dso_local global i32 0, align 4
@LAN743X_USED_RX_CHANNELS = common dso_local global i32 0, align 4
@INTR_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"using MSIX interrupts, number of vectors = %d\0A\00", align 1
@LAN743X_CSR_FLAG_IS_A0 = common dso_local global i32 0, align 4
@INTR_FLAG_MSI_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"using MSI interrupts, number of vectors = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"using legacy interrupts\0A\00", align 1
@INT_VEC_EN_CLR = common dso_local global i32 0, align 4
@INT_VEC_MAP0 = common dso_local global i32 0, align 4
@INT_VEC_MAP1 = common dso_local global i32 0, align 4
@INT_VEC_MAP2 = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_IRQ_SHARED = common dso_local global i32 0, align 4
@LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C = common dso_local global i32 0, align 4
@INT_BIT_ALL_RX_ = common dso_local global i32 0, align 4
@INT_BIT_ALL_TX_ = common dso_local global i32 0, align 4
@INT_BIT_ALL_OTHER_ = common dso_local global i32 0, align 4
@lan743x_intr_shared_isr = common dso_local global i32 0, align 4
@INT_VEC_EN_SET = common dso_local global i32 0, align 4
@INT_MOD_CFG0 = common dso_local global i32 0, align 4
@LAN743X_INT_MOD = common dso_local global i32 0, align 4
@INT_MOD_CFG1 = common dso_local global i32 0, align 4
@INT_MOD_CFG2 = common dso_local global i32 0, align 4
@INT_MOD_CFG3 = common dso_local global i32 0, align 4
@INT_MOD_CFG4 = common dso_local global i32 0, align 4
@INT_MOD_CFG5 = common dso_local global i32 0, align 4
@INT_MOD_CFG6 = common dso_local global i32 0, align 4
@INT_MOD_CFG7 = common dso_local global i32 0, align 4
@INT_MOD_MAP0 = common dso_local global i32 0, align 4
@INT_MOD_MAP1 = common dso_local global i32 0, align 4
@INT_MOD_MAP2 = common dso_local global i32 0, align 4
@INT_EN_SET = common dso_local global i32 0, align 4
@INT_BIT_MAS_ = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR = common dso_local global i32 0, align 4
@lan743x_tx_isr = common dso_local global i32 0, align 4
@LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR = common dso_local global i32 0, align 4
@INT_VEC_EN_AUTO_CLR = common dso_local global i32 0, align 4
@lan743x_rx_isr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_adapter*)* @lan743x_intr_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_intr_open(%struct.lan743x_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lan743x_intr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.lan743x_adapter* %0, %struct.lan743x_adapter** %3, align 8
  %20 = load i32, i32* @LAN743X_MAX_VECTOR_COUNT, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %4, align 8
  %23 = alloca %struct.msix_entry, i64 %21, align 16
  store i64 %21, i64* %5, align 8
  %24 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %24, i32 0, i32 5
  store %struct.lan743x_intr* %25, %struct.lan743x_intr** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %29 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %23, i64 0
  %31 = load i32, i32* @LAN743X_MAX_VECTOR_COUNT, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 8, %32
  %34 = trunc i64 %33 to i32
  %35 = call i32 @memset(%struct.msix_entry* %30, i32 0, i32 %34)
  store i32 0, i32* %11, align 4
  br label %36

36:                                               ; preds = %46, %1
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @LAN743X_MAX_VECTOR_COUNT, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %23, i64 %43
  %45 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  br label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %51 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %50, i32 0, i32 4
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %51, align 8
  %53 = load i32, i32* @LAN743X_USED_TX_CHANNELS, align 4
  %54 = add nsw i32 1, %53
  %55 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  %56 = add nsw i32 %54, %55
  %57 = call i32 @pci_enable_msix_range(%struct.TYPE_7__* %52, %struct.msix_entry* %23, i32 1, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %103

60:                                               ; preds = %49
  %61 = load i32, i32* @INTR_FLAG_MSIX_ENABLED, align 4
  %62 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %63 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %68 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 8
  %69 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %70 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %69, i32 0, i32 1
  store i32 1, i32* %70, align 4
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %90, %60
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %74 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %23, i64 %79
  %81 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %84 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %83, i32 0, i32 3
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  store i32 %82, i32* %89, align 4
  br label %90

90:                                               ; preds = %77
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %71

93:                                               ; preds = %71
  %94 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %95 = load i32, i32* @ifup, align 4
  %96 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %100 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct.lan743x_adapter*, i32, i32, i8*, ...) @netif_info(%struct.lan743x_adapter* %94, i32 %95, i32 %98, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %93, %49
  %104 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %105 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %153, label %108

108:                                              ; preds = %103
  %109 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %110 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @LAN743X_CSR_FLAG_IS_A0, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %152, label %116

116:                                              ; preds = %108
  %117 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %117, i32 0, i32 4
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %118, align 8
  %120 = call i32 @pci_enable_msi(%struct.TYPE_7__* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %151, label %122

122:                                              ; preds = %116
  %123 = load i32, i32* @INTR_FLAG_MSI_ENABLED, align 4
  %124 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %125 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = or i32 %126, %123
  store i32 %127, i32* %125, align 8
  %128 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %129 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %128, i32 0, i32 0
  store i32 1, i32* %129, align 8
  %130 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %131 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %130, i32 0, i32 1
  store i32 1, i32* %131, align 4
  %132 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %132, i32 0, i32 4
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %138 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %137, i32 0, i32 3
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i64 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 1
  store i32 %136, i32* %141, align 4
  %142 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %143 = load i32, i32* @ifup, align 4
  %144 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %145 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %148 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 (%struct.lan743x_adapter*, i32, i32, i8*, ...) @netif_info(%struct.lan743x_adapter* %142, i32 %143, i32 %146, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  br label %151

151:                                              ; preds = %122, %116
  br label %152

152:                                              ; preds = %151, %108
  br label %153

153:                                              ; preds = %152, %103
  %154 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %155 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %153
  %159 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %160 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %159, i32 0, i32 0
  store i32 1, i32* %160, align 8
  %161 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %162 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %161, i32 0, i32 1
  store i32 0, i32* %162, align 4
  %163 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %164 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %167 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %166, i32 0, i32 3
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i64 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 1
  store i32 %165, i32* %170, align 4
  %171 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %172 = load i32, i32* @ifup, align 4
  %173 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %174 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (%struct.lan743x_adapter*, i32, i32, i8*, ...) @netif_info(%struct.lan743x_adapter* %171, i32 %172, i32 %175, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %158, %153
  %178 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %179 = load i32, i32* @INT_VEC_EN_CLR, align 4
  %180 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %178, i32 %179, i32 -1)
  %181 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %182 = load i32, i32* @INT_VEC_MAP0, align 4
  %183 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %181, i32 %182, i32 0)
  %184 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %185 = load i32, i32* @INT_VEC_MAP1, align 4
  %186 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %184, i32 %185, i32 0)
  %187 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %188 = load i32, i32* @INT_VEC_MAP2, align 4
  %189 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %187, i32 %188, i32 0)
  %190 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ, align 4
  %191 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C, align 4
  %192 = or i32 %190, %191
  %193 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK, align 4
  %194 = or i32 %192, %193
  %195 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR, align 4
  %196 = or i32 %194, %195
  store i32 %196, i32* %12, align 4
  %197 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %198 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %177
  %202 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR, align 4
  %203 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* %12, align 4
  %206 = or i32 %205, %204
  store i32 %206, i32* %12, align 4
  br label %215

207:                                              ; preds = %177
  %208 = load i32, i32* @LAN743X_VECTOR_FLAG_MASTER_ENABLE_CLEAR, align 4
  %209 = load i32, i32* @LAN743X_VECTOR_FLAG_MASTER_ENABLE_SET, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @LAN743X_VECTOR_FLAG_IRQ_SHARED, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* %12, align 4
  %214 = or i32 %213, %212
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %207, %201
  %216 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %216, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = load i32, i32* @LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %246

223:                                              ; preds = %215
  %224 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ, align 4
  %225 = xor i32 %224, -1
  %226 = load i32, i32* %12, align 4
  %227 = and i32 %226, %225
  store i32 %227, i32* %12, align 4
  %228 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C, align 4
  %229 = xor i32 %228, -1
  %230 = load i32, i32* %12, align 4
  %231 = and i32 %230, %229
  store i32 %231, i32* %12, align 4
  %232 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR, align 4
  %233 = xor i32 %232, -1
  %234 = load i32, i32* %12, align 4
  %235 = and i32 %234, %233
  store i32 %235, i32* %12, align 4
  %236 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK, align 4
  %237 = xor i32 %236, -1
  %238 = load i32, i32* %12, align 4
  %239 = and i32 %238, %237
  store i32 %239, i32* %12, align 4
  %240 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_R2C, align 4
  %241 = load i32, i32* %12, align 4
  %242 = or i32 %241, %240
  store i32 %242, i32* %12, align 4
  %243 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_R2C, align 4
  %244 = load i32, i32* %12, align 4
  %245 = or i32 %244, %243
  store i32 %245, i32* %12, align 4
  br label %246

246:                                              ; preds = %223, %215
  %247 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %248 = load i32, i32* %12, align 4
  %249 = load i32, i32* @INT_BIT_ALL_RX_, align 4
  %250 = load i32, i32* @INT_BIT_ALL_TX_, align 4
  %251 = or i32 %249, %250
  %252 = load i32, i32* @INT_BIT_ALL_OTHER_, align 4
  %253 = or i32 %251, %252
  %254 = load i32, i32* @lan743x_intr_shared_isr, align 4
  %255 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %256 = call i32 @lan743x_intr_register_isr(%struct.lan743x_adapter* %247, i32 0, i32 %248, i32 %253, i32 %254, %struct.lan743x_adapter* %255)
  store i32 %256, i32* %10, align 4
  %257 = load i32, i32* %10, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %260

259:                                              ; preds = %246
  br label %566

260:                                              ; preds = %246
  %261 = call i32 @INTR_FLAG_IRQ_REQUESTED(i32 0)
  %262 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %263 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 8
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 8
  %266 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %267 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %260
  %271 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %272 = load i32, i32* @INT_VEC_EN_SET, align 4
  %273 = call i32 @INT_VEC_EN_(i32 0)
  %274 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %271, i32 %272, i32 %273)
  br label %275

275:                                              ; preds = %270, %260
  %276 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %277 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 8
  %280 = load i32, i32* @LAN743X_CSR_FLAG_IS_A0, align 4
  %281 = and i32 %279, %280
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %325, label %283

283:                                              ; preds = %275
  %284 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %285 = load i32, i32* @INT_MOD_CFG0, align 4
  %286 = load i32, i32* @LAN743X_INT_MOD, align 4
  %287 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %284, i32 %285, i32 %286)
  %288 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %289 = load i32, i32* @INT_MOD_CFG1, align 4
  %290 = load i32, i32* @LAN743X_INT_MOD, align 4
  %291 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %288, i32 %289, i32 %290)
  %292 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %293 = load i32, i32* @INT_MOD_CFG2, align 4
  %294 = load i32, i32* @LAN743X_INT_MOD, align 4
  %295 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %292, i32 %293, i32 %294)
  %296 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %297 = load i32, i32* @INT_MOD_CFG3, align 4
  %298 = load i32, i32* @LAN743X_INT_MOD, align 4
  %299 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %296, i32 %297, i32 %298)
  %300 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %301 = load i32, i32* @INT_MOD_CFG4, align 4
  %302 = load i32, i32* @LAN743X_INT_MOD, align 4
  %303 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %300, i32 %301, i32 %302)
  %304 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %305 = load i32, i32* @INT_MOD_CFG5, align 4
  %306 = load i32, i32* @LAN743X_INT_MOD, align 4
  %307 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %304, i32 %305, i32 %306)
  %308 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %309 = load i32, i32* @INT_MOD_CFG6, align 4
  %310 = load i32, i32* @LAN743X_INT_MOD, align 4
  %311 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %308, i32 %309, i32 %310)
  %312 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %313 = load i32, i32* @INT_MOD_CFG7, align 4
  %314 = load i32, i32* @LAN743X_INT_MOD, align 4
  %315 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %312, i32 %313, i32 %314)
  %316 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %317 = load i32, i32* @INT_MOD_MAP0, align 4
  %318 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %316, i32 %317, i32 21554)
  %319 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %320 = load i32, i32* @INT_MOD_MAP1, align 4
  %321 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %319, i32 %320, i32 1)
  %322 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %323 = load i32, i32* @INT_MOD_MAP2, align 4
  %324 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %322, i32 %323, i32 16777215)
  br label %325

325:                                              ; preds = %283, %275
  %326 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %327 = load i32, i32* @INT_EN_SET, align 4
  %328 = load i32, i32* @INT_BIT_MAS_, align 4
  %329 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %326, i32 %327, i32 %328)
  %330 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %331 = call i32 @lan743x_intr_test_isr(%struct.lan743x_adapter* %330)
  store i32 %331, i32* %10, align 4
  %332 = load i32, i32* %10, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %325
  br label %566

335:                                              ; preds = %325
  %336 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %337 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp sgt i32 %338, 1
  br i1 %339, label %340, label %442

340:                                              ; preds = %335
  %341 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %342 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sub nsw i32 %343, 1
  store i32 %344, i32* %13, align 4
  %345 = load i32, i32* %13, align 4
  %346 = load i32, i32* @LAN743X_USED_TX_CHANNELS, align 4
  %347 = icmp sgt i32 %345, %346
  br i1 %347, label %348, label %350

348:                                              ; preds = %340
  %349 = load i32, i32* @LAN743X_USED_TX_CHANNELS, align 4
  store i32 %349, i32* %13, align 4
  br label %350

350:                                              ; preds = %348, %340
  %351 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ, align 4
  %352 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C, align 4
  %353 = or i32 %351, %352
  %354 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK, align 4
  %355 = or i32 %353, %354
  %356 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR, align 4
  %357 = or i32 %355, %356
  %358 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR, align 4
  %359 = or i32 %357, %358
  %360 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET, align 4
  %361 = or i32 %359, %360
  store i32 %361, i32* %12, align 4
  %362 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %363 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %369, label %377

369:                                              ; preds = %350
  %370 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET, align 4
  %371 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET, align 4
  %372 = or i32 %370, %371
  %373 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR, align 4
  %374 = or i32 %372, %373
  %375 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR, align 4
  %376 = or i32 %374, %375
  store i32 %376, i32* %12, align 4
  br label %377

377:                                              ; preds = %369, %350
  store i32 0, i32* %11, align 4
  br label %378

378:                                              ; preds = %438, %377
  %379 = load i32, i32* %11, align 4
  %380 = load i32, i32* %13, align 4
  %381 = icmp slt i32 %379, %380
  br i1 %381, label %382, label %441

382:                                              ; preds = %378
  %383 = load i32, i32* %11, align 4
  %384 = call i32 @INT_BIT_DMA_TX_(i32 %383)
  store i32 %384, i32* %14, align 4
  %385 = load i32, i32* %11, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %15, align 4
  %387 = load i32, i32* %11, align 4
  %388 = load i32, i32* %15, align 4
  %389 = call i32 @INT_VEC_MAP1_TX_VEC_(i32 %387, i32 %388)
  %390 = load i32, i32* %9, align 4
  %391 = or i32 %390, %389
  store i32 %391, i32* %9, align 4
  %392 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %393 = load i32, i32* @INT_VEC_MAP1, align 4
  %394 = load i32, i32* %9, align 4
  %395 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %392, i32 %393, i32 %394)
  %396 = load i32, i32* %14, align 4
  %397 = xor i32 %396, -1
  %398 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %399 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %398, i32 0, i32 3
  %400 = load %struct.TYPE_5__*, %struct.TYPE_5__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %400, i64 0
  %402 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = and i32 %403, %397
  store i32 %404, i32* %402, align 4
  %405 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %406 = load i32, i32* %15, align 4
  %407 = load i32, i32* %12, align 4
  %408 = load i32, i32* %14, align 4
  %409 = load i32, i32* @lan743x_tx_isr, align 4
  %410 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %411 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %410, i32 0, i32 2
  %412 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %411, align 8
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %412, i64 %414
  %416 = call i32 @lan743x_intr_register_isr(%struct.lan743x_adapter* %405, i32 %406, i32 %407, i32 %408, i32 %409, %struct.lan743x_adapter* %415)
  store i32 %416, i32* %10, align 4
  %417 = load i32, i32* %10, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %420

419:                                              ; preds = %382
  br label %566

420:                                              ; preds = %382
  %421 = load i32, i32* %15, align 4
  %422 = call i32 @INTR_FLAG_IRQ_REQUESTED(i32 %421)
  %423 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %424 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 8
  %426 = or i32 %425, %422
  store i32 %426, i32* %424, align 8
  %427 = load i32, i32* %12, align 4
  %428 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET, align 4
  %429 = and i32 %427, %428
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %437, label %431

431:                                              ; preds = %420
  %432 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %433 = load i32, i32* @INT_VEC_EN_SET, align 4
  %434 = load i32, i32* %15, align 4
  %435 = call i32 @INT_VEC_EN_(i32 %434)
  %436 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %432, i32 %433, i32 %435)
  br label %437

437:                                              ; preds = %431, %420
  br label %438

438:                                              ; preds = %437
  %439 = load i32, i32* %11, align 4
  %440 = add nsw i32 %439, 1
  store i32 %440, i32* %11, align 4
  br label %378

441:                                              ; preds = %378
  br label %442

442:                                              ; preds = %441, %335
  %443 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %444 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = load i32, i32* @LAN743X_USED_TX_CHANNELS, align 4
  %447 = sub nsw i32 %445, %446
  %448 = icmp sgt i32 %447, 1
  br i1 %448, label %449, label %565

449:                                              ; preds = %442
  %450 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %451 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %450, i32 0, i32 0
  %452 = load i32, i32* %451, align 8
  %453 = load i32, i32* @LAN743X_USED_TX_CHANNELS, align 4
  %454 = sub nsw i32 %452, %453
  %455 = sub nsw i32 %454, 1
  store i32 %455, i32* %16, align 4
  %456 = load i32, i32* %16, align 4
  %457 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  %458 = icmp sgt i32 %456, %457
  br i1 %458, label %459, label %461

459:                                              ; preds = %449
  %460 = load i32, i32* @LAN743X_USED_RX_CHANNELS, align 4
  store i32 %460, i32* %16, align 4
  br label %461

461:                                              ; preds = %459, %449
  %462 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_READ, align 4
  %463 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_W2C, align 4
  %464 = or i32 %462, %463
  %465 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CHECK, align 4
  %466 = or i32 %464, %465
  %467 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_CLEAR, align 4
  %468 = or i32 %466, %467
  %469 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_CLEAR, align 4
  %470 = or i32 %468, %469
  %471 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_ISR_SET, align 4
  %472 = or i32 %470, %471
  store i32 %472, i32* %12, align 4
  %473 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %474 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %474, i32 0, i32 0
  %476 = load i32, i32* %475, align 8
  %477 = load i32, i32* @LAN743X_CSR_FLAG_SUPPORTS_INTR_AUTO_SET_CLR, align 4
  %478 = and i32 %476, %477
  %479 = icmp ne i32 %478, 0
  br i1 %479, label %480, label %490

480:                                              ; preds = %461
  %481 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR, align 4
  %482 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_SET, align 4
  %483 = or i32 %481, %482
  %484 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_SET, align 4
  %485 = or i32 %483, %484
  %486 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_ENABLE_AUTO_CLEAR, align 4
  %487 = or i32 %485, %486
  %488 = load i32, i32* @LAN743X_VECTOR_FLAG_SOURCE_STATUS_AUTO_CLEAR, align 4
  %489 = or i32 %487, %488
  store i32 %489, i32* %12, align 4
  br label %490

490:                                              ; preds = %480, %461
  store i32 0, i32* %11, align 4
  br label %491

491:                                              ; preds = %561, %490
  %492 = load i32, i32* %11, align 4
  %493 = load i32, i32* %16, align 4
  %494 = icmp slt i32 %492, %493
  br i1 %494, label %495, label %564

495:                                              ; preds = %491
  %496 = load i32, i32* %11, align 4
  %497 = add nsw i32 %496, 1
  %498 = load i32, i32* @LAN743X_USED_TX_CHANNELS, align 4
  %499 = add nsw i32 %497, %498
  store i32 %499, i32* %17, align 4
  %500 = load i32, i32* %11, align 4
  %501 = call i32 @INT_BIT_DMA_RX_(i32 %500)
  store i32 %501, i32* %18, align 4
  %502 = load i32, i32* %11, align 4
  %503 = load i32, i32* %17, align 4
  %504 = call i32 @INT_VEC_MAP0_RX_VEC_(i32 %502, i32 %503)
  %505 = load i32, i32* %8, align 4
  %506 = or i32 %505, %504
  store i32 %506, i32* %8, align 4
  %507 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %508 = load i32, i32* @INT_VEC_MAP0, align 4
  %509 = load i32, i32* %8, align 4
  %510 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %507, i32 %508, i32 %509)
  %511 = load i32, i32* %12, align 4
  %512 = load i32, i32* @LAN743X_VECTOR_FLAG_VECTOR_ENABLE_AUTO_CLEAR, align 4
  %513 = and i32 %511, %512
  %514 = icmp ne i32 %513, 0
  br i1 %514, label %515, label %524

515:                                              ; preds = %495
  %516 = load i32, i32* %17, align 4
  %517 = call i32 @INT_VEC_EN_(i32 %516)
  %518 = load i32, i32* %7, align 4
  %519 = or i32 %518, %517
  store i32 %519, i32* %7, align 4
  %520 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %521 = load i32, i32* @INT_VEC_EN_AUTO_CLR, align 4
  %522 = load i32, i32* %7, align 4
  %523 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %520, i32 %521, i32 %522)
  br label %524

524:                                              ; preds = %515, %495
  %525 = load i32, i32* %18, align 4
  %526 = xor i32 %525, -1
  %527 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %528 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %527, i32 0, i32 3
  %529 = load %struct.TYPE_5__*, %struct.TYPE_5__** %528, align 8
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %529, i64 0
  %531 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  %533 = and i32 %532, %526
  store i32 %533, i32* %531, align 4
  %534 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %535 = load i32, i32* %17, align 4
  %536 = load i32, i32* %12, align 4
  %537 = load i32, i32* %18, align 4
  %538 = load i32, i32* @lan743x_rx_isr, align 4
  %539 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %540 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %539, i32 0, i32 0
  %541 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %540, align 8
  %542 = load i32, i32* %11, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds %struct.lan743x_adapter, %struct.lan743x_adapter* %541, i64 %543
  %545 = call i32 @lan743x_intr_register_isr(%struct.lan743x_adapter* %534, i32 %535, i32 %536, i32 %537, i32 %538, %struct.lan743x_adapter* %544)
  store i32 %545, i32* %10, align 4
  %546 = load i32, i32* %10, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %524
  br label %566

549:                                              ; preds = %524
  %550 = load i32, i32* %17, align 4
  %551 = call i32 @INTR_FLAG_IRQ_REQUESTED(i32 %550)
  %552 = load %struct.lan743x_intr*, %struct.lan743x_intr** %6, align 8
  %553 = getelementptr inbounds %struct.lan743x_intr, %struct.lan743x_intr* %552, i32 0, i32 2
  %554 = load i32, i32* %553, align 8
  %555 = or i32 %554, %551
  store i32 %555, i32* %553, align 8
  %556 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %557 = load i32, i32* @INT_VEC_EN_SET, align 4
  %558 = load i32, i32* %17, align 4
  %559 = call i32 @INT_VEC_EN_(i32 %558)
  %560 = call i32 @lan743x_csr_write(%struct.lan743x_adapter* %556, i32 %557, i32 %559)
  br label %561

561:                                              ; preds = %549
  %562 = load i32, i32* %11, align 4
  %563 = add nsw i32 %562, 1
  store i32 %563, i32* %11, align 4
  br label %491

564:                                              ; preds = %491
  br label %565

565:                                              ; preds = %564, %442
  store i32 0, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %570

566:                                              ; preds = %548, %419, %334, %259
  %567 = load %struct.lan743x_adapter*, %struct.lan743x_adapter** %3, align 8
  %568 = call i32 @lan743x_intr_close(%struct.lan743x_adapter* %567)
  %569 = load i32, i32* %10, align 4
  store i32 %569, i32* %2, align 4
  store i32 1, i32* %19, align 4
  br label %570

570:                                              ; preds = %566, %565
  %571 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %571)
  %572 = load i32, i32* %2, align 4
  ret i32 %572
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.msix_entry*, i32, i32) #2

declare dso_local i32 @pci_enable_msix_range(%struct.TYPE_7__*, %struct.msix_entry*, i32, i32) #2

declare dso_local i32 @netif_info(%struct.lan743x_adapter*, i32, i32, i8*, ...) #2

declare dso_local i32 @pci_enable_msi(%struct.TYPE_7__*) #2

declare dso_local i32 @lan743x_csr_write(%struct.lan743x_adapter*, i32, i32) #2

declare dso_local i32 @lan743x_intr_register_isr(%struct.lan743x_adapter*, i32, i32, i32, i32, %struct.lan743x_adapter*) #2

declare dso_local i32 @INTR_FLAG_IRQ_REQUESTED(i32) #2

declare dso_local i32 @INT_VEC_EN_(i32) #2

declare dso_local i32 @lan743x_intr_test_isr(%struct.lan743x_adapter*) #2

declare dso_local i32 @INT_BIT_DMA_TX_(i32) #2

declare dso_local i32 @INT_VEC_MAP1_TX_VEC_(i32, i32) #2

declare dso_local i32 @INT_BIT_DMA_RX_(i32) #2

declare dso_local i32 @INT_VEC_MAP0_RX_VEC_(i32, i32) #2

declare dso_local i32 @lan743x_intr_close(%struct.lan743x_adapter*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
