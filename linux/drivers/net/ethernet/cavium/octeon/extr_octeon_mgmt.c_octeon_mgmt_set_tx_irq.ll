; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_set_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/octeon/extr_octeon_mgmt.c_octeon_mgmt_set_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_mgmt = type { i32, i64 }
%union.cvmx_mixx_intena = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MIX_INTENA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_mgmt*, i32)* @octeon_mgmt_set_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @octeon_mgmt_set_tx_irq(%struct.octeon_mgmt* %0, i32 %1) #0 {
  %3 = alloca %struct.octeon_mgmt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.cvmx_mixx_intena, align 4
  %6 = alloca i64, align 8
  store %struct.octeon_mgmt* %0, %struct.octeon_mgmt** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %7, i32 0, i32 0
  %9 = load i64, i64* %6, align 8
  %10 = call i32 @spin_lock_irqsave(i32* %8, i64 %9)
  %11 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %12 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MIX_INTENA, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @cvmx_read_csr(i64 %15)
  %17 = bitcast %union.cvmx_mixx_intena* %5 to i32*
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 0
  %22 = bitcast %union.cvmx_mixx_intena* %5 to %struct.TYPE_2__*
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %25 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MIX_INTENA, align 8
  %28 = add nsw i64 %26, %27
  %29 = bitcast %union.cvmx_mixx_intena* %5 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cvmx_write_csr(i64 %28, i32 %30)
  %32 = load %struct.octeon_mgmt*, %struct.octeon_mgmt** %3, align 8
  %33 = getelementptr inbounds %struct.octeon_mgmt, %struct.octeon_mgmt* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cvmx_read_csr(i64) #1

declare dso_local i32 @cvmx_write_csr(i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
