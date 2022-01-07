; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rxdes_set_buffer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_rxdes_set_buffer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100_rxdes = type { i32 }

@FTMAC100_RXDES1_EDORR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftmac100_rxdes*, i32)* @ftmac100_rxdes_set_buffer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftmac100_rxdes_set_buffer_size(%struct.ftmac100_rxdes* %0, i32 %1) #0 {
  %3 = alloca %struct.ftmac100_rxdes*, align 8
  %4 = alloca i32, align 4
  store %struct.ftmac100_rxdes* %0, %struct.ftmac100_rxdes** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @FTMAC100_RXDES1_EDORR, align 4
  %6 = call i32 @cpu_to_le32(i32 %5)
  %7 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %3, align 8
  %8 = getelementptr inbounds %struct.ftmac100_rxdes, %struct.ftmac100_rxdes* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @FTMAC100_RXDES1_RXBUF_SIZE(i32 %11)
  %13 = call i32 @cpu_to_le32(i32 %12)
  %14 = load %struct.ftmac100_rxdes*, %struct.ftmac100_rxdes** %3, align 8
  %15 = getelementptr inbounds %struct.ftmac100_rxdes, %struct.ftmac100_rxdes* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @FTMAC100_RXDES1_RXBUF_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
