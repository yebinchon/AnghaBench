; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_admin_running_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_com.c_ena_com_set_admin_running_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ena_com_dev = type { %struct.ena_com_admin_queue }
%struct.ena_com_admin_queue = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ena_com_set_admin_running_state(%struct.ena_com_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.ena_com_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_com_admin_queue*, align 8
  %6 = alloca i64, align 8
  store %struct.ena_com_dev* %0, %struct.ena_com_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %7, i32 0, i32 0
  store %struct.ena_com_admin_queue* %8, %struct.ena_com_admin_queue** %5, align 8
  store i64 0, i64* %6, align 8
  %9 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %10 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %9, i32 0, i32 1
  %11 = load i64, i64* %6, align 8
  %12 = call i32 @spin_lock_irqsave(i32* %10, i64 %11)
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ena_com_dev*, %struct.ena_com_dev** %3, align 8
  %15 = getelementptr inbounds %struct.ena_com_dev, %struct.ena_com_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.ena_com_admin_queue*, %struct.ena_com_admin_queue** %5, align 8
  %18 = getelementptr inbounds %struct.ena_com_admin_queue, %struct.ena_com_admin_queue* %17, i32 0, i32 1
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
