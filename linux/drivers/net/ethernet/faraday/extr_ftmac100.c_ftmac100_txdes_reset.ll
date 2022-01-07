; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_txdes_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_txdes_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftmac100_txdes = type { i64, i64, i32, i64 }

@FTMAC100_TXDES1_EDOTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftmac100_txdes*)* @ftmac100_txdes_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftmac100_txdes_reset(%struct.ftmac100_txdes* %0) #0 {
  %2 = alloca %struct.ftmac100_txdes*, align 8
  store %struct.ftmac100_txdes* %0, %struct.ftmac100_txdes** %2, align 8
  %3 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %2, align 8
  %4 = getelementptr inbounds %struct.ftmac100_txdes, %struct.ftmac100_txdes* %3, i32 0, i32 3
  store i64 0, i64* %4, align 8
  %5 = load i32, i32* @FTMAC100_TXDES1_EDOTR, align 4
  %6 = call i32 @cpu_to_le32(i32 %5)
  %7 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %2, align 8
  %8 = getelementptr inbounds %struct.ftmac100_txdes, %struct.ftmac100_txdes* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = and i32 %9, %6
  store i32 %10, i32* %8, align 8
  %11 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %2, align 8
  %12 = getelementptr inbounds %struct.ftmac100_txdes, %struct.ftmac100_txdes* %11, i32 0, i32 1
  store i64 0, i64* %12, align 8
  %13 = load %struct.ftmac100_txdes*, %struct.ftmac100_txdes** %2, align 8
  %14 = getelementptr inbounds %struct.ftmac100_txdes, %struct.ftmac100_txdes* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
