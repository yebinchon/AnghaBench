; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_free_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt*, i32)* @bnxt_free_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_free_mem(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %6 = call i32 @bnxt_free_vnic_attributes(%struct.bnxt* %5)
  %7 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %8 = call i32 @bnxt_free_tx_rings(%struct.bnxt* %7)
  %9 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %10 = call i32 @bnxt_free_rx_rings(%struct.bnxt* %9)
  %11 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %12 = call i32 @bnxt_free_cp_rings(%struct.bnxt* %11)
  %13 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @bnxt_free_ntp_fltrs(%struct.bnxt* %13, i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %49

18:                                               ; preds = %2
  %19 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %20 = call i32 @bnxt_free_ring_stats(%struct.bnxt* %19)
  %21 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %22 = call i32 @bnxt_free_ring_grps(%struct.bnxt* %21)
  %23 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %24 = call i32 @bnxt_free_vnics(%struct.bnxt* %23)
  %25 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @kfree(i32* %27)
  %29 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 3
  store i32* null, i32** %30, align 8
  %31 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %32 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %36 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %38 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @kfree(i32* %39)
  %41 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %44 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @kfree(i32* %45)
  %47 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %52

49:                                               ; preds = %2
  %50 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %51 = call i32 @bnxt_clear_ring_indices(%struct.bnxt* %50)
  br label %52

52:                                               ; preds = %49, %18
  ret void
}

declare dso_local i32 @bnxt_free_vnic_attributes(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_tx_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_rx_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_cp_rings(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_ntp_fltrs(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_free_ring_stats(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_ring_grps(%struct.bnxt*) #1

declare dso_local i32 @bnxt_free_vnics(%struct.bnxt*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @bnxt_clear_ring_indices(%struct.bnxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
