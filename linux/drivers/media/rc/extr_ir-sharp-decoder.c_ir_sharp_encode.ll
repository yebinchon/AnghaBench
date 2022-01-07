; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-sharp-decoder.c_ir_sharp_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-sharp-decoder.c_ir_sharp_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }

@ir_sharp_timings = common dso_local global i32 0, align 4
@SHARP_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ir_raw_event*, i32)* @ir_sharp_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_sharp_encode(i32 %0, i32 %1, %struct.ir_raw_event* %2, i32 %3) #0 {
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
  %16 = call i32 @bitrev8(i32 %15)
  %17 = ashr i32 %16, 3
  %18 = shl i32 %17, 8
  %19 = and i32 %18, 7936
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bitrev8(i32 %20)
  %22 = or i32 %19, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SHARP_NBITS, align 4
  %25 = load i32, i32* %12, align 4
  %26 = shl i32 %25, 2
  %27 = or i32 %26, 2
  %28 = call i32 @ir_raw_gen_pd(%struct.ir_raw_event** %10, i32 %23, i32* @ir_sharp_timings, i32 %24, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %65

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %9, align 4
  %36 = sub i32 %35, %34
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = ashr i32 %37, 8
  %39 = call i32 @bitrev8(i32 %38)
  %40 = ashr i32 %39, 3
  %41 = shl i32 %40, 8
  %42 = and i32 %41, 7936
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, -1
  %45 = call i32 @bitrev8(i32 %44)
  %46 = or i32 %42, %45
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @SHARP_NBITS, align 4
  %49 = load i32, i32* %12, align 4
  %50 = shl i32 %49, 2
  %51 = or i32 %50, 1
  %52 = call i32 @ir_raw_gen_pd(%struct.ir_raw_event** %10, i32 %47, i32* @ir_sharp_timings, i32 %48, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %33
  %56 = load i32, i32* %11, align 4
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %33
  %58 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %59 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %60 = ptrtoint %struct.ir_raw_event* %58 to i64
  %61 = ptrtoint %struct.ir_raw_event* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %55, %31
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @ir_raw_gen_pd(%struct.ir_raw_event**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
