; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-sony-decoder.c_ir_sony_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-sony-decoder.c_ir_sony_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }

@RC_PROTO_SONY12 = common dso_local global i32 0, align 4
@RC_PROTO_SONY15 = common dso_local global i32 0, align 4
@ir_sony_timings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.ir_raw_event*, i32)* @ir_sony_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_sony_encode(i32 %0, i32 %1, %struct.ir_raw_event* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ir_raw_event*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ir_raw_event*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.ir_raw_event* %2, %struct.ir_raw_event** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  store %struct.ir_raw_event* %14, %struct.ir_raw_event** %10, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @RC_PROTO_SONY12, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 127
  %21 = load i32, i32* %7, align 4
  %22 = and i32 %21, 2031616
  %23 = ashr i32 %22, 9
  %24 = or i32 %20, %23
  store i32 %24, i32* %11, align 4
  store i32 12, i32* %12, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @RC_PROTO_SONY15, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, 127
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 16711680
  %34 = ashr i32 %33, 9
  %35 = or i32 %31, %34
  store i32 %35, i32* %11, align 4
  store i32 15, i32* %12, align 4
  br label %47

36:                                               ; preds = %25
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 127
  %39 = load i32, i32* %7, align 4
  %40 = and i32 %39, 2031616
  %41 = ashr i32 %40, 9
  %42 = or i32 %38, %41
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, 65280
  %45 = shl i32 %44, 4
  %46 = or i32 %42, %45
  store i32 %46, i32* %11, align 4
  store i32 20, i32* %12, align 4
  br label %47

47:                                               ; preds = %36, %29
  br label %48

48:                                               ; preds = %47, %18
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %11, align 4
  %52 = call i32 @ir_raw_gen_pl(%struct.ir_raw_event** %10, i32 %49, i32* @ir_sony_timings, i32 %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %5, align 4
  br label %65

57:                                               ; preds = %48
  %58 = load %struct.ir_raw_event*, %struct.ir_raw_event** %10, align 8
  %59 = load %struct.ir_raw_event*, %struct.ir_raw_event** %8, align 8
  %60 = ptrtoint %struct.ir_raw_event* %58 to i64
  %61 = ptrtoint %struct.ir_raw_event* %59 to i64
  %62 = sub i64 %60, %61
  %63 = sdiv exact i64 %62, 4
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %57, %55
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @ir_raw_gen_pl(%struct.ir_raw_event**, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
