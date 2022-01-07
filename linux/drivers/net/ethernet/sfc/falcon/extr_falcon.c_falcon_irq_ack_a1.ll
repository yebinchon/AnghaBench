; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_irq_ack_a1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_falcon.c_falcon_irq_ack_a1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i32 }

@FRF_AA_INT_ACK_KER_FIELD = common dso_local global i32 0, align 4
@FR_AA_INT_ACK_KER = common dso_local global i32 0, align 4
@FR_AA_WORK_AROUND_BROKEN_PCI_READS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @falcon_irq_ack_a1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_irq_ack_a1(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @FRF_AA_INT_ACK_KER_FIELD, align 4
  %6 = call i32 @EF4_POPULATE_DWORD_1(i32 %4, i32 %5, i32 12053374)
  %7 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %8 = load i32, i32* @FR_AA_INT_ACK_KER, align 4
  %9 = call i32 @ef4_writed(%struct.ef4_nic* %7, i32* %3, i32 %8)
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %11 = load i32, i32* @FR_AA_WORK_AROUND_BROKEN_PCI_READS, align 4
  %12 = call i32 @ef4_readd(%struct.ef4_nic* %10, i32* %3, i32 %11)
  ret void
}

declare dso_local i32 @EF4_POPULATE_DWORD_1(i32, i32, i32) #1

declare dso_local i32 @ef4_writed(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @ef4_readd(%struct.ef4_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
