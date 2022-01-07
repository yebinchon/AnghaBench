; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_complete_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_complete_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool*, %struct.TYPE_3__* }
%struct.ibmvnic_tx_pool = type { i32*, i64, i32, %struct.ibmvnic_tx_buff* }
%struct.ibmvnic_tx_buff = type { i64, i32*, i64, i64* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ibmvnic_sub_crq_queue = type { i32, i32 }
%union.sub_crq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32*, i64* }

@.str = private unnamed_addr constant [13 x i8] c"tx error %x\0A\00", align 1
@IBMVNIC_TSO_POOL_MASK = common dso_local global i32 0, align 4
@IBMVNIC_MAX_FRAGS_PER_CRQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Started queue %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*)* @ibmvnic_complete_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_complete_tx(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_sub_crq_queue* %1) #0 {
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.ibmvnic_sub_crq_queue*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ibmvnic_tx_pool*, align 8
  %7 = alloca %struct.ibmvnic_tx_buff*, align 8
  %8 = alloca %union.sub_crq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  store %struct.ibmvnic_sub_crq_queue* %1, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %14 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %14, i32 0, i32 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %5, align 8
  br label %18

18:                                               ; preds = %210, %2
  br label %19

19:                                               ; preds = %201, %18
  %20 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %21 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %22 = call i64 @pending_scrq(%struct.ibmvnic_adapter* %20, %struct.ibmvnic_sub_crq_queue* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %202

24:                                               ; preds = %19
  %25 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %26 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %28 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %29 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %30 = call %union.sub_crq* @ibmvnic_next_scrq(%struct.ibmvnic_adapter* %28, %struct.ibmvnic_sub_crq_queue* %29)
  store %union.sub_crq* %30, %union.sub_crq** %8, align 8
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %161, %24
  %32 = load i32, i32* %10, align 4
  %33 = load %union.sub_crq*, %union.sub_crq** %8, align 8
  %34 = bitcast %union.sub_crq* %33 to %struct.TYPE_4__*
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %32, %36
  br i1 %37, label %38, label %164

38:                                               ; preds = %31
  %39 = load %union.sub_crq*, %union.sub_crq** %8, align 8
  %40 = bitcast %union.sub_crq* %39 to %struct.TYPE_4__*
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 3
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = load %union.sub_crq*, %union.sub_crq** %8, align 8
  %51 = bitcast %union.sub_crq* %50 to %struct.TYPE_4__*
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %161

59:                                               ; preds = %38
  %60 = load %union.sub_crq*, %union.sub_crq** %8, align 8
  %61 = bitcast %union.sub_crq* %60 to %struct.TYPE_4__*
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @be32_to_cpu(i32 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @IBMVNIC_TSO_POOL_MASK, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %84

73:                                               ; preds = %59
  %74 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %75 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %74, i32 0, i32 3
  %76 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %76, i64 %78
  store %struct.ibmvnic_tx_pool* %79, %struct.ibmvnic_tx_pool** %6, align 8
  %80 = load i32, i32* @IBMVNIC_TSO_POOL_MASK, align 4
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %9, align 4
  br label %91

84:                                               ; preds = %59
  %85 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %86 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %85, i32 0, i32 2
  %87 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %86, align 8
  %88 = load i32, i32* %12, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %87, i64 %89
  store %struct.ibmvnic_tx_pool* %90, %struct.ibmvnic_tx_pool** %6, align 8
  br label %91

91:                                               ; preds = %84, %73
  %92 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %6, align 8
  %93 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %92, i32 0, i32 3
  %94 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %93, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %94, i64 %96
  store %struct.ibmvnic_tx_buff* %97, %struct.ibmvnic_tx_buff** %7, align 8
  store i32 0, i32* %11, align 4
  br label %98

98:                                               ; preds = %119, %91
  %99 = load i32, i32* %11, align 4
  %100 = load i32, i32* @IBMVNIC_MAX_FRAGS_PER_CRQ, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %122

102:                                              ; preds = %98
  %103 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %7, align 8
  %104 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %103, i32 0, i32 3
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i64, i64* %105, i64 %107
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %102
  br label %119

112:                                              ; preds = %102
  %113 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %7, align 8
  %114 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %113, i32 0, i32 3
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i64, i64* %115, i64 %117
  store i64 0, i64* %118, align 8
  br label %119

119:                                              ; preds = %112, %111
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %11, align 4
  br label %98

122:                                              ; preds = %98
  %123 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %7, align 8
  %124 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %123, i32 0, i32 2
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %122
  %128 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %7, align 8
  %129 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %128, i32 0, i32 1
  %130 = load i32*, i32** %129, align 8
  %131 = call i32 @dev_kfree_skb_any(i32* %130)
  %132 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %7, align 8
  %133 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %132, i32 0, i32 1
  store i32* null, i32** %133, align 8
  br label %134

134:                                              ; preds = %127, %122
  %135 = load %struct.ibmvnic_tx_buff*, %struct.ibmvnic_tx_buff** %7, align 8
  %136 = getelementptr inbounds %struct.ibmvnic_tx_buff, %struct.ibmvnic_tx_buff* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* %13, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %6, align 8
  %144 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %6, align 8
  %147 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i32, i32* %145, i64 %148
  store i32 %142, i32* %149, align 4
  %150 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %6, align 8
  %151 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = add i64 %152, 1
  %154 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %6, align 8
  %155 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = urem i64 %153, %157
  %159 = load %struct.ibmvnic_tx_pool*, %struct.ibmvnic_tx_pool** %6, align 8
  %160 = getelementptr inbounds %struct.ibmvnic_tx_pool, %struct.ibmvnic_tx_pool* %159, i32 0, i32 1
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %134, %48
  %162 = load i32, i32* %10, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %10, align 4
  br label %31

164:                                              ; preds = %31
  %165 = load %union.sub_crq*, %union.sub_crq** %8, align 8
  %166 = bitcast %union.sub_crq* %165 to %struct.TYPE_4__*
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i64 0, i64* %167, align 8
  %168 = load i32, i32* %13, align 4
  %169 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %170 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %169, i32 0, i32 1
  %171 = call i32 @atomic_sub_return(i32 %168, i32* %170)
  %172 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %173 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sdiv i32 %174, 2
  %176 = icmp sle i32 %171, %175
  br i1 %176, label %177, label %201

177:                                              ; preds = %164
  %178 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %179 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %182 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = call i64 @__netif_subqueue_stopped(i32 %180, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %201

186:                                              ; preds = %177
  %187 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %188 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %191 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @netif_wake_subqueue(i32 %189, i32 %192)
  %194 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %195 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %198 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @netdev_dbg(i32 %196, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %186, %177, %164
  br label %19

202:                                              ; preds = %19
  %203 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %204 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %205 = call i32 @enable_scrq_irq(%struct.ibmvnic_adapter* %203, %struct.ibmvnic_sub_crq_queue* %204)
  %206 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %207 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %208 = call i64 @pending_scrq(%struct.ibmvnic_adapter* %206, %struct.ibmvnic_sub_crq_queue* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %214

210:                                              ; preds = %202
  %211 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %212 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %4, align 8
  %213 = call i32 @disable_scrq_irq(%struct.ibmvnic_adapter* %211, %struct.ibmvnic_sub_crq_queue* %212)
  br label %18

214:                                              ; preds = %202
  ret i32 0
}

declare dso_local i64 @pending_scrq(%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*) #1

declare dso_local %union.sub_crq* @ibmvnic_next_scrq(%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @atomic_sub_return(i32, i32*) #1

declare dso_local i64 @__netif_subqueue_stopped(i32, i32) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @enable_scrq_irq(%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*) #1

declare dso_local i32 @disable_scrq_irq(%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
