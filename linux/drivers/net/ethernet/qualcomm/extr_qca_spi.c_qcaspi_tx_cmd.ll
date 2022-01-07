; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_tx_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_tx_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcaspi = type { i32 }
%struct.spi_message = type { i32 }
%struct.spi_transfer = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcaspi*, i32)* @qcaspi_tx_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_tx_cmd(%struct.qcaspi* %0, i32 %1) #0 {
  %3 = alloca %struct.qcaspi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.spi_message, align 4
  %7 = alloca %struct.spi_transfer, align 8
  %8 = alloca i32, align 4
  store %struct.qcaspi* %0, %struct.qcaspi** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = call i32 @memset(%struct.spi_transfer* %7, i32 0, i32 16)
  %10 = call i32 @spi_message_init(%struct.spi_message* %6)
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @cpu_to_be16(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 0
  store i32 4, i32* %13, align 8
  %14 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %7, i32 0, i32 1
  store i32* %5, i32** %14, align 8
  %15 = call i32 @spi_message_add_tail(%struct.spi_transfer* %7, %struct.spi_message* %6)
  %16 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %17 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @spi_sync(i32 %18, %struct.spi_message* %6)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %6, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %8, align 4
  br label %25

25:                                               ; preds = %22, %2
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %30 = call i32 @qcaspi_spi_error(%struct.qcaspi* %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %8, align 4
  ret i32 %32
}

declare dso_local i32 @memset(%struct.spi_transfer*, i32, i32) #1

declare dso_local i32 @spi_message_init(%struct.spi_message*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #1

declare dso_local i32 @spi_sync(i32, %struct.spi_message*) #1

declare dso_local i32 @qcaspi_spi_error(%struct.qcaspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
