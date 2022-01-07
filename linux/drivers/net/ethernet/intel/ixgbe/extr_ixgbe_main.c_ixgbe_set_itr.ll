; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_itr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_set_itr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_q_vector = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@IXGBE_ITR_ADAPTIVE_LATENCY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_q_vector*)* @ixgbe_set_itr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_set_itr(%struct.ixgbe_q_vector* %0) #0 {
  %2 = alloca %struct.ixgbe_q_vector*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_q_vector* %0, %struct.ixgbe_q_vector** %2, align 8
  %4 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %5 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %5, i32 0, i32 1
  %7 = call i32 @ixgbe_update_itr(%struct.ixgbe_q_vector* %4, %struct.TYPE_2__* %6)
  %8 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %9 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %9, i32 0, i32 2
  %11 = call i32 @ixgbe_update_itr(%struct.ixgbe_q_vector* %8, %struct.TYPE_2__* %10)
  %12 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %17 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @min(i32 %15, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @IXGBE_ITR_ADAPTIVE_LATENCY, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = shl i32 %25, 2
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %29 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load i32, i32* %3, align 4
  %34 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_q_vector, %struct.ixgbe_q_vector* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ixgbe_q_vector*, %struct.ixgbe_q_vector** %2, align 8
  %37 = call i32 @ixgbe_write_eitr(%struct.ixgbe_q_vector* %36)
  br label %38

38:                                               ; preds = %32, %1
  ret void
}

declare dso_local i32 @ixgbe_update_itr(%struct.ixgbe_q_vector*, %struct.TYPE_2__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ixgbe_write_eitr(%struct.ixgbe_q_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
