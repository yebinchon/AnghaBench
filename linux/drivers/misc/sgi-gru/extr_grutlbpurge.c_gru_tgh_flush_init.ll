; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grutlbpurge.c_gru_tgh_flush_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/sgi-gru/extr_grutlbpurge.c_gru_tgh_flush_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i32, i32, i32 }

@MAX_LOCAL_TGH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gru_tgh_flush_init(%struct.gru_state* %0) #0 {
  %2 = alloca %struct.gru_state*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gru_state* %0, %struct.gru_state** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %7 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @uv_blade_nr_possible_cpus(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %1
  %13 = load i32, i32* %3, align 4
  %14 = sub nsw i32 %13, 1
  %15 = call i32 @fls(i32 %14)
  %16 = shl i32 1, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = sub nsw i32 %17, 1
  %19 = call i32 @fls(i32 %18)
  %20 = load i32, i32* @MAX_LOCAL_TGH, align 4
  %21 = sub nsw i32 %20, 1
  %22 = call i32 @fls(i32 %21)
  %23 = sub nsw i32 %19, %22
  %24 = call i32 @max(i32 0, i32 %23)
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %12, %1
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %28 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = shl i32 1, %30
  %32 = add nsw i32 %29, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %4, align 4
  %35 = ashr i32 %33, %34
  %36 = load %struct.gru_state*, %struct.gru_state** %2, align 8
  %37 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  ret void
}

declare dso_local i32 @uv_blade_nr_possible_cpus(i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
