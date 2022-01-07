; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_assign_l2_accel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_assign_l2_accel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, %struct.fm10k_l2_accel*, %struct.fm10k_ring** }
%struct.fm10k_ring = type { i32 }
%struct.fm10k_l2_accel = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*, %struct.fm10k_l2_accel*)* @fm10k_assign_l2_accel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_assign_l2_accel(%struct.fm10k_intfc* %0, %struct.fm10k_l2_accel* %1) #0 {
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_l2_accel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.fm10k_ring*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  store %struct.fm10k_l2_accel* %1, %struct.fm10k_l2_accel** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %26, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %15 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %14, i32 0, i32 2
  %16 = load %struct.fm10k_ring**, %struct.fm10k_ring*** %15, align 8
  %17 = load i32, i32* %5, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.fm10k_ring*, %struct.fm10k_ring** %16, i64 %18
  %20 = load %struct.fm10k_ring*, %struct.fm10k_ring** %19, align 8
  store %struct.fm10k_ring* %20, %struct.fm10k_ring** %6, align 8
  %21 = load %struct.fm10k_ring*, %struct.fm10k_ring** %6, align 8
  %22 = getelementptr inbounds %struct.fm10k_ring, %struct.fm10k_ring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %4, align 8
  %25 = call i32 @rcu_assign_pointer(i32 %23, %struct.fm10k_l2_accel* %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.fm10k_l2_accel*, %struct.fm10k_l2_accel** %4, align 8
  %31 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %32 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %31, i32 0, i32 1
  store %struct.fm10k_l2_accel* %30, %struct.fm10k_l2_accel** %32, align 8
  ret void
}

declare dso_local i32 @rcu_assign_pointer(i32, %struct.fm10k_l2_accel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
