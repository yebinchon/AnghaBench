; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_free_q_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_free_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_intfc*)* @fm10k_free_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_free_q_vectors(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %4 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %5 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %8 = call i32 @fm10k_reset_num_queues(%struct.fm10k_intfc* %7)
  br label %9

9:                                                ; preds = %13, %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @fm10k_free_q_vector(%struct.fm10k_intfc* %14, i32 %15)
  br label %9

17:                                               ; preds = %9
  ret void
}

declare dso_local i32 @fm10k_reset_num_queues(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_free_q_vector(%struct.fm10k_intfc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
