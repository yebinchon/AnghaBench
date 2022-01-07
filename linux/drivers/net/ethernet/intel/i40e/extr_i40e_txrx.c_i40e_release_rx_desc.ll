; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_release_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_release_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32, i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_release_rx_desc(%struct.i40e_ring* %0, i8* %1) #0 {
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca i8*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %6, i32 0, i32 2
  store i8* %5, i8** %7, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %9, i32 0, i32 1
  store i8* %8, i8** %10, align 8
  %11 = call i32 (...) @wmb()
  %12 = load i8*, i8** %4, align 8
  %13 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %14 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @writel(i8* %12, i32 %15)
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @writel(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
