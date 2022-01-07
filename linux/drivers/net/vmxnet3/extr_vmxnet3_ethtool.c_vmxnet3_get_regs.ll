; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.vmxnet3_adapter = type { i32, i32, %struct.vmxnet3_rx_queue*, %struct.vmxnet3_tx_queue*, %struct.TYPE_13__ }
%struct.vmxnet3_rx_queue = type { %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32 }
%struct.vmxnet3_tx_queue = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_14__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }

@VMXNET3_REG_VRRS = common dso_local global i32 0, align 4
@VMXNET3_REG_UVRS = common dso_local global i32 0, align 4
@VMXNET3_REG_DSAL = common dso_local global i32 0, align 4
@VMXNET3_REG_DSAH = common dso_local global i32 0, align 4
@VMXNET3_REG_CMD = common dso_local global i32 0, align 4
@VMXNET3_REG_MACL = common dso_local global i32 0, align 4
@VMXNET3_REG_MACH = common dso_local global i32 0, align 4
@VMXNET3_REG_ICR = common dso_local global i32 0, align 4
@VMXNET3_REG_ECR = common dso_local global i32 0, align 4
@VMXNET3_REG_IMR = common dso_local global i64 0, align 8
@VMXNET3_REG_ALIGN = common dso_local global i32 0, align 4
@VMXNET3_REG_TXPROD = common dso_local global i64 0, align 8
@VMXNET3_REG_RXPROD = common dso_local global i64 0, align 8
@VMXNET3_REG_RXPROD2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @vmxnet3_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vmxnet3_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vmxnet3_tx_queue*, align 8
  %12 = alloca %struct.vmxnet3_rx_queue*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.vmxnet3_adapter* %14, %struct.vmxnet3_adapter** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i32*
  store i32* %16, i32** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = call i32 @vmxnet3_get_regs_len(%struct.net_device* %18)
  %20 = call i32 @memset(i8* %17, i32 0, i32 %19)
  %21 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %21, i32 0, i32 0
  store i32 2, i32* %22, align 4
  %23 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %24 = load i32, i32* @VMXNET3_REG_VRRS, align 4
  %25 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %23, i32 %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  store i32 %25, i32* %30, align 4
  %31 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %32 = load i32, i32* @VMXNET3_REG_UVRS, align 4
  %33 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %31, i32 %32)
  %34 = load i32*, i32** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  %37 = sext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %33, i32* %38, align 4
  %39 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %40 = load i32, i32* @VMXNET3_REG_DSAL, align 4
  %41 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %39, i32 %40)
  %42 = load i32*, i32** %8, align 8
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  store i32 %41, i32* %46, align 4
  %47 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %48 = load i32, i32* @VMXNET3_REG_DSAH, align 4
  %49 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %47, i32 %48)
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  store i32 %49, i32* %54, align 4
  %55 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %56 = load i32, i32* @VMXNET3_REG_CMD, align 4
  %57 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %55, i32 %56)
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %10, align 4
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %64 = load i32, i32* @VMXNET3_REG_MACL, align 4
  %65 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %63, i32 %64)
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  store i32 %65, i32* %70, align 4
  %71 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %72 = load i32, i32* @VMXNET3_REG_MACH, align 4
  %73 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %71, i32 %72)
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = sext i32 %75 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  store i32 %73, i32* %78, align 4
  %79 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %80 = load i32, i32* @VMXNET3_REG_ICR, align 4
  %81 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %79, i32 %80)
  %82 = load i32*, i32** %8, align 8
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %81, i32* %86, align 4
  %87 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %88 = load i32, i32* @VMXNET3_REG_ECR, align 4
  %89 = call i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter* %87, i32 %88)
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %90, i64 %93
  store i32 %89, i32* %94, align 4
  %95 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %96 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %95, i32 0, i32 4
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %99, i64 %102
  store i32 %98, i32* %103, align 4
  store i32 0, i32* %9, align 4
  br label %104

