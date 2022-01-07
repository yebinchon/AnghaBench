; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_spu_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_spi.c_spu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_spi_card = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32* }

@IF_SPI_WRITE_OPERATION_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.if_spi_card*, i32, i32*, i32)* @spu_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spu_write(%struct.if_spi_card* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.if_spi_card*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca %struct.spi_transfer, align 8
  %13 = alloca %struct.spi_transfer, align 8
  store %struct.if_spi_card* %0, %struct.if_spi_card** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IF_SPI_WRITE_OPERATION_MASK, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @cpu_to_le16(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = call i32 @spi_message_init(%struct.spi_message* %11)
  %19 = call i32 @memset(%struct.spi_transfer* %12, i32 0, i32 16)
  %20 = call i32 @memset(%struct.spi_transfer* %13, i32 0, i32 16)
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, 1
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %25 = call i32 @spu_transaction_init(%struct.if_spi_card* %24)
  %26 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32* %10, i32** %26, align 8
  %27 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  store i32 4, i32* %27, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 1
  store i32* %28, i32** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %13, i32 0, i32 0
  store i32 %30, i32* %31, align 8
  %32 = call i32 @spi_message_add_tail(%struct.spi_transfer* %12, %struct.spi_message* %11)
  %33 = call i32 @spi_message_add_tail(%struct.spi_transfer* %13, %struct.spi_message* %11)
  %34 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %35 = getelementptr inbounds %struct.if_spi_card, %struct.if_spi_card* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @spi_sync(i32 %36, %struct.spi_message* %11)
  store i32 %37, i32* %9, align 4
  %38 = load %struct.if_spi_card*, %struct.if_spi_card** %5, align 8
  %39 = call i32 @spu_transaction_finish(%struct.if_spi_card* %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spu_transaction_init(%struct.if_spi_card*) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @spu_transaction_finish(%struct.if_spi_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
