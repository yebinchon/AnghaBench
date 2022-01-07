; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_qv_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_qv_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_q_vector = type { i32, %struct.TYPE_2__, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FM10K_ITR_ENABLE = common dso_local global i32 0, align 4
@FM10K_ITR_MAX = common dso_local global i32 0, align 4
@FM10K_ITR_INTERVAL1_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_q_vector*)* @fm10k_qv_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_qv_enable(%struct.fm10k_q_vector* %0) #0 {
  %2 = alloca %struct.fm10k_q_vector*, align 8
  %3 = alloca i32, align 4
  store %struct.fm10k_q_vector* %0, %struct.fm10k_q_vector** %2, align 8
  %4 = load i32, i32* @FM10K_ITR_ENABLE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %6 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %5, i32 0, i32 2
  %7 = call i32 @fm10k_update_itr(%struct.TYPE_2__* %6)
  %8 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %9 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %8, i32 0, i32 1
  %10 = call i32 @fm10k_update_itr(%struct.TYPE_2__* %9)
  %11 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %12 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FM10K_ITR_MAX, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  %19 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %20 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FM10K_ITR_MAX, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @FM10K_ITR_INTERVAL1_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* %3, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.fm10k_q_vector*, %struct.fm10k_q_vector** %2, align 8
  %31 = getelementptr inbounds %struct.fm10k_q_vector, %struct.fm10k_q_vector* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @writel(i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @fm10k_update_itr(%struct.TYPE_2__*) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