104:                                              ; preds = %125, %3
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %107 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp slt i32 %105, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %104
  %112 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %113 = load i64, i64* @VMXNET3_REG_IMR, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @VMXNET3_REG_ALIGN, align 4
  %116 = mul nsw i32 %114, %115
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %113, %117
  %119 = call i32 @VMXNET3_READ_BAR0_REG(%struct.vmxnet3_adapter* %112, i64 %118)
  %120 = load i32*, i32** %8, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds i32, i32* %120, i64 %123
  store i32 %119, i32* %124, align 4
  br label %125

125:                                              ; preds = %111
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %9, align 4
  br label %104

128:                                              ; preds = %104
  %129 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %130 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32*, i32** %8, align 8
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i32, i32* %132, i64 %135
  store i32 %131, i32* %136, align 4
  store i32 0, i32* %9, align 4
  br label %137

137:                                              ; preds = %311, %128
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %140 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %314

143:                                              ; preds = %137
  %144 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %145 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %144, i32 0, i32 3
  %146 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %146, i64 %148
  store %struct.vmxnet3_tx_queue* %149, %struct.vmxnet3_tx_queue** %11, align 8
  %150 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %151 = load i64, i64* @VMXNET3_REG_TXPROD, align 8
  %152 = load i32, i32* %9, align 4
  %153 = load i32, i32* @VMXNET3_REG_ALIGN, align 4
  %154 = mul nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %151, %155
  %157 = call i32 @VMXNET3_READ_BAR0_REG(%struct.vmxnet3_adapter* %150, i64 %156)
  %158 = load i32*, i32** %8, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %10, align 4
  %161 = sext i32 %159 to i64
  %162 = getelementptr inbounds i32, i32* %158, i64 %161
  store i32 %157, i32* %162, align 4
  %163 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %164 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %163, i32 0, i32 4
  %165 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @VMXNET3_GET_ADDR_LO(i32 %166)
  %168 = load i32*, i32** %8, align 8
  %169 = load i32, i32* %10, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %10, align 4
  %171 = sext i32 %169 to i64
  %172 = getelementptr inbounds i32, i32* %168, i64 %171
  store i32 %167, i32* %172, align 4
  %173 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %174 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @VMXNET3_GET_ADDR_HI(i32 %176)
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %10, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %10, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %184 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %183, i32 0, i32 4
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %10, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %10, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %193 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %192, i32 0, i32 4
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %10, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 %195, i32* %200, align 4
  %201 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %202 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %201, i32 0, i32 4
  %203 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %10, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %211 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %10, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %10, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %220 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @VMXNET3_GET_ADDR_LO(i32 %222)
  %224 = load i32*, i32** %8, align 8
  %225 = load i32, i32* %10, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %10, align 4
  %227 = sext i32 %225 to i64
  %228 = getelementptr inbounds i32, i32* %224, i64 %227
  store i32 %223, i32* %228, align 4
  %229 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %230 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %229, i32 0, i32 3
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @VMXNET3_GET_ADDR_HI(i32 %232)
  %234 = load i32*, i32** %8, align 8
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %235, 1
  store i32 %236, i32* %10, align 4
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i32, i32* %234, i64 %237
  store i32 %233, i32* %238, align 4
  %239 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %240 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %8, align 8
  %244 = load i32, i32* %10, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %10, align 4
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i32, i32* %243, i64 %246
  store i32 %242, i32* %247, align 4
  %248 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %249 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32*, i32** %8, align 8
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 1
  store i32 %253, i32* %10, align 4
  %254 = sext i32 %252 to i64
  %255 = getelementptr inbounds i32, i32* %251, i64 %254
  store i32 %250, i32* %255, align 4
  %256 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %257 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @VMXNET3_GET_ADDR_LO(i32 %259)
  %261 = load i32*, i32** %8, align 8
  %262 = load i32, i32* %10, align 4
  %263 = add nsw i32 %262, 1
  store i32 %263, i32* %10, align 4
  %264 = sext i32 %262 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  store i32 %260, i32* %265, align 4
  %266 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %267 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @VMXNET3_GET_ADDR_HI(i32 %269)
  %271 = load i32*, i32** %8, align 8
  %272 = load i32, i32* %10, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %10, align 4
  %274 = sext i32 %272 to i64
  %275 = getelementptr inbounds i32, i32* %271, i64 %274
  store i32 %270, i32* %275, align 4
  %276 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %277 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32*, i32** %8, align 8
  %281 = load i32, i32* %10, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %10, align 4
  %283 = sext i32 %281 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  store i32 %279, i32* %284, align 4
  %285 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %286 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %285, i32 0, i32 2
  %287 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load i32*, i32** %8, align 8
  %290 = load i32, i32* %10, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %10, align 4
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %289, i64 %292
  store i32 %288, i32* %293, align 4
  %294 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %295 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %294, i32 0, i32 2
  %296 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = load i32*, i32** %8, align 8
  %299 = load i32, i32* %10, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %10, align 4
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds i32, i32* %298, i64 %301
  store i32 %297, i32* %302, align 4
  %303 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %11, align 8
  %304 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %8, align 8
  %307 = load i32, i32* %10, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %10, align 4
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  store i32 %305, i32* %310, align 4
  br label %311

