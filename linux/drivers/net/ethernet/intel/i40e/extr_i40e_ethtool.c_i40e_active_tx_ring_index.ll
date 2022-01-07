; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_active_tx_ring_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_active_tx_ring_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vsi*, i64)* @i40e_active_tx_ring_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_active_tx_ring_index(%struct.i40e_vsi* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vsi*, align 8
  %5 = alloca i64, align 8
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %7 = call i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %33, label %15

15:                                               ; preds = %9
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %18 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %16, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %15
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %24 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %27 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %25, %28
  %30 = icmp slt i64 %22, %29
  br label %31

31:                                               ; preds = %21, %15
  %32 = phi i1 [ false, %15 ], [ %30, %21 ]
  br label %33

33:                                               ; preds = %31, %9
  %34 = phi i1 [ true, %9 ], [ %32, %31 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %3, align 4
  br label %43

36:                                               ; preds = %2
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.i40e_vsi*, %struct.i40e_vsi** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp slt i64 %37, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %36, %33
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @i40e_enabled_xdp_vsi(%struct.i40e_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
