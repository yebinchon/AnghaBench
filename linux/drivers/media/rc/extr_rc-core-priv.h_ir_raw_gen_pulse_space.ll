; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-core-priv.h_ir_raw_gen_pulse_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-core-priv.h_ir_raw_gen_pulse_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ir_raw_event**, i32*, i32, i32)* @ir_raw_gen_pulse_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ir_raw_event**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ir_raw_event** %0, %struct.ir_raw_event*** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32*, i32** %7, align 8
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load i32, i32* @ENOBUFS, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  br label %40

16:                                               ; preds = %4
  %17 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %6, align 8
  %18 = load %struct.ir_raw_event*, %struct.ir_raw_event** %17, align 8
  %19 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %18, i32 1
  store %struct.ir_raw_event* %19, %struct.ir_raw_event** %17, align 8
  %20 = ptrtoint %struct.ir_raw_event* %18 to i32
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @init_ir_raw_event_duration(i32 %20, i32 1, i32 %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %23, align 4
  %25 = add i32 %24, -1
  store i32 %25, i32* %23, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %16
  %28 = load i32, i32* @ENOBUFS, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %40

30:                                               ; preds = %16
  %31 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %6, align 8
  %32 = load %struct.ir_raw_event*, %struct.ir_raw_event** %31, align 8
  %33 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %32, i32 1
  store %struct.ir_raw_event* %33, %struct.ir_raw_event** %31, align 8
  %34 = ptrtoint %struct.ir_raw_event* %32 to i32
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @init_ir_raw_event_duration(i32 %34, i32 0, i32 %35)
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %37, align 4
  store i32 0, i32* %5, align 4
  br label %40

40:                                               ; preds = %30, %27, %13
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @init_ir_raw_event_duration(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
