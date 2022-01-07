; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_msg.c_enetc_msg_psi_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_msg.c_enetc_msg_psi_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_pf = type { i32, i32, %struct.enetc_si* }
%struct.enetc_si = type { i32, i32 }

@ENETC_SI_INT_IDX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @enetc_msg_psi_free(%struct.enetc_pf* %0) #0 {
  %2 = alloca %struct.enetc_pf*, align 8
  %3 = alloca %struct.enetc_si*, align 8
  %4 = alloca i32, align 4
  store %struct.enetc_pf* %0, %struct.enetc_pf** %2, align 8
  %5 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %6 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %5, i32 0, i32 2
  %7 = load %struct.enetc_si*, %struct.enetc_si** %6, align 8
  store %struct.enetc_si* %7, %struct.enetc_si** %3, align 8
  %8 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %9 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %8, i32 0, i32 1
  %10 = call i32 @cancel_work_sync(i32* %9)
  %11 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %12 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %11, i32 0, i32 1
  %13 = call i32 @enetc_msg_disable_mr_int(i32* %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %24, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.enetc_pf*, %struct.enetc_pf** %2, align 8
  %17 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @enetc_msg_free_mbx(%struct.enetc_si* %21, i32 %22)
  br label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %14

27:                                               ; preds = %14
  %28 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %29 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ENETC_SI_INT_IDX, align 4
  %32 = call i32 @pci_irq_vector(i32 %30, i32 %31)
  %33 = load %struct.enetc_si*, %struct.enetc_si** %3, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.enetc_si* %33)
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @enetc_msg_disable_mr_int(i32*) #1

declare dso_local i32 @enetc_msg_free_mbx(%struct.enetc_si*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.enetc_si*) #1

declare dso_local i32 @pci_irq_vector(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
