; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_free_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_free_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_free_timing = type { i32, i32, i64 }

@IMG_IR_MAXLEN_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_MINLEN_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_FT_MIN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.img_ir_free_timing*, i64)* @img_ir_free_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_free_timing(%struct.img_ir_free_timing* %0, i64 %1) #0 {
  %3 = alloca %struct.img_ir_free_timing*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.img_ir_free_timing* %0, %struct.img_ir_free_timing** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.img_ir_free_timing*, %struct.img_ir_free_timing** %3, align 8
  %9 = getelementptr inbounds %struct.img_ir_free_timing, %struct.img_ir_free_timing* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %10, 30
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.img_ir_free_timing*, %struct.img_ir_free_timing** %3, align 8
  %14 = getelementptr inbounds %struct.img_ir_free_timing, %struct.img_ir_free_timing* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, -2
  store i32 %16, i32* %5, align 4
  br label %18

17:                                               ; preds = %2
  store i32 30, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %12
  %19 = load %struct.img_ir_free_timing*, %struct.img_ir_free_timing** %3, align 8
  %20 = getelementptr inbounds %struct.img_ir_free_timing, %struct.img_ir_free_timing* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %21, 48
  br i1 %22, label %23, label %29

23:                                               ; preds = %18
  %24 = load %struct.img_ir_free_timing*, %struct.img_ir_free_timing** %3, align 8
  %25 = getelementptr inbounds %struct.img_ir_free_timing, %struct.img_ir_free_timing* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  %28 = and i32 %27, -2
  store i32 %28, i32* %6, align 4
  br label %30

29:                                               ; preds = %18
  store i32 48, i32* %6, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.img_ir_free_timing*, %struct.img_ir_free_timing** %3, align 8
  %32 = getelementptr inbounds %struct.img_ir_free_timing, %struct.img_ir_free_timing* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %4, align 8
  %35 = mul i64 %33, %34
  %36 = add i64 %35, 999999
  %37 = udiv i64 %36, 1000000
  %38 = trunc i64 %37 to i32
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 7
  %41 = lshr i32 %40, 3
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @IMG_IR_MAXLEN_SHIFT, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @IMG_IR_MINLEN_SHIFT, align 4
  %47 = shl i32 %45, %46
  %48 = or i32 %44, %47
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @IMG_IR_FT_MIN_SHIFT, align 4
  %51 = shl i32 %49, %50
  %52 = or i32 %48, %51
  ret i32 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
