; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_adaptive_coalesce_rx_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/vxge/extr_vxge-main.c_adaptive_coalesce_rx_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxge_ring = type { i64, i64, %struct.__vxge_hw_ring* }
%struct.__vxge_hw_ring = type { i64 }

@HZ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@VXGE_T1A_MAX_INTERRUPT_COUNT = common dso_local global i64 0, align 8
@VXGE_RTI_RTIMER_ADAPT_VAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxge_ring*)* @adaptive_coalesce_rx_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adaptive_coalesce_rx_interrupts(%struct.vxge_ring* %0) #0 {
  %2 = alloca %struct.vxge_ring*, align 8
  %3 = alloca %struct.__vxge_hw_ring*, align 8
  store %struct.vxge_ring* %0, %struct.vxge_ring** %2, align 8
  %4 = load %struct.vxge_ring*, %struct.vxge_ring** %2, align 8
  %5 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add nsw i64 %6, 1
  store i64 %7, i64* %5, align 8
  %8 = load %struct.vxge_ring*, %struct.vxge_ring** %2, align 8
  %9 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @HZ, align 4
  %12 = sdiv i32 %11, 100
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %10, %13
  %15 = load i64, i64* @jiffies, align 8
  %16 = call i64 @time_before(i64 %14, i64 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %56

18:                                               ; preds = %1
  %19 = load %struct.vxge_ring*, %struct.vxge_ring** %2, align 8
  %20 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %19, i32 0, i32 2
  %21 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %20, align 8
  store %struct.__vxge_hw_ring* %21, %struct.__vxge_hw_ring** %3, align 8
  %22 = load i64, i64* @jiffies, align 8
  %23 = load %struct.vxge_ring*, %struct.vxge_ring** %2, align 8
  %24 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = load %struct.vxge_ring*, %struct.vxge_ring** %2, align 8
  %26 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @VXGE_T1A_MAX_INTERRUPT_COUNT, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %18
  %31 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %3, align 8
  %32 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VXGE_RTI_RTIMER_ADAPT_VAL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load i64, i64* @VXGE_RTI_RTIMER_ADAPT_VAL, align 8
  %38 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %3, align 8
  %39 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %3, align 8
  %41 = call i32 @vxge_hw_vpath_dynamic_rti_rtimer_set(%struct.__vxge_hw_ring* %40)
  br label %53

42:                                               ; preds = %30, %18
  %43 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %3, align 8
  %44 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %3, align 8
  %49 = getelementptr inbounds %struct.__vxge_hw_ring, %struct.__vxge_hw_ring* %48, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.__vxge_hw_ring*, %struct.__vxge_hw_ring** %3, align 8
  %51 = call i32 @vxge_hw_vpath_dynamic_rti_rtimer_set(%struct.__vxge_hw_ring* %50)
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %36
  %54 = load %struct.vxge_ring*, %struct.vxge_ring** %2, align 8
  %55 = getelementptr inbounds %struct.vxge_ring, %struct.vxge_ring* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %1
  ret void
}

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @vxge_hw_vpath_dynamic_rti_rtimer_set(%struct.__vxge_hw_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
