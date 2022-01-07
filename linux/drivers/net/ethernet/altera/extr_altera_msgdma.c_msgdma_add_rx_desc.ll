; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_msgdma.c_msgdma_add_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/altera/extr_altera_msgdma.c_msgdma_add_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_tse_private = type { i32, i32 }
%struct.tse_buffer = type { i32 }

@MSGDMA_DESC_CTL_END_ON_EOP = common dso_local global i32 0, align 4
@MSGDMA_DESC_CTL_END_ON_LEN = common dso_local global i32 0, align 4
@MSGDMA_DESC_CTL_TR_COMP_IRQ = common dso_local global i32 0, align 4
@MSGDMA_DESC_CTL_EARLY_IRQ = common dso_local global i32 0, align 4
@MSGDMA_DESC_CTL_TR_ERR_IRQ = common dso_local global i32 0, align 4
@MSGDMA_DESC_CTL_GO = common dso_local global i32 0, align 4
@read_addr_lo = common dso_local global i32 0, align 4
@read_addr_hi = common dso_local global i32 0, align 4
@write_addr_lo = common dso_local global i32 0, align 4
@write_addr_hi = common dso_local global i32 0, align 4
@burst_seq_num = common dso_local global i32 0, align 4
@stride = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @msgdma_add_rx_desc(%struct.altera_tse_private* %0, %struct.tse_buffer* %1) #0 {
  %3 = alloca %struct.altera_tse_private*, align 8
  %4 = alloca %struct.tse_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.altera_tse_private* %0, %struct.altera_tse_private** %3, align 8
  store %struct.tse_buffer* %1, %struct.tse_buffer** %4, align 8
  %8 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %9 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.tse_buffer*, %struct.tse_buffer** %4, align 8
  %12 = getelementptr inbounds %struct.tse_buffer, %struct.tse_buffer* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @MSGDMA_DESC_CTL_END_ON_EOP, align 4
  %15 = load i32, i32* @MSGDMA_DESC_CTL_END_ON_LEN, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @MSGDMA_DESC_CTL_TR_COMP_IRQ, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @MSGDMA_DESC_CTL_EARLY_IRQ, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @MSGDMA_DESC_CTL_TR_ERR_IRQ, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MSGDMA_DESC_CTL_GO, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %26 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @read_addr_lo, align 4
  %29 = call i32 @msgdma_descroffs(i32 %28)
  %30 = call i32 @csrwr32(i32 0, i32 %27, i32 %29)
  %31 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %32 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @read_addr_hi, align 4
  %35 = call i32 @msgdma_descroffs(i32 %34)
  %36 = call i32 @csrwr32(i32 0, i32 %33, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @lower_32_bits(i32 %37)
  %39 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %40 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @write_addr_lo, align 4
  %43 = call i32 @msgdma_descroffs(i32 %42)
  %44 = call i32 @csrwr32(i32 %38, i32 %41, i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @upper_32_bits(i32 %45)
  %47 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %48 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @write_addr_hi, align 4
  %51 = call i32 @msgdma_descroffs(i32 %50)
  %52 = call i32 @csrwr32(i32 %46, i32 %49, i32 %51)
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %55 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @msgdma_descroffs(i32 %57)
  %59 = call i32 @csrwr32(i32 %53, i32 %56, i32 %58)
  %60 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %61 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @burst_seq_num, align 4
  %64 = call i32 @msgdma_descroffs(i32 %63)
  %65 = call i32 @csrwr32(i32 0, i32 %62, i32 %64)
  %66 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %67 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @stride, align 4
  %70 = call i32 @msgdma_descroffs(i32 %69)
  %71 = call i32 @csrwr32(i32 65537, i32 %68, i32 %70)
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.altera_tse_private*, %struct.altera_tse_private** %3, align 8
  %74 = getelementptr inbounds %struct.altera_tse_private, %struct.altera_tse_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = call i32 @msgdma_descroffs(i32 %76)
  %78 = call i32 @csrwr32(i32 %72, i32 %75, i32 %77)
  ret void
}

declare dso_local i32 @csrwr32(i32, i32, i32) #1

declare dso_local i32 @msgdma_descroffs(i32) #1

declare dso_local i32 @lower_32_bits(i32) #1

declare dso_local i32 @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
