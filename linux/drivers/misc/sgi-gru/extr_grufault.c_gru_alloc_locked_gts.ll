; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_alloc_locked_gts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grufault.c_gru_alloc_locked_gts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.gru_thread_state = type { i32 }
%struct.vm_area_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gru_thread_state* (i64)* @gru_alloc_locked_gts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gru_thread_state* @gru_alloc_locked_gts(i64 %0) #0 {
  %2 = alloca %struct.gru_thread_state*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca %struct.gru_thread_state*, align 8
  store i64 %0, i64* %3, align 8
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  store %struct.mm_struct* %9, %struct.mm_struct** %4, align 8
  %10 = load i32, i32* @EINVAL, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.gru_thread_state* @ERR_PTR(i32 %11)
  store %struct.gru_thread_state* %12, %struct.gru_thread_state** %6, align 8
  %13 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %14 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %13, i32 0, i32 0
  %15 = call i32 @down_write(i32* %14)
  %16 = load i64, i64* %3, align 8
  %17 = call %struct.vm_area_struct* @gru_find_vma(i64 %16)
  store %struct.vm_area_struct* %17, %struct.vm_area_struct** %5, align 8
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %19 = icmp ne %struct.vm_area_struct* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %39

21:                                               ; preds = %1
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = load i64, i64* %3, align 8
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %25 = call i32 @TSID(i64 %23, %struct.vm_area_struct* %24)
  %26 = call %struct.gru_thread_state* @gru_alloc_thread_state(%struct.vm_area_struct* %22, i32 %25)
  store %struct.gru_thread_state* %26, %struct.gru_thread_state** %6, align 8
  %27 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %28 = call i64 @IS_ERR(%struct.gru_thread_state* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %39

31:                                               ; preds = %21
  %32 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  %33 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %32, i32 0, i32 0
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %36 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %35, i32 0, i32 0
  %37 = call i32 @downgrade_write(i32* %36)
  %38 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  store %struct.gru_thread_state* %38, %struct.gru_thread_state** %2, align 8
  br label %44

39:                                               ; preds = %30, %20
  %40 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %41 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %40, i32 0, i32 0
  %42 = call i32 @up_write(i32* %41)
  %43 = load %struct.gru_thread_state*, %struct.gru_thread_state** %6, align 8
  store %struct.gru_thread_state* %43, %struct.gru_thread_state** %2, align 8
  br label %44

44:                                               ; preds = %39, %31
  %45 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  ret %struct.gru_thread_state* %45
}

declare dso_local %struct.gru_thread_state* @ERR_PTR(i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.vm_area_struct* @gru_find_vma(i64) #1

declare dso_local %struct.gru_thread_state* @gru_alloc_thread_state(%struct.vm_area_struct*, i32) #1

declare dso_local i32 @TSID(i64, %struct.vm_area_struct*) #1

declare dso_local i64 @IS_ERR(%struct.gru_thread_state*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @downgrade_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
