; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_msgdma.c_msgdma_tx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_msgdma.c_msgdma_tx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32 }
%struct.tse_buffer = type { i32, i32 }

@read_addr_lo = common dso_local global i32 0, align 4
@read_addr_hi = common dso_local global i32 0, align 4
@write_addr_lo = common dso_local global i32 0, align 4
@write_addr_hi = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@burst_seq_num = common dso_local global i32 0, align 4
@MSGDMA_DESC_TX_STRIDE = common dso_local global i32 0, align 4
@stride = common dso_local global i32 0, align 4
@MSGDMA_DESC_CTL_TX_SINGLE = common dso_local global i32 0, align 4
@control = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @msgdma_tx_buffer(%struct.altera_tse_private* %0, %struct.tse_buffer* %1) #0 {
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca %struct.tse_buffer*, align 8
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  store %struct.tse_buffer* %1, %struct.tse_buffer** %4, align 8
  %5 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %6 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @lower_32_bits(i32 %7)
  %9 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %10 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @read_addr_lo, align 4
  %13 = call i32 @msgdma_descroffs(i32 %12)
  %14 = call i32 @csrwr32(i32 %8, i32 %11, i32 %13)
  %15 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @upper_32_bits(i32 %17)
  %19 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %20 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @read_addr_hi, align 4
  %23 = call i32 @msgdma_descroffs(i32 %22)
  %24 = call i32 @csrwr32(i32 %18, i32 %21, i32 %23)
  %25 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %26 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @write_addr_lo, align 4
  %29 = call i32 @msgdma_descroffs(i32 %28)
  %30 = call i32 @csrwr32(i32 0, i32 %27, i32 %29)
  %31 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %32 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @write_addr_hi, align 4
  %35 = call i32 @msgdma_descroffs(i32 %34)
  %36 = call i32 @csrwr32(i32 0, i32 %33, i32 %35)
  %37 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %41 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @len, align 4
  %44 = call i32 @msgdma_descroffs(i32 %43)
  %45 = call i32 @csrwr32(i32 %39, i32 %42, i32 %44)
  %46 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %47 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @burst_seq_num, align 4
  %50 = call i32 @msgdma_descroffs(i32 %49)
  %51 = call i32 @csrwr32(i32 0, i32 %48, i32 %50)
  %52 = load i32, i32* @MSGDMA_DESC_TX_STRIDE, align 4
  %53 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %54 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @stride, align 4
  %57 = call i32 @msgdma_descroffs(i32 %56)
  %58 = call i32 @csrwr32(i32 %52, i32 %55, i32 %57)
  %59 = load i32, i32* @MSGDMA_DESC_CTL_TX_SINGLE, align 4
  %60 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %61 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @control, align 4
  %64 = call i32 @msgdma_descroffs(i32 %63)
  %65 = call i32 @csrwr32(i32 %59, i32 %62, i32 %64)
  ret i32 0
}

declare dso_local i32 @csrwr32(i32, i32, i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @msgdma_descroffs(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
