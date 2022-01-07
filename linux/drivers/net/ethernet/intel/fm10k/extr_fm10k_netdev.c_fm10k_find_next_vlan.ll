; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_find_next_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_find_next_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VLAN_N_VID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_intfc*, i64)* @fm10k_find_next_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_find_next_vlan(%struct.fm10k_intfc* %0, i64 %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.fm10k_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %9 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %8, i32 0, i32 1
  store %struct.fm10k_hw* %9, %struct.fm10k_hw** %5, align 8
  %10 = load %struct.fm10k_hw*, %struct.fm10k_hw** %5, align 8
  %11 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  br label %21

19:                                               ; preds = %2
  %20 = load i64, i64* @VLAN_N_VID, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i64 [ %18, %17 ], [ %20, %19 ]
  store i64 %22, i64* %7, align 8
  %23 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %24 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %4, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %4, align 8
  %29 = call i64 @find_next_bit(i32 %25, i64 %26, i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  ret i64 %30
}

declare dso_local i64 @find_next_bit(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
