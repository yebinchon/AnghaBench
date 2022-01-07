; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i32, %struct.net_device*, i32, i32, i32, %struct.ixgb_desc_ring }
%struct.net_device = type { i32 }
%struct.ixgb_desc_ring = type { i32, i32, %struct.ixgb_buffer*, i32 }
%struct.ixgb_buffer = type { i32, i64 }
%struct.ixgb_tx_desc = type { i32, i32 }

@IXGB_TX_DESC_STATUS_DD = common dso_local global i32 0, align 4
@IXGB_TX_DESC_POPTS_TXSM = common dso_local global i32 0, align 4
@IXGB_TX_DESC_POPTS_IXSM = common dso_local global i32 0, align 4
@DESC_NEEDED = common dso_local global i64 0, align 8
@__IXGB_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@STATUS = common dso_local global i32 0, align 4
@IXGB_STATUS_TXOFF = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [276 x i8] c"Detected Tx Unit Hang\0A  TDH                  <%x>\0A  TDT                  <%x>\0A  next_to_use          <%x>\0A  next_to_clean        <%x>\0Abuffer_info[next_to_clean]\0A  time_stamp           <%lx>\0A  next_to_watch        <%x>\0A  jiffies              <%lx>\0A  next_to_watch.status <%x>\0A\00", align 1
@TDH = common dso_local global i32 0, align 4
@TDT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgb_adapter*)* @ixgb_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgb_clean_tx_irq(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca %struct.ixgb_desc_ring*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ixgb_tx_desc*, align 8
  %6 = alloca %struct.ixgb_tx_desc*, align 8
  %7 = alloca %struct.ixgb_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %11 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %11, i32 0, i32 6
  store %struct.ixgb_desc_ring* %12, %struct.ixgb_desc_ring** %3, align 8
  %13 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %13, i32 0, i32 2
  %15 = load %struct.net_device*, %struct.net_device** %14, align 8
  store %struct.net_device* %15, %struct.net_device** %4, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %17 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %20 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %19, i32 0, i32 2
  %21 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %21, i64 %23
  %25 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.ixgb_tx_desc* @IXGB_TX_DESC(%struct.ixgb_desc_ring* byval(%struct.ixgb_desc_ring) align 8 %27, i32 %28)
  store %struct.ixgb_tx_desc* %29, %struct.ixgb_tx_desc** %6, align 8
  br label %30

30:                                               ; preds = %85, %1
  %31 = load %struct.ixgb_tx_desc*, %struct.ixgb_tx_desc** %6, align 8
  %32 = getelementptr inbounds %struct.ixgb_tx_desc, %struct.ixgb_tx_desc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IXGB_TX_DESC_STATUS_DD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %97

37:                                               ; preds = %30
  %38 = call i32 (...) @rmb()
  store i32 0, i32* %10, align 4
  br label %39

39:                                               ; preds = %84, %37
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = call %struct.ixgb_tx_desc* @IXGB_TX_DESC(%struct.ixgb_desc_ring* byval(%struct.ixgb_desc_ring) align 8 %44, i32 %45)
  store %struct.ixgb_tx_desc* %46, %struct.ixgb_tx_desc** %5, align 8
  %47 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %48 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %47, i32 0, i32 2
  %49 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %49, i64 %51
  store %struct.ixgb_buffer* %52, %struct.ixgb_buffer** %7, align 8
  %53 = load %struct.ixgb_tx_desc*, %struct.ixgb_tx_desc** %5, align 8
  %54 = getelementptr inbounds %struct.ixgb_tx_desc, %struct.ixgb_tx_desc* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IXGB_TX_DESC_POPTS_TXSM, align 4
  %57 = load i32, i32* @IXGB_TX_DESC_POPTS_IXSM, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %43
  %62 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %61, %43
  %67 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %68 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %7, align 8
  %69 = call i32 @ixgb_unmap_and_free_tx_resource(%struct.ixgb_adapter* %67, %struct.ixgb_buffer* %68)
  %70 = load %struct.ixgb_tx_desc*, %struct.ixgb_tx_desc** %5, align 8
  %71 = getelementptr inbounds %struct.ixgb_tx_desc, %struct.ixgb_tx_desc* %70, i32 0, i32 0
  %72 = bitcast i32* %71 to i64*
  store i64 0, i64* %72, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %8, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %8, align 4
  %79 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %80 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %78, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %66
  store i32 0, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %66
  br label %39

85:                                               ; preds = %39
  %86 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %87 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %86, i32 0, i32 2
  %88 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %88, i64 %90
  %92 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  store i32 %93, i32* %9, align 4
  %94 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call %struct.ixgb_tx_desc* @IXGB_TX_DESC(%struct.ixgb_desc_ring* byval(%struct.ixgb_desc_ring) align 8 %94, i32 %95)
  store %struct.ixgb_tx_desc* %96, %struct.ixgb_tx_desc** %6, align 8
  br label %30

97:                                               ; preds = %30
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %100 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %97
  %104 = load %struct.net_device*, %struct.net_device** %4, align 8
  %105 = call i64 @netif_carrier_ok(%struct.net_device* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %103
  %108 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %109 = call i64 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring* %108)
  %110 = load i64, i64* @DESC_NEEDED, align 8
  %111 = icmp sge i64 %109, %110
  br label %112

112:                                              ; preds = %107, %103, %97
  %113 = phi i1 [ false, %103 ], [ false, %97 ], [ %111, %107 ]
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %136

117:                                              ; preds = %112
  %118 = call i32 (...) @smp_mb()
  %119 = load %struct.net_device*, %struct.net_device** %4, align 8
  %120 = call i64 @netif_queue_stopped(%struct.net_device* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %135

122:                                              ; preds = %117
  %123 = load i32, i32* @__IXGB_DOWN, align 4
  %124 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %125 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %124, i32 0, i32 4
  %126 = call i32 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %122
  %129 = load %struct.net_device*, %struct.net_device** %4, align 8
  %130 = call i32 @netif_wake_queue(%struct.net_device* %129)
  %131 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %132 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %128, %122, %117
  br label %136

136:                                              ; preds = %135, %112
  %137 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %138 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %212

141:                                              ; preds = %136
  %142 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %143 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %142, i32 0, i32 0
  store i32 0, i32* %143, align 8
  %144 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %145 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %144, i32 0, i32 2
  %146 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %145, align 8
  %147 = load i32, i32* %9, align 4
  %148 = zext i32 %147 to i64
  %149 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %146, i64 %148
  %150 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %211

153:                                              ; preds = %141
  %154 = load i32, i32* @jiffies, align 4
  %155 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %156 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %155, i32 0, i32 2
  %157 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %156, align 8
  %158 = load i32, i32* %9, align 4
  %159 = zext i32 %158 to i64
  %160 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %157, i64 %159
  %161 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @HZ, align 8
  %164 = add nsw i64 %162, %163
  %165 = call i64 @time_after(i32 %154, i64 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %211

167:                                              ; preds = %153
  %168 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %169 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %168, i32 0, i32 1
  %170 = load i32, i32* @STATUS, align 4
  %171 = call i32 @IXGB_READ_REG(i32* %169, i32 %170)
  %172 = load i32, i32* @IXGB_STATUS_TXOFF, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %211, label %175

175:                                              ; preds = %167
  %176 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %177 = load i32, i32* @drv, align 4
  %178 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %179 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %178, i32 0, i32 2
  %180 = load %struct.net_device*, %struct.net_device** %179, align 8
  %181 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %182 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %181, i32 0, i32 1
  %183 = load i32, i32* @TDH, align 4
  %184 = call i32 @IXGB_READ_REG(i32* %182, i32 %183)
  %185 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %186 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %185, i32 0, i32 1
  %187 = load i32, i32* @TDT, align 4
  %188 = call i32 @IXGB_READ_REG(i32* %186, i32 %187)
  %189 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %190 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %193 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.ixgb_desc_ring*, %struct.ixgb_desc_ring** %3, align 8
  %196 = getelementptr inbounds %struct.ixgb_desc_ring, %struct.ixgb_desc_ring* %195, i32 0, i32 2
  %197 = load %struct.ixgb_buffer*, %struct.ixgb_buffer** %196, align 8
  %198 = load i32, i32* %9, align 4
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %197, i64 %199
  %201 = getelementptr inbounds %struct.ixgb_buffer, %struct.ixgb_buffer* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load i32, i32* @jiffies, align 4
  %205 = load %struct.ixgb_tx_desc*, %struct.ixgb_tx_desc** %6, align 8
  %206 = getelementptr inbounds %struct.ixgb_tx_desc, %struct.ixgb_tx_desc* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @netif_err(%struct.ixgb_adapter* %176, i32 %177, %struct.net_device* %180, i8* getelementptr inbounds ([276 x i8], [276 x i8]* @.str, i64 0, i64 0), i32 %184, i32 %188, i32 %191, i32 %194, i64 %202, i32 %203, i32 %204, i32 %207)
  %209 = load %struct.net_device*, %struct.net_device** %4, align 8
  %210 = call i32 @netif_stop_queue(%struct.net_device* %209)
  br label %211

211:                                              ; preds = %175, %167, %153, %141
  br label %212

212:                                              ; preds = %211, %136
  %213 = load i32, i32* %10, align 4
  ret i32 %213
}

declare dso_local %struct.ixgb_tx_desc* @IXGB_TX_DESC(%struct.ixgb_desc_ring* byval(%struct.ixgb_desc_ring) align 8, i32) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @ixgb_unmap_and_free_tx_resource(%struct.ixgb_adapter*, %struct.ixgb_buffer*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i64 @IXGB_DESC_UNUSED(%struct.ixgb_desc_ring*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @IXGB_READ_REG(i32*, i32) #1

declare dso_local i32 @netif_err(%struct.ixgb_adapter*, i32, %struct.net_device*, i8*, i32, i32, i32, i32, i64, i32, i32, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
