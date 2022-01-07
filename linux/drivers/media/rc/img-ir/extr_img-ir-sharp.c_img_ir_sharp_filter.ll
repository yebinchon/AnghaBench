; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sharp.c_img_ir_sharp_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sharp.c_img_ir_sharp_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_scancode_filter = type { i32, i32 }
%struct.img_ir_filter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i32)* @img_ir_sharp_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_sharp_filter(%struct.rc_scancode_filter* %0, %struct.img_ir_filter* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_scancode_filter*, align 8
  %5 = alloca %struct.img_ir_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rc_scancode_filter* %0, %struct.rc_scancode_filter** %4, align 8
  store %struct.img_ir_filter* %1, %struct.img_ir_filter** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %16 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 8
  %19 = and i32 %18, 31
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %21 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 8
  %24 = and i32 %23, 31
  store i32 %24, i32* %11, align 4
  %25 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %26 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 0
  %29 = and i32 %28, 255
  store i32 %29, i32* %8, align 4
  %30 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %31 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = ashr i32 %32, 0
  %34 = and i32 %33, 255
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %10, align 4
  store i32 1, i32* %14, align 4
  br label %38

38:                                               ; preds = %37, %3
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %8, align 4
  %41 = shl i32 %40, 5
  %42 = or i32 %39, %41
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %43, 13
  %45 = or i32 %42, %44
  %46 = load i32, i32* %10, align 4
  %47 = shl i32 %46, 14
  %48 = or i32 %45, %47
  %49 = load %struct.img_ir_filter*, %struct.img_ir_filter** %5, align 8
  %50 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = shl i32 %52, 5
  %54 = or i32 %51, %53
  %55 = load i32, i32* %13, align 4
  %56 = shl i32 %55, 13
  %57 = or i32 %54, %56
  %58 = load i32, i32* %14, align 4
  %59 = shl i32 %58, 14
  %60 = or i32 %57, %59
  %61 = load %struct.img_ir_filter*, %struct.img_ir_filter** %5, align 8
  %62 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
