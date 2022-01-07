; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_put_hdr_tso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_mv643xx_eth.c_txq_put_hdr_tso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tx_queue = type { i32, i32, i64, %struct.tx_desc* }
%struct.tx_desc = type { i32, i32, i64, i64 }
%struct.mv643xx_eth_private = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"failed to prepare checksum!\00", align 1
@TSO_HEADER_SIZE = common dso_local global i32 0, align 4
@BUFFER_OWNED_BY_DMA = common dso_local global i32 0, align 4
@TX_FIRST_DESC = common dso_local global i32 0, align 4
@GEN_CRC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.tx_queue*, i32, i32*, i32)* @txq_put_hdr_tso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @txq_put_hdr_tso(%struct.sk_buff* %0, %struct.tx_queue* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tx_queue*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mv643xx_eth_private*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.tx_desc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tx_queue* %1, %struct.tx_queue** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %19 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %20 = call %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue* %19)
  store %struct.mv643xx_eth_private* %20, %struct.mv643xx_eth_private** %11, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_transport_offset(%struct.sk_buff* %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = call i32 @tcp_hdrlen(%struct.sk_buff* %23)
  %25 = add nsw i32 %22, %24
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %26 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %27 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %13, align 4
  %29 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %30 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %29, i32 0, i32 3
  %31 = load %struct.tx_desc*, %struct.tx_desc** %30, align 8
  %32 = load i32, i32* %13, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %31, i64 %33
  store %struct.tx_desc* %34, %struct.tx_desc** %14, align 8
  %35 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %11, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @skb_tx_csum(%struct.mv643xx_eth_private* %35, %struct.sk_buff* %36, i32* %17, i32* %16, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %5
  %42 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %5
  %44 = load %struct.tx_desc*, %struct.tx_desc** %14, align 8
  %45 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load i32, i32* %12, align 4
  %47 = load %struct.tx_desc*, %struct.tx_desc** %14, align 8
  %48 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %50 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %53 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TSO_HEADER_SIZE, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %51, %57
  %59 = load %struct.tx_desc*, %struct.tx_desc** %14, align 8
  %60 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %59, i32 0, i32 2
  store i64 %58, i64* %60, align 8
  %61 = load i32, i32* %16, align 4
  %62 = load i32, i32* @BUFFER_OWNED_BY_DMA, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @TX_FIRST_DESC, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @GEN_CRC, align 4
  %67 = or i32 %65, %66
  store i32 %67, i32* %18, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %43
  %71 = load i32, i32* %18, align 4
  %72 = load i32*, i32** %9, align 8
  store i32 %71, i32* %72, align 4
  br label %77

73:                                               ; preds = %43
  %74 = load i32, i32* %18, align 4
  %75 = load %struct.tx_desc*, %struct.tx_desc** %14, align 8
  %76 = getelementptr inbounds %struct.tx_desc, %struct.tx_desc* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %79 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %83 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %86 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %77
  %90 = load %struct.tx_queue*, %struct.tx_queue** %7, align 8
  %91 = getelementptr inbounds %struct.tx_queue, %struct.tx_queue* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  br label %92

92:                                               ; preds = %89, %77
  ret void
}

declare dso_local %struct.mv643xx_eth_private* @txq_to_mp(%struct.tx_queue*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @skb_tx_csum(%struct.mv643xx_eth_private*, %struct.sk_buff*, i32*, i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
