; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_lock_kernel_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grukservices.c_gru_lock_kernel_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_blade_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@lock_kernel_context = common dso_local global i32 0, align 4
@gru_base = common dso_local global %struct.gru_blade_state** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.gru_blade_state* (i32)* @gru_lock_kernel_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.gru_blade_state* @gru_lock_kernel_context(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gru_blade_state*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @lock_kernel_context, align 4
  %6 = call i32 @STAT(i32 %5)
  br label %7

7:                                                ; preds = %30, %1
  %8 = load i32, i32* %2, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 (...) @uv_numa_blade_id()
  br label %14

12:                                               ; preds = %7
  %13 = load i32, i32* %2, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = phi i32 [ %11, %10 ], [ %13, %12 ]
  store i32 %15, i32* %4, align 4
  %16 = load %struct.gru_blade_state**, %struct.gru_blade_state*** @gru_base, align 8
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.gru_blade_state*, %struct.gru_blade_state** %16, i64 %18
  %20 = load %struct.gru_blade_state*, %struct.gru_blade_state** %19, align 8
  store %struct.gru_blade_state* %20, %struct.gru_blade_state** %3, align 8
  %21 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %22 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %21, i32 0, i32 1
  %23 = call i32 @down_read(i32* %22)
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %14
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (...) @uv_numa_blade_id()
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %32 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %31, i32 0, i32 1
  %33 = call i32 @up_read(i32* %32)
  br label %7

34:                                               ; preds = %26, %14
  %35 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %36 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %46

39:                                               ; preds = %34
  %40 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %41 = getelementptr inbounds %struct.gru_blade_state, %struct.gru_blade_state* %40, i32 0, i32 0
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39, %34
  %47 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @gru_load_kernel_context(%struct.gru_blade_state* %47, i32 %48)
  br label %50

50:                                               ; preds = %46, %39
  %51 = load %struct.gru_blade_state*, %struct.gru_blade_state** %3, align 8
  ret %struct.gru_blade_state* %51
}

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @uv_numa_blade_id(...) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @gru_load_kernel_context(%struct.gru_blade_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