311:                                              ; preds = %143
  %312 = load i32, i32* %9, align 4
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %9, align 4
  br label %137

314:                                              ; preds = %137
  %315 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %316 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32*, i32** %8, align 8
  %319 = load i32, i32* %10, align 4
  %320 = add nsw i32 %319, 1
  store i32 %320, i32* %10, align 4
  %321 = sext i32 %319 to i64
  %322 = getelementptr inbounds i32, i32* %318, i64 %321
  store i32 %317, i32* %322, align 4
  store i32 0, i32* %9, align 4
  br label %323

323:                                              ; preds = %585, %314
  %324 = load i32, i32* %9, align 4
  %325 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %326 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 4
  %328 = icmp slt i32 %324, %327
  br i1 %328, label %329, label %588

329:                                              ; preds = %323
  %330 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %331 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %330, i32 0, i32 2
  %332 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %331, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %332, i64 %334
  store %struct.vmxnet3_rx_queue* %335, %struct.vmxnet3_rx_queue** %12, align 8
  %336 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %337 = load i64, i64* @VMXNET3_REG_RXPROD, align 8
  %338 = load i32, i32* %9, align 4
  %339 = load i32, i32* @VMXNET3_REG_ALIGN, align 4
  %340 = mul nsw i32 %338, %339
  %341 = sext i32 %340 to i64
  %342 = add nsw i64 %337, %341
  %343 = call i32 @VMXNET3_READ_BAR0_REG(%struct.vmxnet3_adapter* %336, i64 %342)
  %344 = load i32*, i32** %8, align 8
  %345 = load i32, i32* %10, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %10, align 4
  %347 = sext i32 %345 to i64
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  store i32 %343, i32* %348, align 4
  %349 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %7, align 8
  %350 = load i64, i64* @VMXNET3_REG_RXPROD2, align 8
  %351 = load i32, i32* %9, align 4
  %352 = load i32, i32* @VMXNET3_REG_ALIGN, align 4
  %353 = mul nsw i32 %351, %352
  %354 = sext i32 %353 to i64
  %355 = add nsw i64 %350, %354
  %356 = call i32 @VMXNET3_READ_BAR0_REG(%struct.vmxnet3_adapter* %349, i64 %355)
  %357 = load i32*, i32** %8, align 8
  %358 = load i32, i32* %10, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %10, align 4
  %360 = sext i32 %358 to i64
  %361 = getelementptr inbounds i32, i32* %357, i64 %360
  store i32 %356, i32* %361, align 4
  %362 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %363 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %362, i32 0, i32 2
  %364 = load %struct.TYPE_10__*, %struct.TYPE_10__** %363, align 8
  %365 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %364, i64 0
  %366 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %365, i32 0, i32 4
  %367 = load i32, i32* %366, align 4
  %368 = call i32 @VMXNET3_GET_ADDR_LO(i32 %367)
  %369 = load i32*, i32** %8, align 8
  %370 = load i32, i32* %10, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %10, align 4
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %368, i32* %373, align 4
  %374 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %375 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %374, i32 0, i32 2
  %376 = load %struct.TYPE_10__*, %struct.TYPE_10__** %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %376, i64 0
  %378 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 4
  %380 = call i32 @VMXNET3_GET_ADDR_HI(i32 %379)
  %381 = load i32*, i32** %8, align 8
  %382 = load i32, i32* %10, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %10, align 4
  %384 = sext i32 %382 to i64
  %385 = getelementptr inbounds i32, i32* %381, i64 %384
  store i32 %380, i32* %385, align 4
  %386 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %387 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %386, i32 0, i32 2
  %388 = load %struct.TYPE_10__*, %struct.TYPE_10__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %388, i64 0
  %390 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %389, i32 0, i32 0
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %8, align 8
  %393 = load i32, i32* %10, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %10, align 4
  %395 = sext i32 %393 to i64
  %396 = getelementptr inbounds i32, i32* %392, i64 %395
  store i32 %391, i32* %396, align 4
  %397 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %398 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %397, i32 0, i32 2
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i64 0
  %401 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 4
  %403 = load i32*, i32** %8, align 8
  %404 = load i32, i32* %10, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %10, align 4
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i32, i32* %403, i64 %406
  store i32 %402, i32* %407, align 4
  %408 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %409 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %408, i32 0, i32 2
  %410 = load %struct.TYPE_10__*, %struct.TYPE_10__** %409, align 8
  %411 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %410, i64 0
  %412 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %411, i32 0, i32 2
  %413 = load i32, i32* %412, align 4
  %414 = load i32*, i32** %8, align 8
  %415 = load i32, i32* %10, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %10, align 4
  %417 = sext i32 %415 to i64
  %418 = getelementptr inbounds i32, i32* %414, i64 %417
  store i32 %413, i32* %418, align 4
  %419 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %420 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %419, i32 0, i32 2
  %421 = load %struct.TYPE_10__*, %struct.TYPE_10__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %421, i64 0
  %423 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %422, i32 0, i32 3
  %424 = load i32, i32* %423, align 4
  %425 = load i32*, i32** %8, align 8
  %426 = load i32, i32* %10, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* %10, align 4
  %428 = sext i32 %426 to i64
  %429 = getelementptr inbounds i32, i32* %425, i64 %428
  store i32 %424, i32* %429, align 4
  %430 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %431 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %430, i32 0, i32 2
  %432 = load %struct.TYPE_10__*, %struct.TYPE_10__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %432, i64 1
  %434 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %433, i32 0, i32 4
  %435 = load i32, i32* %434, align 4
  %436 = call i32 @VMXNET3_GET_ADDR_LO(i32 %435)
  %437 = load i32*, i32** %8, align 8
  %438 = load i32, i32* %10, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %10, align 4
  %440 = sext i32 %438 to i64
  %441 = getelementptr inbounds i32, i32* %437, i64 %440
  store i32 %436, i32* %441, align 4
  %442 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %443 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %442, i32 0, i32 2
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %443, align 8
  %445 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i64 1
  %446 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 4
  %448 = call i32 @VMXNET3_GET_ADDR_HI(i32 %447)
  %449 = load i32*, i32** %8, align 8
  %450 = load i32, i32* %10, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %10, align 4
  %452 = sext i32 %450 to i64
  %453 = getelementptr inbounds i32, i32* %449, i64 %452
  store i32 %448, i32* %453, align 4
  %454 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %455 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %454, i32 0, i32 2
  %456 = load %struct.TYPE_10__*, %struct.TYPE_10__** %455, align 8
  %457 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %456, i64 1
  %458 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 4
  %460 = load i32*, i32** %8, align 8
  %461 = load i32, i32* %10, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %10, align 4
  %463 = sext i32 %461 to i64
  %464 = getelementptr inbounds i32, i32* %460, i64 %463
  store i32 %459, i32* %464, align 4
  %465 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %466 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %465, i32 0, i32 2
  %467 = load %struct.TYPE_10__*, %struct.TYPE_10__** %466, align 8
  %468 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %467, i64 1
  %469 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %468, i32 0, i32 1
  %470 = load i32, i32* %469, align 4
  %471 = load i32*, i32** %8, align 8
  %472 = load i32, i32* %10, align 4
  %473 = add nsw i32 %472, 1
  store i32 %473, i32* %10, align 4
  %474 = sext i32 %472 to i64
  %475 = getelementptr inbounds i32, i32* %471, i64 %474
  store i32 %470, i32* %475, align 4
  %476 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %477 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %476, i32 0, i32 2
  %478 = load %struct.TYPE_10__*, %struct.TYPE_10__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %478, i64 1
  %480 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %479, i32 0, i32 2
  %481 = load i32, i32* %480, align 4
  %482 = load i32*, i32** %8, align 8
  %483 = load i32, i32* %10, align 4
  %484 = add nsw i32 %483, 1
  store i32 %484, i32* %10, align 4
  %485 = sext i32 %483 to i64
  %486 = getelementptr inbounds i32, i32* %482, i64 %485
  store i32 %481, i32* %486, align 4
  %487 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %488 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %487, i32 0, i32 2
  %489 = load %struct.TYPE_10__*, %struct.TYPE_10__** %488, align 8
  %490 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %489, i64 1
  %491 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %490, i32 0, i32 3
  %492 = load i32, i32* %491, align 4
  %493 = load i32*, i32** %8, align 8
  %494 = load i32, i32* %10, align 4
  %495 = add nsw i32 %494, 1
  store i32 %495, i32* %10, align 4
  %496 = sext i32 %494 to i64
  %497 = getelementptr inbounds i32, i32* %493, i64 %496
  store i32 %492, i32* %497, align 4
  %498 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %499 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %498, i32 0, i32 1
  %500 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %499, i32 0, i32 1
  %501 = load i32, i32* %500, align 4
  %502 = call i32 @VMXNET3_GET_ADDR_LO(i32 %501)
  %503 = load i32*, i32** %8, align 8
  %504 = load i32, i32* %10, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %10, align 4
  %506 = sext i32 %504 to i64
  %507 = getelementptr inbounds i32, i32* %503, i64 %506
  store i32 %502, i32* %507, align 4
  %508 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %509 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %508, i32 0, i32 1
  %510 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = call i32 @VMXNET3_GET_ADDR_HI(i32 %511)
  %513 = load i32*, i32** %8, align 8
  %514 = load i32, i32* %10, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %10, align 4
  %516 = sext i32 %514 to i64
  %517 = getelementptr inbounds i32, i32* %513, i64 %516
  store i32 %512, i32* %517, align 4
  %518 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %519 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %518, i32 0, i32 2
  %520 = load %struct.TYPE_10__*, %struct.TYPE_10__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %520, i64 0
  %522 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %521, i32 0, i32 0
  %523 = load i32, i32* %522, align 4
  %524 = load i32*, i32** %8, align 8
  %525 = load i32, i32* %10, align 4
  %526 = add nsw i32 %525, 1
  store i32 %526, i32* %10, align 4
  %527 = sext i32 %525 to i64
  %528 = getelementptr inbounds i32, i32* %524, i64 %527
  store i32 %523, i32* %528, align 4
  %529 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %530 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %529, i32 0, i32 1
  %531 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %530, i32 0, i32 0
  %532 = load i32, i32* %531, align 8
  %533 = load i32*, i32** %8, align 8
  %534 = load i32, i32* %10, align 4
  %535 = add nsw i32 %534, 1
  store i32 %535, i32* %10, align 4
  %536 = sext i32 %534 to i64
  %537 = getelementptr inbounds i32, i32* %533, i64 %536
  store i32 %532, i32* %537, align 4
  %538 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %539 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %538, i32 0, i32 0
  %540 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %539, i32 0, i32 3
  %541 = load i32, i32* %540, align 4
  %542 = call i32 @VMXNET3_GET_ADDR_LO(i32 %541)
  %543 = load i32*, i32** %8, align 8
  %544 = load i32, i32* %10, align 4
  %545 = add nsw i32 %544, 1
  store i32 %545, i32* %10, align 4
  %546 = sext i32 %544 to i64
  %547 = getelementptr inbounds i32, i32* %543, i64 %546
  store i32 %542, i32* %547, align 4
  %548 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %549 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %548, i32 0, i32 0
  %550 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %549, i32 0, i32 3
  %551 = load i32, i32* %550, align 4
  %552 = call i32 @VMXNET3_GET_ADDR_HI(i32 %551)
  %553 = load i32*, i32** %8, align 8
  %554 = load i32, i32* %10, align 4
  %555 = add nsw i32 %554, 1
  store i32 %555, i32* %10, align 4
  %556 = sext i32 %554 to i64
  %557 = getelementptr inbounds i32, i32* %553, i64 %556
  store i32 %552, i32* %557, align 4
  %558 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %559 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %558, i32 0, i32 0
  %560 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %559, i32 0, i32 0
  %561 = load i32, i32* %560, align 8
  %562 = load i32*, i32** %8, align 8
  %563 = load i32, i32* %10, align 4
  %564 = add nsw i32 %563, 1
  store i32 %564, i32* %10, align 4
  %565 = sext i32 %563 to i64
  %566 = getelementptr inbounds i32, i32* %562, i64 %565
  store i32 %561, i32* %566, align 4
  %567 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %568 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %568, i32 0, i32 1
  %570 = load i32, i32* %569, align 4
  %571 = load i32*, i32** %8, align 8
  %572 = load i32, i32* %10, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %10, align 4
  %574 = sext i32 %572 to i64
  %575 = getelementptr inbounds i32, i32* %571, i64 %574
  store i32 %570, i32* %575, align 4
  %576 = load %struct.vmxnet3_rx_queue*, %struct.vmxnet3_rx_queue** %12, align 8
  %577 = getelementptr inbounds %struct.vmxnet3_rx_queue, %struct.vmxnet3_rx_queue* %576, i32 0, i32 0
  %578 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %577, i32 0, i32 2
  %579 = load i32, i32* %578, align 8
  %580 = load i32*, i32** %8, align 8
  %581 = load i32, i32* %10, align 4
  %582 = add nsw i32 %581, 1
  store i32 %582, i32* %10, align 4
  %583 = sext i32 %581 to i64
  %584 = getelementptr inbounds i32, i32* %580, i64 %583
  store i32 %579, i32* %584, align 4
  br label %585

585:                                              ; preds = %329
  %586 = load i32, i32* %9, align 4
  %587 = add nsw i32 %586, 1
  store i32 %587, i32* %9, align 4
  br label %323

588:                                              ; preds = %323
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @vmxnet3_get_regs_len(%struct.net_device*) #1

declare dso_local i32 @VMXNET3_READ_BAR1_REG(%struct.vmxnet3_adapter*, i32) #1

declare dso_local i32 @VMXNET3_READ_BAR0_REG(%struct.vmxnet3_adapter*, i64) #1

declare dso_local i32 @VMXNET3_GET_ADDR_LO(i32) #1

declare dso_local i32 @VMXNET3_GET_ADDR_HI(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
