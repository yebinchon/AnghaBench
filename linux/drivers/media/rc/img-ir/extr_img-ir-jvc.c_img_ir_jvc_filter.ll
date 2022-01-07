; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-jvc.c_img_ir_jvc_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-jvc.c_img_ir_jvc_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_scancode_filter = type { i32, i32 }
%struct.img_ir_filter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_scancode_filter*, %struct.img_ir_filter*, i32)* @img_ir_jvc_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_jvc_filter(%struct.rc_scancode_filter* %0, %struct.img_ir_filter* %1, i32 %2) #0 {
  %4 = alloca %struct.rc_scancode_filter*, align 8
  %5 = alloca %struct.img_ir_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rc_scancode_filter* %0, %struct.rc_scancode_filter** %4, align 8
  store %struct.img_ir_filter* %1, %struct.img_ir_filter** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %12 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = ashr i32 %13, 8
  %15 = and i32 %14, 255
  store i32 %15, i32* %7, align 4
  %16 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %17 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = ashr i32 %18, 8
  %20 = and i32 %19, 255
  store i32 %20, i32* %9, align 4
  %21 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %22 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 0
  %25 = and i32 %24, 255
  store i32 %25, i32* %8, align 4
  %26 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %4, align 8
  %27 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 0
  %30 = and i32 %29, 255
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, 8
  %34 = or i32 %31, %33
  %35 = load %struct.img_ir_filter*, %struct.img_ir_filter** %5, align 8
  %36 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 %38, 8
  %40 = or i32 %37, %39
  %41 = load %struct.img_ir_filter*, %struct.img_ir_filter** %5, align 8
  %42 = getelementptr inbounds %struct.img_ir_filter, %struct.img_ir_filter* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
