; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-rc5.c_img_ir_rc5_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-rc5.c_img_ir_rc5_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_scancode_req = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@RC_PROTO_RC5 = common dso_local global i32 0, align 4
@IMG_IR_SCANCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.img_ir_scancode_req*)* @img_ir_rc5_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_rc5_scancode(i32 %0, i32 %1, i32 %2, %struct.img_ir_scancode_req* %3) #0 {
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
  %14 = load i32, i32* %7, align 4
  %15 = ashr i32 %14, 2
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = ashr i32 %16, 13
  %18 = and i32 %17, 1
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %7, align 4
  %20 = ashr i32 %19, 11
  %21 = and i32 %20, 1
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %7, align 4
  %23 = ashr i32 %22, 6
  %24 = and i32 %23, 31
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 63
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = ashr i32 %27, 12
  %29 = and i32 %28, 1
  %30 = icmp ne i32 %29, 0
  %31 = zext i1 %30 to i64
  %32 = select i1 %30, i32 0, i32 64
  %33 = load i32, i32* %11, align 4
  %34 = add i32 %33, %32
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %4
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %54

40:                                               ; preds = %4
  %41 = load i32, i32* @RC_PROTO_RC5, align 4
  %42 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %43 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %44, 8
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %49 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %52 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @IMG_IR_SCANCODE, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %40, %37
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
