; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i32)* @hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @hash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8, align 1
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = xor i32 %6, 2139021267
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = lshr i32 %9, 3
  %11 = xor i32 %8, %10
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = lshr i32 %13, 5
  %15 = xor i32 %12, %14
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = lshr i32 %17, 13
  %19 = xor i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %4, align 1
  %23 = load i8, i8* %4, align 1
  %24 = zext i8 %23 to i32
  %25 = and i32 %24, 15
  %26 = shl i32 %25, 4
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = and i32 %28, 240
  %30 = ashr i32 %29, 4
  %31 = or i32 %26, %30
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %4, align 1
  %33 = load i8, i8* %4, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %34, 51
  %36 = shl i32 %35, 2
  %37 = load i8, i8* %4, align 1
  %38 = zext i8 %37 to i32
  %39 = and i32 %38, 204
  %40 = ashr i32 %39, 2
  %41 = or i32 %36, %40
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %4, align 1
  %43 = load i8, i8* %4, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, 85
  %46 = shl i32 %45, 1
  %47 = load i8, i8* %4, align 1
  %48 = zext i8 %47 to i32
  %49 = and i32 %48, 170
  %50 = ashr i32 %49, 1
  %51 = or i32 %46, %50
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %4, align 1
  %53 = load i8, i8* %4, align 1
  ret i8 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
