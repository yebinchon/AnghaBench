; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rcmm-decoder.c_ir_rcmm_rawencoder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-rcmm-decoder.c_ir_rcmm_rawencoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ir_raw_event = type { i32 }

@RCMM_PREFIX_PULSE = common dso_local global i32 0, align 4
@RCMM_PULSE_0 = common dso_local global i32 0, align 4
@rcmmspace = common dso_local global i32* null, align 8
@RCMM_UNIT = common dso_local global i32 0, align 4
@RCMM_PULSE_3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ir_raw_event**, i32, i32, i32)* @ir_rcmm_rawencoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_rcmm_rawencoder(%struct.ir_raw_event** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ir_raw_event**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ir_raw_event** %0, %struct.ir_raw_event*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %6, align 8
  %14 = load i32, i32* @RCMM_PREFIX_PULSE, align 4
  %15 = load i32, i32* @RCMM_PULSE_0, align 4
  %16 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %13, i32* %7, i32 %14, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %54

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = sub i32 %22, 2
  store i32 %23, i32* %10, align 4
  br label %24

24:                                               ; preds = %45, %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %24
  %28 = load i32*, i32** @rcmmspace, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 3
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %28, i64 %33
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %12, align 4
  %36 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %6, align 8
  %37 = load i32, i32* @RCMM_UNIT, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %36, i32* %7, i32 %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %27
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %5, align 4
  br label %54

44:                                               ; preds = %27
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %10, align 4
  %47 = sub nsw i32 %46, 2
  store i32 %47, i32* %10, align 4
  br label %24

48:                                               ; preds = %24
  %49 = load %struct.ir_raw_event**, %struct.ir_raw_event*** %6, align 8
  %50 = load i32, i32* @RCMM_UNIT, align 4
  %51 = load i32, i32* @RCMM_PULSE_3, align 4
  %52 = mul nsw i32 %51, 2
  %53 = call i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event** %49, i32* %7, i32 %50, i32 %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %48, %42, %19
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @ir_raw_gen_pulse_space(%struct.ir_raw_event**, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
