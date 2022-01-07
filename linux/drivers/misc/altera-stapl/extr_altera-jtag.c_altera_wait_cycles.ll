; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_wait_cycles.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/altera-stapl/extr_altera-jtag.c_altera_wait_cycles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.altera_state = type { %struct.altera_jtag }
%struct.altera_jtag = type { i32 }

@RESET = common dso_local global i32 0, align 4
@TMS_HIGH = common dso_local global i32 0, align 4
@TMS_LOW = common dso_local global i32 0, align 4
@TDI_LOW = common dso_local global i32 0, align 4
@IGNORE_TDO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @altera_wait_cycles(%struct.altera_state* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.altera_state*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.altera_jtag*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.altera_state* %0, %struct.altera_state** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.altera_state*, %struct.altera_state** %4, align 8
  %12 = getelementptr inbounds %struct.altera_state, %struct.altera_state* %11, i32 0, i32 0
  store %struct.altera_jtag* %12, %struct.altera_jtag** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.altera_jtag*, %struct.altera_jtag** %7, align 8
  %14 = getelementptr inbounds %struct.altera_jtag, %struct.altera_jtag* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load %struct.altera_state*, %struct.altera_state** %4, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @altera_goto_jstate(%struct.altera_state* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load i32, i32* %10, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %22
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RESET, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @TMS_HIGH, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @TMS_LOW, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %8, align 4
  store i64 0, i64* %9, align 8
  br label %35

35:                                               ; preds = %44, %33
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @TDI_LOW, align 4
  %42 = load i32, i32* @IGNORE_TDO, align 4
  %43 = call i32 @alt_jtag_io(i32 %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39
  %45 = load i64, i64* %9, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %9, align 8
  br label %35

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i32, i32* %10, align 4
  ret i32 %49
}

declare dso_local i32 @altera_goto_jstate(%struct.altera_state*, i32) #1

declare dso_local i32 @alt_jtag_io(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
