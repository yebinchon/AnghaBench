; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_free_ringdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_winbond-840.c_free_ringdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netdev_private = type { i32, i32, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netdev_private*)* @free_ringdesc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ringdesc(%struct.netdev_private* %0) #0 {
  %2 = alloca %struct.netdev_private*, align 8
  store %struct.netdev_private* %0, %struct.netdev_private** %2, align 8
  %3 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %4 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @RX_RING_SIZE, align 4
  %7 = sext i32 %6 to i64
  %8 = mul i64 4, %7
  %9 = load i32, i32* @TX_RING_SIZE, align 4
  %10 = sext i32 %9 to i64
  %11 = mul i64 4, %10
  %12 = add i64 %8, %11
  %13 = trunc i64 %12 to i32
  %14 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %15 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.netdev_private*, %struct.netdev_private** %2, align 8
  %18 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @pci_free_consistent(i32 %5, i32 %13, i32 %16, i32 %19)
  ret void
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
