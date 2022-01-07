; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sony.c_img_ir_sony_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-sony.c_img_ir_sony_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_scancode_req = type { i32, i32 }

@RC_PROTO_BIT_SONY12 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RC_PROTO_SONY12 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_SONY15 = common dso_local global i32 0, align 4
@RC_PROTO_SONY15 = common dso_local global i32 0, align 4
@RC_PROTO_BIT_SONY20 = common dso_local global i32 0, align 4
@RC_PROTO_SONY20 = common dso_local global i32 0, align 4
@IMG_IR_SCANCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.img_ir_scancode_req*)* @img_ir_sony_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_sony_scancode(i32 %0, i32 %1, i32 %2, %struct.img_ir_scancode_req* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.img_ir_scancode_req*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.img_ir_scancode_req* %3, %struct.img_ir_scancode_req** %9, align 8
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %72 [
    i32 12, label %14
    i32 15, label %32
    i32 20, label %50
  ]

14:                                               ; preds = %4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @RC_PROTO_BIT_SONY12, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %86

22:                                               ; preds = %14
  %23 = load i32, i32* %7, align 4
  %24 = and i32 %23, 127
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 7
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = and i32 %27, 31
  store i32 %28, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = load i32, i32* @RC_PROTO_SONY12, align 4
  %30 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %31 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %75

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @RC_PROTO_BIT_SONY15, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %86

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %41, 127
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %7, align 4
  %44 = ashr i32 %43, 7
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %47 = load i32, i32* @RC_PROTO_SONY15, align 4
  %48 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %49 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %75

50:                                               ; preds = %4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @RC_PROTO_BIT_SONY20, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %86

58:                                               ; preds = %50
  %59 = load i32, i32* %7, align 4
  %60 = and i32 %59, 127
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %7, align 4
  %62 = ashr i32 %61, 7
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, 31
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %7, align 4
  %66 = ashr i32 %65, 5
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 255
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* @RC_PROTO_SONY20, align 4
  %70 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %71 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %75

72:                                               ; preds = %4
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %86

75:                                               ; preds = %58, %40, %22
  %76 = load i32, i32* %10, align 4
  %77 = shl i32 %76, 16
  %78 = load i32, i32* %11, align 4
  %79 = shl i32 %78, 8
  %80 = or i32 %77, %79
  %81 = load i32, i32* %12, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %84 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @IMG_IR_SCANCODE, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %75, %72, %55, %37, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
