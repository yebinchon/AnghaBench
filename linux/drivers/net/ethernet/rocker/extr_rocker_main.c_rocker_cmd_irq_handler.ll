; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_main.c_rocker_cmd_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rocker = type { i32, i32 }
%struct.rocker_desc_info = type { i32 }
%struct.rocker_wait = type { i64 }

@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rocker_cmd_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rocker_cmd_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rocker*, align 8
  %6 = alloca %struct.rocker_desc_info*, align 8
  %7 = alloca %struct.rocker_wait*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.rocker*
  store %struct.rocker* %10, %struct.rocker** %5, align 8
  store i64 0, i64* %8, align 8
  %11 = load %struct.rocker*, %struct.rocker** %5, align 8
  %12 = getelementptr inbounds %struct.rocker, %struct.rocker* %11, i32 0, i32 1
  %13 = call i32 @spin_lock(i32* %12)
  br label %14

14:                                               ; preds = %32, %2
  %15 = load %struct.rocker*, %struct.rocker** %5, align 8
  %16 = getelementptr inbounds %struct.rocker, %struct.rocker* %15, i32 0, i32 0
  %17 = call %struct.rocker_desc_info* @rocker_desc_tail_get(i32* %16)
  store %struct.rocker_desc_info* %17, %struct.rocker_desc_info** %6, align 8
  %18 = icmp ne %struct.rocker_desc_info* %17, null
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %21 = call %struct.rocker_wait* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info* %20)
  store %struct.rocker_wait* %21, %struct.rocker_wait** %7, align 8
  %22 = load %struct.rocker_wait*, %struct.rocker_wait** %7, align 8
  %23 = getelementptr inbounds %struct.rocker_wait, %struct.rocker_wait* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.rocker_desc_info*, %struct.rocker_desc_info** %6, align 8
  %28 = call i32 @rocker_desc_gen_clear(%struct.rocker_desc_info* %27)
  br label %32

29:                                               ; preds = %19
  %30 = load %struct.rocker_wait*, %struct.rocker_wait** %7, align 8
  %31 = call i32 @rocker_wait_wake_up(%struct.rocker_wait* %30)
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* %8, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %8, align 8
  br label %14

35:                                               ; preds = %14
  %36 = load %struct.rocker*, %struct.rocker** %5, align 8
  %37 = getelementptr inbounds %struct.rocker, %struct.rocker* %36, i32 0, i32 1
  %38 = call i32 @spin_unlock(i32* %37)
  %39 = load %struct.rocker*, %struct.rocker** %5, align 8
  %40 = load %struct.rocker*, %struct.rocker** %5, align 8
  %41 = getelementptr inbounds %struct.rocker, %struct.rocker* %40, i32 0, i32 0
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @rocker_dma_ring_credits_set(%struct.rocker* %39, i32* %41, i64 %42)
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %44
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rocker_desc_info* @rocker_desc_tail_get(i32*) #1

declare dso_local %struct.rocker_wait* @rocker_desc_cookie_ptr_get(%struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_desc_gen_clear(%struct.rocker_desc_info*) #1

declare dso_local i32 @rocker_wait_wake_up(%struct.rocker_wait*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @rocker_dma_ring_credits_set(%struct.rocker*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
