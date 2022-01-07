; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_cdesc_rx_pkt_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_cdesc_rx_pkt_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_cq = type { i32, i32, i32, i32, i32 }
%struct.ena_eth_io_rx_cdesc_base = type { i32 }

@ENA_ETH_IO_RX_CDESC_BASE_LAST_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_CDESC_BASE_LAST_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"ena q_id: %d packets were completed. first desc idx %u descs# %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ena_com_io_cq*, i32*)* @ena_com_cdesc_rx_pkt_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_com_cdesc_rx_pkt_get(%struct.ena_com_io_cq* %0, i32* %1) #0 {
  %3 = alloca %struct.ena_com_io_cq*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ena_eth_io_rx_cdesc_base*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ena_com_io_cq* %0, %struct.ena_com_io_cq** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %2
  %10 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %11 = call %struct.ena_eth_io_rx_cdesc_base* @ena_com_get_next_rx_cdesc(%struct.ena_com_io_cq* %10)
  store %struct.ena_eth_io_rx_cdesc_base* %11, %struct.ena_eth_io_rx_cdesc_base** %5, align 8
  %12 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %5, align 8
  %13 = icmp ne %struct.ena_eth_io_rx_cdesc_base* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %9
  br label %32

15:                                               ; preds = %9
  %16 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %17 = call i32 @ena_com_cq_inc_head(%struct.ena_com_io_cq* %16)
  %18 = load i32, i32* %6, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ena_eth_io_rx_cdesc_base*, %struct.ena_eth_io_rx_cdesc_base** %5, align 8
  %21 = getelementptr inbounds %struct.ena_eth_io_rx_cdesc_base, %struct.ena_eth_io_rx_cdesc_base* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @READ_ONCE(i32 %22)
  %24 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_LAST_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @ENA_ETH_IO_RX_CDESC_BASE_LAST_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %15
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %9, label %32

32:                                               ; preds = %28, %14
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %65

35:                                               ; preds = %32
  %36 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %37 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %4, align 8
  store i32 %38, i32* %39, align 4
  %40 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %41 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %46 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %49 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = sub nsw i32 %50, 1
  %52 = and i32 %47, %51
  store i32 %52, i32* %7, align 4
  %53 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %54 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %53, i32 0, i32 1
  store i32 0, i32* %54, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %57 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %59 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %4, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @pr_debug(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62, i32 %63)
  br label %71

65:                                               ; preds = %32
  %66 = load i32, i32* %6, align 4
  %67 = load %struct.ena_com_io_cq*, %struct.ena_com_io_cq** %3, align 8
  %68 = getelementptr inbounds %struct.ena_com_io_cq, %struct.ena_com_io_cq* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %66
  store i32 %70, i32* %68, align 4
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %65, %35
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local %struct.ena_eth_io_rx_cdesc_base* @ena_com_get_next_rx_cdesc(%struct.ena_com_io_cq*) #1

declare dso_local i32 @ena_com_cq_inc_head(%struct.ena_com_io_cq*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
