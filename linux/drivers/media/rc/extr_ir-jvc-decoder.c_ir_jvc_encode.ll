; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-jvc-decoder.c_ir_jvc_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-jvc-decoder.c_ir_jvc_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }

@ir_jvc_timings = common dso_local global i32 0, align 4
@JVC_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ir_raw_event*, i32)* @ir_jvc_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_jvc_encode(i32 %0, i32 %1, %struct.ir_raw_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_raw_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ir_raw_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ir_raw_event* %2, %struct.ir_raw_event** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  store %struct.ir_raw_event* %13, %struct.ir_raw_event** %10, align 8
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 8
  %16 = and i32 %15, 255
  %17 = call i32 @bitrev8(i32 %16)
  %18 = shl i32 %17, 8
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 0
  %21 = and i32 %20, 255
  %22 = call i32 @bitrev8(i32 %21)
  %23 = shl i32 %22, 0
  %24 = or i32 %18, %23
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @JVC_NBITS, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @ir_raw_gen_pd(%struct.ir_raw_event** %10, i32 %25, i32* @ir_jvc_timings, i32 %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %41

33:                                               ; preds = %4
  %34 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %35 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %36 = ptrtoint %struct.ir_raw_event* %34 to i64
  %37 = ptrtoint %struct.ir_raw_event* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %33, %31
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @ir_raw_gen_pd(%struct.ir_raw_event**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
