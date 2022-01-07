; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_drain_db_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_main.c_drain_db_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SGE_DBFIFO_STATUS_A = common dso_local global i32 0, align 4
@SGE_DBFIFO_STATUS2_A = common dso_local global i32 0, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @drain_db_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drain_db_fifo(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %9

9:                                                ; preds = %45, %2
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = load i32, i32* @SGE_DBFIFO_STATUS_A, align 4
  %12 = call i64 @t4_read_reg(%struct.adapter* %10, i32 %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.adapter*, %struct.adapter** %3, align 8
  %14 = load i32, i32* @SGE_DBFIFO_STATUS2_A, align 4
  %15 = call i64 @t4_read_reg(%struct.adapter* %13, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_t4(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %9
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @LP_COUNT_G(i64 %23)
  store i64 %24, i64* %7, align 8
  %25 = load i64, i64* %5, align 8
  %26 = call i64 @HP_COUNT_G(i64 %25)
  store i64 %26, i64* %8, align 8
  br label %32

27:                                               ; preds = %9
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @LP_COUNT_T5_G(i64 %28)
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @HP_COUNT_T5_G(i64 %30)
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %27, %22
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* %8, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %46

39:                                               ; preds = %35, %32
  %40 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %41 = call i32 @set_current_state(i32 %40)
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @usecs_to_jiffies(i32 %42)
  %44 = call i32 @schedule_timeout(i32 %43)
  br label %45

45:                                               ; preds = %39
  br i1 true, label %9, label %46

46:                                               ; preds = %45, %38
  ret void
}

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @is_t4(i32) #1

declare dso_local i64 @LP_COUNT_G(i64) #1

declare dso_local i64 @HP_COUNT_G(i64) #1

declare dso_local i64 @LP_COUNT_T5_G(i64) #1

declare dso_local i64 @HP_COUNT_T5_G(i64) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @schedule_timeout(i32) #1

declare dso_local i32 @usecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
