; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-nec.c_img_ir_nec_scancode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-nec.c_img_ir_nec_scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_scancode_req = type { i32, i32 }

@IMG_IR_REPEATCODE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RC_PROTO_NEC32 = common dso_local global i32 0, align 4
@RC_PROTO_NECX = common dso_local global i32 0, align 4
@RC_PROTO_NEC = common dso_local global i32 0, align 4
@IMG_IR_SCANCODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.img_ir_scancode_req*)* @img_ir_nec_scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_ir_nec_scancode(i32 %0, i32 %1, i32 %2, %struct.img_ir_scancode_req* %3) #0 {
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
  br label %92

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 32
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %92

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = ashr i32 %25, 0
  %27 = and i32 %26, 255
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = ashr i32 %28, 8
  %30 = and i32 %29, 255
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %7, align 4
  %32 = ashr i32 %31, 16
  %33 = and i32 %32, 255
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %7, align 4
  %35 = ashr i32 %34, 24
  %36 = and i32 %35, 255
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* %12, align 4
  %39 = xor i32 %37, %38
  %40 = icmp ne i32 %39, 255
  br i1 %40, label %41, label %61

41:                                               ; preds = %24
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @bitrev8(i32 %42)
  %44 = shl i32 %43, 24
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @bitrev8(i32 %45)
  %47 = shl i32 %46, 16
  %48 = or i32 %44, %47
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @bitrev8(i32 %49)
  %51 = shl i32 %50, 8
  %52 = or i32 %48, %51
  %53 = load i32, i32* %13, align 4
  %54 = call i32 @bitrev8(i32 %53)
  %55 = or i32 %52, %54
  %56 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %57 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @RC_PROTO_NEC32, align 4
  %59 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %60 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %90

61:                                               ; preds = %24
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %10, align 4
  %64 = xor i32 %62, %63
  %65 = icmp ne i32 %64, 255
  br i1 %65, label %66, label %79

66:                                               ; preds = %61
  %67 = load i32, i32* %10, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* %11, align 4
  %70 = shl i32 %69, 8
  %71 = or i32 %68, %70
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %71, %72
  %74 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %75 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @RC_PROTO_NECX, align 4
  %77 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %78 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %89

79:                                               ; preds = %61
  %80 = load i32, i32* %10, align 4
  %81 = shl i32 %80, 8
  %82 = load i32, i32* %12, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %85 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @RC_PROTO_NEC, align 4
  %87 = load %struct.img_ir_scancode_req*, %struct.img_ir_scancode_req** %9, align 8
  %88 = getelementptr inbounds %struct.img_ir_scancode_req, %struct.img_ir_scancode_req* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  br label %89

89:                                               ; preds = %79, %66
  br label %90

90:                                               ; preds = %89, %41
  %91 = load i32, i32* @IMG_IR_SCANCODE, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %90, %21, %16
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @bitrev8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
