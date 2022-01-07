; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_mmio_reg_read_request_write_dev_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_mmio_reg_read_request_write_dev_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { i64, %struct.ena_com_mmio_read }
%struct.ena_com_mmio_read = type { i32 }

@ENA_REGS_MMIO_RESP_LO_OFF = common dso_local global i64 0, align 8
@ENA_REGS_MMIO_RESP_HI_OFF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_mmio_reg_read_request_write_dev_addr(%struct.ena_com_dev* %0) #0 {
  %2 = alloca %struct.ena_com_dev*, align 8
  %3 = alloca %struct.ena_com_mmio_read*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %2, align 8
  %6 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %7 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %6, i32 0, i32 1
  store %struct.ena_com_mmio_read* %7, %struct.ena_com_mmio_read** %3, align 8
  %8 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %3, align 8
  %9 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @ENA_DMA_ADDR_TO_UINT32_LOW(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ena_com_mmio_read*, %struct.ena_com_mmio_read** %3, align 8
  %13 = getelementptr inbounds %struct.ena_com_mmio_read, %struct.ena_com_mmio_read* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @ENA_DMA_ADDR_TO_UINT32_HIGH(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %18 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ENA_REGS_MMIO_RESP_LO_OFF, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel(i32 %16, i64 %21)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.ena_com_dev*, %struct.ena_com_dev** %2, align 8
  %25 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ENA_REGS_MMIO_RESP_HI_OFF, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel(i32 %23, i64 %28)
  ret void
}

declare dso_local i32 @ENA_DMA_ADDR_TO_UINT32_LOW(i32) #1

declare dso_local i32 @ENA_DMA_ADDR_TO_UINT32_HIGH(i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
