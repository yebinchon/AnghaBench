; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_per_engine_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_ce.c_ath10k_ce_per_engine_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ath10k_hw_ce_host_wm_regs* }
%struct.ath10k_hw_ce_host_wm_regs = type { i32, i32 }
%struct.ath10k_ce = type { i32, %struct.ath10k_ce_pipe* }
%struct.ath10k_ce_pipe = type { i32 (%struct.ath10k_ce_pipe*)*, i32 (%struct.ath10k_ce_pipe*)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_ce_per_engine_service(%struct.ath10k* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k_ce*, align 8
  %6 = alloca %struct.ath10k_ce_pipe*, align 8
  %7 = alloca %struct.ath10k_hw_ce_host_wm_regs*, align 8
  %8 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %10 = call %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k* %9)
  store %struct.ath10k_ce* %10, %struct.ath10k_ce** %5, align 8
  %11 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %12 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %11, i32 0, i32 1
  %13 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %13, i64 %15
  store %struct.ath10k_ce_pipe* %16, %struct.ath10k_ce_pipe** %6, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.ath10k_hw_ce_host_wm_regs*, %struct.ath10k_hw_ce_host_wm_regs** %20, align 8
  store %struct.ath10k_hw_ce_host_wm_regs* %21, %struct.ath10k_hw_ce_host_wm_regs** %7, align 8
  %22 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %23 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  %25 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %26 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_bh(i32* %26)
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.ath10k_hw_ce_host_wm_regs*, %struct.ath10k_hw_ce_host_wm_regs** %7, align 8
  %31 = getelementptr inbounds %struct.ath10k_hw_ce_host_wm_regs, %struct.ath10k_hw_ce_host_wm_regs* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ath10k_ce_engine_int_status_clear(%struct.ath10k* %28, i32 %29, i32 %32)
  %34 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %35 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %34, i32 0, i32 0
  %36 = call i32 @spin_unlock_bh(i32* %35)
  %37 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %38 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %37, i32 0, i32 1
  %39 = load i32 (%struct.ath10k_ce_pipe*)*, i32 (%struct.ath10k_ce_pipe*)** %38, align 8
  %40 = icmp ne i32 (%struct.ath10k_ce_pipe*)* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %2
  %42 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %43 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %42, i32 0, i32 1
  %44 = load i32 (%struct.ath10k_ce_pipe*)*, i32 (%struct.ath10k_ce_pipe*)** %43, align 8
  %45 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %46 = call i32 %44(%struct.ath10k_ce_pipe* %45)
  br label %47

47:                                               ; preds = %41, %2
  %48 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %49 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %48, i32 0, i32 0
  %50 = load i32 (%struct.ath10k_ce_pipe*)*, i32 (%struct.ath10k_ce_pipe*)** %49, align 8
  %51 = icmp ne i32 (%struct.ath10k_ce_pipe*)* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %47
  %53 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %54 = getelementptr inbounds %struct.ath10k_ce_pipe, %struct.ath10k_ce_pipe* %53, i32 0, i32 0
  %55 = load i32 (%struct.ath10k_ce_pipe*)*, i32 (%struct.ath10k_ce_pipe*)** %54, align 8
  %56 = load %struct.ath10k_ce_pipe*, %struct.ath10k_ce_pipe** %6, align 8
  %57 = call i32 %55(%struct.ath10k_ce_pipe* %56)
  br label %58

58:                                               ; preds = %52, %47
  %59 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %60 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %59, i32 0, i32 0
  %61 = call i32 @spin_lock_bh(i32* %60)
  %62 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ath10k_hw_ce_host_wm_regs*, %struct.ath10k_hw_ce_host_wm_regs** %7, align 8
  %65 = getelementptr inbounds %struct.ath10k_hw_ce_host_wm_regs, %struct.ath10k_hw_ce_host_wm_regs* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @ath10k_ce_engine_int_status_clear(%struct.ath10k* %62, i32 %63, i32 %66)
  %68 = load %struct.ath10k_ce*, %struct.ath10k_ce** %5, align 8
  %69 = getelementptr inbounds %struct.ath10k_ce, %struct.ath10k_ce* %68, i32 0, i32 0
  %70 = call i32 @spin_unlock_bh(i32* %69)
  ret void
}

declare dso_local %struct.ath10k_ce* @ath10k_ce_priv(%struct.ath10k*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_ce_engine_int_status_clear(%struct.ath10k*, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
