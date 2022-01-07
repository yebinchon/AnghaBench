; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_timings_defaults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_timings_defaults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_timings = type { %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_timings*, %struct.img_ir_timings*)* @img_ir_timings_defaults to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_timings_defaults(%struct.img_ir_timings* %0, %struct.img_ir_timings* %1) #0 {
  %3 = alloca %struct.img_ir_timings*, align 8
  %4 = alloca %struct.img_ir_timings*, align 8
  store %struct.img_ir_timings* %0, %struct.img_ir_timings** %3, align 8
  store %struct.img_ir_timings* %1, %struct.img_ir_timings** %4, align 8
  %5 = load %struct.img_ir_timings*, %struct.img_ir_timings** %3, align 8
  %6 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %5, i32 0, i32 5
  %7 = load %struct.img_ir_timings*, %struct.img_ir_timings** %4, align 8
  %8 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %7, i32 0, i32 5
  %9 = call i32 @img_ir_symbol_timing_defaults(i32* %6, i32* %8)
  %10 = load %struct.img_ir_timings*, %struct.img_ir_timings** %3, align 8
  %11 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %10, i32 0, i32 4
  %12 = load %struct.img_ir_timings*, %struct.img_ir_timings** %4, align 8
  %13 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %12, i32 0, i32 4
  %14 = call i32 @img_ir_symbol_timing_defaults(i32* %11, i32* %13)
  %15 = load %struct.img_ir_timings*, %struct.img_ir_timings** %3, align 8
  %16 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %15, i32 0, i32 3
  %17 = load %struct.img_ir_timings*, %struct.img_ir_timings** %4, align 8
  %18 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %17, i32 0, i32 3
  %19 = call i32 @img_ir_symbol_timing_defaults(i32* %16, i32* %18)
  %20 = load %struct.img_ir_timings*, %struct.img_ir_timings** %3, align 8
  %21 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %20, i32 0, i32 2
  %22 = load %struct.img_ir_timings*, %struct.img_ir_timings** %4, align 8
  %23 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %22, i32 0, i32 2
  %24 = call i32 @img_ir_symbol_timing_defaults(i32* %21, i32* %23)
  %25 = load %struct.img_ir_timings*, %struct.img_ir_timings** %3, align 8
  %26 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %25, i32 0, i32 1
  %27 = load %struct.img_ir_timings*, %struct.img_ir_timings** %4, align 8
  %28 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %27, i32 0, i32 1
  %29 = call i32 @img_ir_symbol_timing_defaults(i32* %26, i32* %28)
  %30 = load %struct.img_ir_timings*, %struct.img_ir_timings** %3, align 8
  %31 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %2
  %36 = load %struct.img_ir_timings*, %struct.img_ir_timings** %4, align 8
  %37 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.img_ir_timings*, %struct.img_ir_timings** %3, align 8
  %41 = getelementptr inbounds %struct.img_ir_timings, %struct.img_ir_timings* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i64 %39, i64* %42, align 8
  br label %43

43:                                               ; preds = %35, %2
  ret void
}

declare dso_local i32 @img_ir_symbol_timing_defaults(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
