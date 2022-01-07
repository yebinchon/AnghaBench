; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_wait_idle_or_exception.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_wait_idle_or_exception.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_control_block_status = type { i64 }

@CBS_ACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_control_block_status*)* @gru_wait_idle_or_exception to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_wait_idle_or_exception(%struct.gru_control_block_status* %0) #0 {
  %2 = alloca %struct.gru_control_block_status*, align 8
  store %struct.gru_control_block_status* %0, %struct.gru_control_block_status** %2, align 8
  br label %3

3:                                                ; preds = %9, %1
  %4 = load %struct.gru_control_block_status*, %struct.gru_control_block_status** %2, align 8
  %5 = getelementptr inbounds %struct.gru_control_block_status, %struct.gru_control_block_status* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @CBS_ACTIVE, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = call i32 (...) @cpu_relax()
  %11 = call i32 (...) @barrier()
  br label %3

12:                                               ; preds = %3
  %13 = load %struct.gru_control_block_status*, %struct.gru_control_block_status** %2, align 8
  %14 = getelementptr inbounds %struct.gru_control_block_status, %struct.gru_control_block_status* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  ret i32 %16
}

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
