; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_free_timing_dynamic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_free_timing_dynamic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_filter = type { i32, i32 }

@IMG_IR_MINLEN = common dso_local global i32 0, align 4
@IMG_IR_MINLEN_SHIFT = common dso_local global i32 0, align 4
@IMG_IR_MAXLEN = common dso_local global i32 0, align 4
@IMG_IR_MAXLEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.img_ir_filter*)* @img_ir_free_timing_dynamic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_free_timing_dynamic(i32 %0, %struct.img_ir_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.img_ir_filter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.img_ir_filter* %1, %struct.img_ir_filter** %4, align 8
  %9 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %10 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, -2
  store i32 %12, i32* %7, align 4
  %13 = load %struct.img_ir_filter*, %struct.img_ir_filter** %4, align 8
  %14 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  %17 = and i32 %16, -2
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @IMG_IR_MINLEN, align 4
  %20 = and i32 %18, %19
  %21 = load i32, i32* @IMG_IR_MINLEN_SHIFT, align 4
  %22 = lshr i32 %20, %21
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @IMG_IR_MAXLEN, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @IMG_IR_MAXLEN_SHIFT, align 4
  %27 = lshr i32 %25, %26
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ugt i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %2
  %32 = load i32, i32* @IMG_IR_MINLEN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @IMG_IR_MINLEN_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %31, %2
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32, i32* @IMG_IR_MAXLEN, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @IMG_IR_MAXLEN_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %45, %41
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
