; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_enable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_enable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_pf*, %struct.i40e_ring** }
%struct.i40e_pf = type { i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }
%struct.i40e_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i32)* @i40e_queue_pair_enable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_queue_pair_enable_irq(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %8, i32 0, i32 1
  %10 = load %struct.i40e_ring**, %struct.i40e_ring*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %10, i64 %12
  %14 = load %struct.i40e_ring*, %struct.i40e_ring** %13, align 8
  store %struct.i40e_ring* %14, %struct.i40e_ring** %5, align 8
  %15 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %16 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %15, i32 0, i32 0
  %17 = load %struct.i40e_pf*, %struct.i40e_pf** %16, align 8
  store %struct.i40e_pf* %17, %struct.i40e_pf** %6, align 8
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %19 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %18, i32 0, i32 1
  store %struct.i40e_hw* %19, %struct.i40e_hw** %7, align 8
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %28 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %29 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @i40e_irq_dynamic_enable(%struct.i40e_vsi* %27, i32 %32)
  br label %37

34:                                               ; preds = %2
  %35 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %36 = call i32 @i40e_irq_dynamic_enable_icr0(%struct.i40e_pf* %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %39 = call i32 @i40e_flush(%struct.i40e_hw* %38)
  ret void
}

declare dso_local i32 @i40e_irq_dynamic_enable(%struct.i40e_vsi*, i32) #1

declare dso_local i32 @i40e_irq_dynamic_enable_icr0(%struct.i40e_pf*) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
