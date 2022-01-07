; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reset_ch_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_reset_ch_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { %struct.i40e_ring**, %struct.i40e_ring** }
%struct.i40e_ring = type { i32* }
%struct.i40e_channel = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*, %struct.i40e_channel*)* @i40e_reset_ch_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_reset_ch_rings(%struct.i40e_vsi* %0, %struct.i40e_channel* %1) #0 {
  %3 = alloca %struct.i40e_vsi*, align 8
  %4 = alloca %struct.i40e_channel*, align 8
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca %struct.i40e_ring*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %3, align 8
  store %struct.i40e_channel* %1, %struct.i40e_channel** %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %12 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %9
  %16 = load %struct.i40e_channel*, %struct.i40e_channel** %4, align 8
  %17 = getelementptr inbounds %struct.i40e_channel, %struct.i40e_channel* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = add i64 %18, %20
  store i64 %21, i64* %7, align 8
  %22 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %23 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %22, i32 0, i32 1
  %24 = load %struct.i40e_ring**, %struct.i40e_ring*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %24, i64 %25
  %27 = load %struct.i40e_ring*, %struct.i40e_ring** %26, align 8
  store %struct.i40e_ring* %27, %struct.i40e_ring** %5, align 8
  %28 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %29 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.i40e_vsi*, %struct.i40e_vsi** %3, align 8
  %31 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %30, i32 0, i32 0
  %32 = load %struct.i40e_ring**, %struct.i40e_ring*** %31, align 8
  %33 = load i64, i64* %7, align 8
  %34 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %32, i64 %33
  %35 = load %struct.i40e_ring*, %struct.i40e_ring** %34, align 8
  store %struct.i40e_ring* %35, %struct.i40e_ring** %6, align 8
  %36 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %37 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %36, i32 0, i32 0
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %15
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %9

41:                                               ; preds = %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
