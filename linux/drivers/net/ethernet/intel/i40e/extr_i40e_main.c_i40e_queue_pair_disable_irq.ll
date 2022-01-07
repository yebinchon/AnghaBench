; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_disable_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_queue_pair_disable_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_pf*, %struct.i40e_ring** }
%struct.i40e_pf = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.i40e_hw }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.i40e_hw = type { i32 }
%struct.i40e_ring = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@I40E_FLAG_MSIX_ENABLED = common dso_local global i32 0, align 4
@I40E_PFINT_ICR0_ENA = common dso_local global i32 0, align 4
@I40E_PFINT_DYN_CTL0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, i32)* @i40e_queue_pair_disable_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_queue_pair_disable_irq(%struct.i40e_vsi* %0, i32 %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca %struct.i40e_hw*, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 2
  %11 = load %struct.i40e_ring**, %struct.i40e_ring*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %11, i64 %13
  %15 = load %struct.i40e_ring*, %struct.i40e_ring** %14, align 8
  store %struct.i40e_ring* %15, %struct.i40e_ring** %5, align 8
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %17 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %16, i32 0, i32 1
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %6, align 8
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 3
  store %struct.i40e_hw* %20, %struct.i40e_hw** %7, align 8
  %21 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %22 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I40E_FLAG_MSIX_ENABLED, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %2
  %28 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %29 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %32 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %8, align 4
  %37 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 1
  %40 = call i32 @I40E_PFINT_DYN_CTLN(i32 %39)
  %41 = call i32 @wr32(%struct.i40e_hw* %37, i32 %40, i32 0)
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %43 = call i32 @i40e_flush(%struct.i40e_hw* %42)
  %44 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %45 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @synchronize_irq(i32 %51)
  br label %68

53:                                               ; preds = %2
  %54 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %55 = load i32, i32* @I40E_PFINT_ICR0_ENA, align 4
  %56 = call i32 @wr32(%struct.i40e_hw* %54, i32 %55, i32 0)
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %58 = load i32, i32* @I40E_PFINT_DYN_CTL0, align 4
  %59 = call i32 @wr32(%struct.i40e_hw* %57, i32 %58, i32 0)
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %7, align 8
  %61 = call i32 @i40e_flush(%struct.i40e_hw* %60)
  %62 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %63 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %62, i32 0, i32 1
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @synchronize_irq(i32 %66)
  br label %68

68:                                               ; preds = %53, %27
  ret void
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_PFINT_DYN_CTLN(i32) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
