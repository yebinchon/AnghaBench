; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_timing_range_convert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_timing_range_convert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_timing_range = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.img_ir_timing_range*, %struct.img_ir_timing_range*, i32, i64, i32)* @img_ir_timing_range_convert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @img_ir_timing_range_convert(%struct.img_ir_timing_range* %0, %struct.img_ir_timing_range* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.img_ir_timing_range*, align 8
  %7 = alloca %struct.img_ir_timing_range*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.img_ir_timing_range* %0, %struct.img_ir_timing_range** %6, align 8
  store %struct.img_ir_timing_range* %1, %struct.img_ir_timing_range** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %7, align 8
  %14 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %11, align 4
  %16 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %7, align 8
  %17 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %8, align 4
  %22 = mul i32 %20, %21
  %23 = lshr i32 %22, 7
  %24 = sub i32 %19, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul i32 %26, %27
  %29 = lshr i32 %28, 7
  %30 = add i32 %25, %29
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* %9, align 8
  %34 = mul i64 %32, %33
  %35 = udiv i64 %34, 1000000
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %12, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %9, align 8
  %40 = mul i64 %38, %39
  %41 = add i64 %40, 999999
  %42 = udiv i64 %41, 1000000
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = lshr i32 %44, %45
  %47 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %6, align 8
  %48 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %10, align 4
  %51 = shl i32 1, %50
  %52 = sub nsw i32 %51, 1
  %53 = add i32 %49, %52
  %54 = load i32, i32* %10, align 4
  %55 = lshr i32 %53, %54
  %56 = load %struct.img_ir_timing_range*, %struct.img_ir_timing_range** %6, align 8
  %57 = getelementptr inbounds %struct.img_ir_timing_range, %struct.img_ir_timing_range* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
