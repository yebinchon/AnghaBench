; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_free_gru_context.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grumain.c_gru_free_gru_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_thread_state = type { i64, i32, %struct.gru_state* }
%struct.gru_state = type { i32, i32, i32**, i32 }

@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"gts %p, gid %d\0A\00", align 1
@NULLCTX = common dso_local global i64 0, align 8
@free_context = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gru_thread_state*)* @gru_free_gru_context to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_free_gru_context(%struct.gru_thread_state* %0) #0 {
  %2 = alloca %struct.gru_thread_state*, align 8
  %3 = alloca %struct.gru_state*, align 8
  store %struct.gru_thread_state* %0, %struct.gru_thread_state** %2, align 8
  %4 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %5 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %4, i32 0, i32 2
  %6 = load %struct.gru_state*, %struct.gru_state** %5, align 8
  store %struct.gru_state* %6, %struct.gru_state** %3, align 8
  %7 = load i32, i32* @grudev, align 4
  %8 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %9 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %10 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @gru_dbg(i32 %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.gru_thread_state* %8, i32 %11)
  %13 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %14 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %17 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %16, i32 0, i32 2
  %18 = load i32**, i32*** %17, align 8
  %19 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %20 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i32*, i32** %18, i64 %21
  store i32* null, i32** %22, align 8
  %23 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %24 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %25 = call i32 @free_gru_resources(%struct.gru_state* %23, %struct.gru_thread_state* %24)
  %26 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %27 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %30 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %29, i32 0, i32 1
  %31 = call i64 @test_bit(i64 %28, i32* %30)
  %32 = icmp eq i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @BUG_ON(i32 %33)
  %35 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %36 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %39 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %38, i32 0, i32 1
  %40 = call i32 @__clear_bit(i64 %37, i32* %39)
  %41 = load i64, i64* @NULLCTX, align 8
  %42 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %43 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %45 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %44, i32 0, i32 2
  store %struct.gru_state* null, %struct.gru_state** %45, align 8
  %46 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %47 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %46, i32 0, i32 1
  store i32 -1, i32* %47, align 8
  %48 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %49 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.gru_thread_state*, %struct.gru_thread_state** %2, align 8
  %52 = call i32 @gts_drop(%struct.gru_thread_state* %51)
  %53 = load i32, i32* @free_context, align 4
  %54 = call i32 @STAT(i32 %53)
  ret void
}

declare dso_local i32 @gru_dbg(i32, i8*, %struct.gru_thread_state*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @free_gru_resources(%struct.gru_state*, %struct.gru_thread_state*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @test_bit(i64, i32*) #1

declare dso_local i32 @__clear_bit(i64, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @gts_drop(%struct.gru_thread_state*) #1

declare dso_local i32 @STAT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
