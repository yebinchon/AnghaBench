; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac_txring = type { i32 }
%struct.pasemi_mac = type { %struct.pasemi_mac_txring* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pasemi_mac_txring* (%struct.pasemi_mac*)* @tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pasemi_mac_txring* @tx_ring(%struct.pasemi_mac* %0) #0 {
  %2 = alloca %struct.pasemi_mac*, align 8
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %2, align 8
  %3 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %4 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %3, i32 0, i32 0
  %5 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %4, align 8
  ret %struct.pasemi_mac_txring* %5
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
