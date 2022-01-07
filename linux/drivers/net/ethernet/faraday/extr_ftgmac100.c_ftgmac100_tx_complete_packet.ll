; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_tx_complete_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_tx_complete_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i32, i32, %struct.sk_buff**, %struct.ftgmac100_txdes*, %struct.net_device* }
%struct.sk_buff = type { i64 }
%struct.ftgmac100_txdes = type { i32 }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@FTGMAC100_TXDES0_TXDMA_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftgmac100*)* @ftgmac100_tx_complete_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftgmac100_tx_complete_packet(%struct.ftgmac100* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ftgmac100*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ftgmac100_txdes*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ftgmac100* %0, %struct.ftgmac100** %3, align 8
  %9 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %10 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %9, i32 0, i32 4
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %13 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %16 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %15, i32 0, i32 3
  %17 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %17, i64 %19
  store %struct.ftgmac100_txdes* %20, %struct.ftgmac100_txdes** %5, align 8
  %21 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %5, align 8
  %22 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @le32_to_cpu(i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @FTGMAC100_TXDES0_TXDMA_OWN, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %72

30:                                               ; preds = %1
  %31 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %32 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %31, i32 0, i32 2
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %33, i64 %35
  %37 = load %struct.sk_buff*, %struct.sk_buff** %36, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %6, align 8
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %45
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %48, align 4
  %53 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %5, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @ftgmac100_free_tx_packet(%struct.ftgmac100* %53, i32 %54, %struct.sk_buff* %55, %struct.ftgmac100_txdes* %56, i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %61 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %59, %62
  %64 = call i32 @cpu_to_le32(i32 %63)
  %65 = load %struct.ftgmac100_txdes*, %struct.ftgmac100_txdes** %5, align 8
  %66 = getelementptr inbounds %struct.ftgmac100_txdes, %struct.ftgmac100_txdes* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @ftgmac100_next_tx_pointer(%struct.ftgmac100* %67, i32 %68)
  %70 = load %struct.ftgmac100*, %struct.ftgmac100** %3, align 8
  %71 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  store i32 1, i32* %2, align 4
  br label %72

72:                                               ; preds = %30, %29
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ftgmac100_free_tx_packet(%struct.ftgmac100*, i32, %struct.sk_buff*, %struct.ftgmac100_txdes*, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ftgmac100_next_tx_pointer(%struct.ftgmac100*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
