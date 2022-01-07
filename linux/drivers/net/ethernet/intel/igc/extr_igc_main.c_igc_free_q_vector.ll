; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_free_q_vector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igc/extr_igc_main.c_igc_free_q_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igc_adapter = type { %struct.igc_q_vector** }
%struct.igc_q_vector = type { i32 }

@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.igc_adapter*, i32)* @igc_free_q_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @igc_free_q_vector(%struct.igc_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.igc_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.igc_q_vector*, align 8
  store %struct.igc_adapter* %0, %struct.igc_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %6, i32 0, i32 0
  %8 = load %struct.igc_q_vector**, %struct.igc_q_vector*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.igc_q_vector*, %struct.igc_q_vector** %8, i64 %10
  %12 = load %struct.igc_q_vector*, %struct.igc_q_vector** %11, align 8
  store %struct.igc_q_vector* %12, %struct.igc_q_vector** %5, align 8
  %13 = load %struct.igc_adapter*, %struct.igc_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.igc_adapter, %struct.igc_adapter* %13, i32 0, i32 0
  %15 = load %struct.igc_q_vector**, %struct.igc_q_vector*** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.igc_q_vector*, %struct.igc_q_vector** %15, i64 %17
  store %struct.igc_q_vector* null, %struct.igc_q_vector** %18, align 8
  %19 = load %struct.igc_q_vector*, %struct.igc_q_vector** %5, align 8
  %20 = icmp ne %struct.igc_q_vector* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.igc_q_vector*, %struct.igc_q_vector** %5, align 8
  %23 = load i32, i32* @rcu, align 4
  %24 = call i32 @kfree_rcu(%struct.igc_q_vector* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %2
  ret void
}

declare dso_local i32 @kfree_rcu(%struct.igc_q_vector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
