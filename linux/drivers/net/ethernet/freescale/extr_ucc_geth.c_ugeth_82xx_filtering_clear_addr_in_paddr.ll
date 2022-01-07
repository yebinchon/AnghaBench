; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ugeth_82xx_filtering_clear_addr_in_paddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_ucc_geth.c_ugeth_82xx_filtering_clear_addr_in_paddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucc_geth_private = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucc_geth_private*, i64)* @ugeth_82xx_filtering_clear_addr_in_paddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ugeth_82xx_filtering_clear_addr_in_paddr(%struct.ucc_geth_private* %0, i64 %1) #0 {
  %3 = alloca %struct.ucc_geth_private*, align 8
  %4 = alloca i64, align 8
  store %struct.ucc_geth_private* %0, %struct.ucc_geth_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %6 = getelementptr inbounds %struct.ucc_geth_private, %struct.ucc_geth_private* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = getelementptr inbounds i64, i64* %7, i64 %8
  store i64 0, i64* %9, align 8
  %10 = load %struct.ucc_geth_private*, %struct.ucc_geth_private** %3, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @hw_clear_addr_in_paddr(%struct.ucc_geth_private* %10, i64 %11)
  ret i32 %12
}

declare dso_local i32 @hw_clear_addr_in_paddr(%struct.ucc_geth_private*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
