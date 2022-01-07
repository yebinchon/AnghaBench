; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_set_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ale.c_cpsw_ale_set_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @cpsw_ale_set_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpsw_ale_set_field(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i32 @BITMASK(i32 %10)
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 32
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = mul nsw i32 %16, 32
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 2, %20
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @BITMASK(i32 %22)
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %23, %24
  %26 = xor i32 %25, -1
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, %26
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %6, align 4
  %35 = shl i32 %33, %34
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  ret void
}

declare dso_local i32 @BITMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
