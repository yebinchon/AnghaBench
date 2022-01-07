; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-sanyo-decoder.c_ir_sanyo_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-sanyo-decoder.c_ir_sanyo_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }

@ir_sanyo_timings = common dso_local global i32 0, align 4
@SANYO_NBITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ir_raw_event*, i32)* @ir_sanyo_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_sanyo_encode(i32 %0, i32 %1, %struct.ir_raw_event* %2, i32 %3) #0 {
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
  %16 = call i32 @bitrev16(i32 %15)
  %17 = and i32 %16, 65528
  %18 = shl i32 %17, 26
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, -1
  %21 = ashr i32 %20, 8
  %22 = call i32 @bitrev16(i32 %21)
  %23 = and i32 %22, 65528
  %24 = shl i32 %23, 13
  %25 = or i32 %18, %24
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @bitrev8(i32 %26)
  %28 = and i32 %27, 255
  %29 = shl i32 %28, 8
  %30 = or i32 %25, %29
  %31 = load i32, i32* %7, align 4
  %32 = xor i32 %31, -1
  %33 = call i32 @bitrev8(i32 %32)
  %34 = and i32 %33, 255
  %35 = or i32 %30, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @SANYO_NBITS, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ir_raw_gen_pd(%struct.ir_raw_event** %10, i32 %36, i32* @ir_sanyo_timings, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %52

44:                                               ; preds = %4
  %45 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %46 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %47 = ptrtoint %struct.ir_raw_event* %45 to i64
  %48 = ptrtoint %struct.ir_raw_event* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %44, %42
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @bitrev16(i32) #1

declare dso_local i32 @bitrev8(i32) #1

declare dso_local i32 @ir_raw_gen_pd(%struct.ir_raw_event**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
