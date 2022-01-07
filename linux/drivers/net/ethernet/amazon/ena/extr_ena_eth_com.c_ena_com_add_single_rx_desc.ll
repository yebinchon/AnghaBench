; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_add_single_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_eth_com.c_ena_com_add_single_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_io_sq = type { i64, i32, i64 }
%struct.ena_com_buf = type { i32, i32 }
%struct.ena_eth_io_rx_desc = type { i32, i32, i64, i32, i32 }

@ENA_COM_IO_QUEUE_DIRECTION_RX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"wrong Q type\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_DESC_FIRST_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_DESC_LAST_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_DESC_PHASE_MASK = common dso_local global i32 0, align 4
@ENA_ETH_IO_RX_DESC_COMP_REQ_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_com_add_single_rx_desc(%struct.ena_com_io_sq* %0, %struct.ena_com_buf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_io_sq*, align 8
  %6 = alloca %struct.ena_com_buf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ena_eth_io_rx_desc*, align 8
  store %struct.ena_com_io_sq* %0, %struct.ena_com_io_sq** %5, align 8
  store %struct.ena_com_buf* %1, %struct.ena_com_buf** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %10 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ENA_COM_IO_QUEUE_DIRECTION_RX, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN(i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %17 = call i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq* %16, i32 1)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @unlikely(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @ENOSPC, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %91

26:                                               ; preds = %3
  %27 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %28 = call %struct.ena_eth_io_rx_desc* @get_sq_desc(%struct.ena_com_io_sq* %27)
  store %struct.ena_eth_io_rx_desc* %28, %struct.ena_eth_io_rx_desc** %8, align 8
  %29 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %30 = icmp ne %struct.ena_eth_io_rx_desc* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* @EFAULT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %91

38:                                               ; preds = %26
  %39 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %40 = call i32 @memset(%struct.ena_eth_io_rx_desc* %39, i32 0, i32 24)
  %41 = load %struct.ena_com_buf*, %struct.ena_com_buf** %6, align 8
  %42 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %45 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @ENA_ETH_IO_RX_DESC_FIRST_MASK, align 4
  %47 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %48 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @ENA_ETH_IO_RX_DESC_LAST_MASK, align 4
  %50 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %51 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %55 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @ENA_ETH_IO_RX_DESC_PHASE_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %60 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @ENA_ETH_IO_RX_DESC_COMP_REQ_MASK, align 4
  %64 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %65 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %70 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ena_com_buf*, %struct.ena_com_buf** %6, align 8
  %72 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %76 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %75, i32 0, i32 2
  store i64 %74, i64* %76, align 8
  %77 = load %struct.ena_com_buf*, %struct.ena_com_buf** %6, align 8
  %78 = getelementptr inbounds %struct.ena_com_buf, %struct.ena_com_buf* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %81 = getelementptr inbounds %struct.ena_com_io_sq, %struct.ena_com_io_sq* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = sub nsw i64 %82, 1
  %84 = call i32 @GENMASK_ULL(i64 %83, i32 32)
  %85 = and i32 %79, %84
  %86 = ashr i32 %85, 32
  %87 = load %struct.ena_eth_io_rx_desc*, %struct.ena_eth_io_rx_desc** %8, align 8
  %88 = getelementptr inbounds %struct.ena_eth_io_rx_desc, %struct.ena_eth_io_rx_desc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.ena_com_io_sq*, %struct.ena_com_io_sq** %5, align 8
  %90 = call i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq* %89)
  store i32 %90, i32* %4, align 4
  br label %91

91:                                               ; preds = %38, %35, %23
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ena_com_sq_have_enough_space(%struct.ena_com_io_sq*, i32) #1

declare dso_local %struct.ena_eth_io_rx_desc* @get_sq_desc(%struct.ena_com_io_sq*) #1

declare dso_local i32 @memset(%struct.ena_eth_io_rx_desc*, i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i64, i32) #1

declare dso_local i32 @ena_com_sq_update_tail(%struct.ena_com_io_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
