; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sharp.c_img_ir_sharp_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sharp.c_img_ir_sharp_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_scancode_req = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RC_PROTO_SHARP = common dso_local global i32 0, align 4
@IMG_IR_SCANCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.img_ir_scancode_req*)* @img_ir_sharp_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_sharp_scancode(i32 %0, i32 %1, i32 %2, %struct.img_ir_scancode_req* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.img_ir_scancode_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.img_ir_scancode_req* %3, %struct.img_ir_scancode_req** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 15
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %54

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = ashr i32 %20, 0
  %22 = and i32 %21, 31
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 5
  %25 = and i32 %24, 255
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %7, align 4
  %27 = ashr i32 %26, 13
  %28 = and i32 %27, 1
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = ashr i32 %29, 14
  %31 = and i32 %30, 1
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %19
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %54

37:                                               ; preds = %19
  %38 = load i32, i32* %13, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %54

43:                                               ; preds = %37
  %44 = load i32, i32* @RC_PROTO_SHARP, align 4
  %45 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %46 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* %10, align 4
  %48 = shl i32 %47, 8
  %49 = load i32, i32* %11, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %52 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @IMG_IR_SCANCODE, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %43, %40, %34, %16
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
