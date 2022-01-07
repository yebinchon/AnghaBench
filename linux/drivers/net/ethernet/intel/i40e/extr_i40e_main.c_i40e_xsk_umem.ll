; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_xsk_umem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_xsk_umem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_umem = type { i32 }
%struct.i40e_ring = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.xdp_umem* (%struct.i40e_ring*)* @i40e_xsk_umem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.xdp_umem* @i40e_xsk_umem(%struct.i40e_ring* %0) #0 {
  %2 = alloca %struct.xdp_umem*, align 8
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.i40e_ring* %0, %struct.i40e_ring** %3, align 8
  %6 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %7 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @i40e_enabled_xdp_vsi(%struct.TYPE_2__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %14 = call i64 @ring_is_xdp(%struct.i40e_ring* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %18 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %23, %21
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %16, %1
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %32 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @test_bit(i32 %30, i32 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29, %26
  store %struct.xdp_umem* null, %struct.xdp_umem** %2, align 8
  br label %47

39:                                               ; preds = %29
  %40 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %41 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call %struct.xdp_umem* @xdp_get_umem_from_qid(i32 %44, i32 %45)
  store %struct.xdp_umem* %46, %struct.xdp_umem** %2, align 8
  br label %47

47:                                               ; preds = %39, %38
  %48 = load %struct.xdp_umem*, %struct.xdp_umem** %2, align 8
  ret %struct.xdp_umem* %48
}

declare dso_local i32 @i40e_enabled_xdp_vsi(%struct.TYPE_2__*) #1

declare dso_local i64 @ring_is_xdp(%struct.i40e_ring*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.xdp_umem* @xdp_get_umem_from_qid(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
