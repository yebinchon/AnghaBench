; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sanyo.c_img_ir_sanyo_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sanyo.c_img_ir_sanyo_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_scancode_req = type { i32, i32 }

@IMG_IR_REPEATCODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RC_PROTO_SANYO = common dso_local global i32 0, align 4
@IMG_IR_SCANCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.img_ir_scancode_req*)* @img_ir_sanyo_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_sanyo_scancode(i32 %0, i32 %1, i32 %2, %struct.img_ir_scancode_req* %3) #0 {
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
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* @IMG_IR_REPEATCODE, align 4
  store i32 %17, i32* %5, align 4
  br label %63

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 42
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %63

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 0
  %27 = and i32 %26, 8191
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 13
  %30 = and i32 %29, 8191
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 26
  %33 = and i32 %32, 255
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 34
  %36 = and i32 %35, 255
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = xor i32 %37, %38
  %40 = icmp ne i32 %39, 255
  br i1 %40, label %41, label %44

41:                                               ; preds = %24
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %63

44:                                               ; preds = %24
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = xor i32 %45, %46
  %48 = icmp ne i32 %47, 8191
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %63

52:                                               ; preds = %44
  %53 = load i32, i32* @RC_PROTO_SANYO, align 4
  %54 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %55 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 %56, 8
  %58 = load i32, i32* %12, align 4
  %59 = or i32 %57, %58
  %60 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %61 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @IMG_IR_SCANCODE, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %52, %49, %41, %21, %16
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
