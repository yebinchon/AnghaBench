; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_check_chiplet_assignment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_check_chiplet_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i32, i32 }
%struct.gru_thread_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_state*, %struct.gru_thread_state*)* @gru_check_chiplet_assignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_check_chiplet_assignment(%struct.gru_state* %0, %struct.gru_thread_state* %1) #0 {
  %3 = alloca %struct.gru_state*, align 8
  %4 = alloca %struct.gru_thread_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gru_state* %0, %struct.gru_state** %3, align 8
  store %struct.gru_thread_state* %1, %struct.gru_thread_state** %4, align 8
  %7 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %8 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = call i32 (...) @uv_numa_blade_id()
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %12, %2
  %15 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %16 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %6, align 4
  %18 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %19 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %29 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %27, %30
  br label %32

32:                                               ; preds = %26, %23
  %33 = phi i1 [ true, %23 ], [ %31, %26 ]
  br label %34

34:                                               ; preds = %32, %14
  %35 = phi i1 [ false, %14 ], [ %33, %32 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i32 @uv_numa_blade_id(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
