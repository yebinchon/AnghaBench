; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-nec-decoder.c_ir_nec_scancode_to_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_ir-nec-decoder.c_ir_nec_scancode_to_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RC_PROTO_NEC32 = common dso_local global i32 0, align 4
@RC_PROTO_NECX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ir_nec_scancode_to_raw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_nec_scancode_to_raw(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = and i32 %9, 255
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RC_PROTO_NEC32, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = ashr i32 %18, 16
  %20 = and i32 %19, 255
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %4, align 4
  %22 = ashr i32 %21, 8
  %23 = and i32 %22, 255
  store i32 %23, i32* %8, align 4
  br label %46

24:                                               ; preds = %2
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @RC_PROTO_NECX, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = load i32, i32* %4, align 4
  %30 = ashr i32 %29, 16
  %31 = and i32 %30, 255
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = xor i32 %35, 255
  store i32 %36, i32* %8, align 4
  br label %45

37:                                               ; preds = %24
  %38 = load i32, i32* %4, align 4
  %39 = ashr i32 %38, 8
  %40 = and i32 %39, 255
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = xor i32 %41, 255
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = xor i32 %43, 255
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %37, %28
  br label %46

46:                                               ; preds = %45, %14
  %47 = load i32, i32* %8, align 4
  %48 = shl i32 %47, 24
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 16
  %51 = or i32 %48, %50
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %51, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %54, %55
  ret i32 %56
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
