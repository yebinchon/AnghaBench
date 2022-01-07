; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_descr_set_tx_cmdstat.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/toshiba/extr_ps3_gelic_net.c_gelic_descr_set_tx_cmdstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gelic_descr = type { i8* }
%struct.sk_buff = type { i64, i64 }
%struct.TYPE_2__ = type { i64 }

@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@GELIC_DESCR_DMA_CMD_NO_CHKSUM = common dso_local global i32 0, align 4
@GELIC_DESCR_TX_DMA_FRAME_TAIL = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@GELIC_DESCR_DMA_CMD_TCP_CHKSUM = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i64 0, align 8
@GELIC_DESCR_DMA_CMD_UDP_CHKSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gelic_descr*, %struct.sk_buff*)* @gelic_descr_set_tx_cmdstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gelic_descr_set_tx_cmdstat(%struct.gelic_descr* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.gelic_descr*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.gelic_descr* %0, %struct.gelic_descr** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @GELIC_DESCR_DMA_CMD_NO_CHKSUM, align 4
  %12 = load i32, i32* @GELIC_DESCR_TX_DMA_FRAME_TAIL, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @cpu_to_be32(i32 %13)
  %15 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %16 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %15, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  br label %62

17:                                               ; preds = %2
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @ETH_P_IP, align 4
  %22 = call i64 @htons(i32 %21)
  %23 = icmp eq i64 %20, %22
  br i1 %23, label %24, label %61

24:                                               ; preds = %17
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %25)
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPPROTO_TCP, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32, i32* @GELIC_DESCR_DMA_CMD_TCP_CHKSUM, align 4
  %33 = load i32, i32* @GELIC_DESCR_TX_DMA_FRAME_TAIL, align 4
  %34 = or i32 %32, %33
  %35 = call i8* @cpu_to_be32(i32 %34)
  %36 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %37 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  br label %60

38:                                               ; preds = %24
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call %struct.TYPE_2__* @ip_hdr(%struct.sk_buff* %39)
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @IPPROTO_UDP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load i32, i32* @GELIC_DESCR_DMA_CMD_UDP_CHKSUM, align 4
  %47 = load i32, i32* @GELIC_DESCR_TX_DMA_FRAME_TAIL, align 4
  %48 = or i32 %46, %47
  %49 = call i8* @cpu_to_be32(i32 %48)
  %50 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %51 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %59

52:                                               ; preds = %38
  %53 = load i32, i32* @GELIC_DESCR_DMA_CMD_NO_CHKSUM, align 4
  %54 = load i32, i32* @GELIC_DESCR_TX_DMA_FRAME_TAIL, align 4
  %55 = or i32 %53, %54
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = load %struct.gelic_descr*, %struct.gelic_descr** %3, align 8
  %58 = getelementptr inbounds %struct.gelic_descr, %struct.gelic_descr* %57, i32 0, i32 0
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %45
  br label %60

60:                                               ; preds = %59, %31
  br label %61

61:                                               ; preds = %60, %17
  br label %62

62:                                               ; preds = %61, %10
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_2__* @ip_hdr(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
