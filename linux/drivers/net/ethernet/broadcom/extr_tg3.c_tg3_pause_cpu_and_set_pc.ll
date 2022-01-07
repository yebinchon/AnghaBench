; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_pause_cpu_and_set_pc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_pause_cpu_and_set_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32 }

@CPU_STATE = common dso_local global i64 0, align 8
@CPU_PC = common dso_local global i64 0, align 8
@CPU_MODE = common dso_local global i64 0, align 8
@CPU_MODE_HALT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*, i64, i64)* @tg3_pause_cpu_and_set_pc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_pause_cpu_and_set_pc(%struct.tg3* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.tg3*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 5, i32* %8, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @CPU_STATE, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @tw32(i64 %11, i32 -1)
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @CPU_PC, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @tw32_f(i64 %15, i64 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %45, %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp slt i32 %19, 5
  br i1 %20, label %21, label %48

21:                                               ; preds = %18
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @CPU_PC, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i64 @tr32(i64 %24)
  %26 = load i64, i64* %6, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %48

29:                                               ; preds = %21
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @CPU_STATE, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @tw32(i64 %32, i32 -1)
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @CPU_MODE, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i32, i32* @CPU_MODE_HALT, align 4
  %38 = call i32 @tw32(i64 %36, i32 %37)
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @CPU_PC, align 8
  %41 = add nsw i64 %39, %40
  %42 = load i64, i64* %6, align 8
  %43 = call i32 @tw32_f(i64 %41, i64 %42)
  %44 = call i32 @udelay(i32 1000)
  br label %45

45:                                               ; preds = %29
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %18

48:                                               ; preds = %28, %18
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 5
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  br label %55

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %51
  %56 = phi i32 [ %53, %51 ], [ 0, %54 ]
  ret i32 %56
}

declare dso_local i32 @tw32(i64, i32) #1

declare dso_local i32 @tw32_f(i64, i64) #1

declare dso_local i64 @tr32(i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
