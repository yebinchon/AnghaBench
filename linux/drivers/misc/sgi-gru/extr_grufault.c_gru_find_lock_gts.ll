; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_find_lock_gts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_find_lock_gts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.gru_thread_state = type { i32 }
%struct.vm_area_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gru_thread_state* (i64)* @gru_find_lock_gts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gru_thread_state* @gru_find_lock_gts(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mm_struct*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.gru_thread_state*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  store %struct.mm_struct* %8, %struct.mm_struct** %3, align 8
  store %struct.gru_thread_state* null, %struct.gru_thread_state** %5, align 8
  %9 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %10 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %9, i32 0, i32 0
  %11 = call i32 @down_read(i32* %10)
  %12 = load i64, i64* %2, align 8
  %13 = call %struct.vm_area_struct* @gru_find_vma(i64 %12)
  store %struct.vm_area_struct* %13, %struct.vm_area_struct** %4, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %15 = icmp ne %struct.vm_area_struct* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %18 = load i64, i64* %2, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = call i32 @TSID(i64 %18, %struct.vm_area_struct* %19)
  %21 = call %struct.gru_thread_state* @gru_find_thread_state(%struct.vm_area_struct* %17, i32 %20)
  store %struct.gru_thread_state* %21, %struct.gru_thread_state** %5, align 8
  br label %22

22:                                               ; preds = %16, %1
  %23 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %24 = icmp ne %struct.gru_thread_state* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  %27 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  br label %33

29:                                               ; preds = %22
  %30 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %31 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %30, i32 0, i32 0
  %32 = call i32 @up_read(i32* %31)
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.gru_thread_state*, %struct.gru_thread_state** %5, align 8
  ret %struct.gru_thread_state* %34
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.vm_area_struct* @gru_find_vma(i64) #1

declare dso_local %struct.gru_thread_state* @gru_find_thread_state(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @TSID(i64, %struct.vm_area_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
