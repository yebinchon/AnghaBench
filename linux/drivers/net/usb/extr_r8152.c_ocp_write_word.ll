; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_ocp_write_word.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_ocp_write_word.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i32 }

@BYTE_EN_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*, i32, i32, i32)* @ocp_write_word to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocp_write_word(%struct.r8152* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.r8152*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 65535, i32* %9, align 4
  %13 = load i32, i32* @BYTE_EN_WORD, align 4
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, 2
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 2
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = shl i32 %24, %23
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %12, align 4
  %27 = mul nsw i32 %26, 8
  %28 = load i32, i32* %9, align 4
  %29 = shl i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %12, align 4
  %31 = mul nsw i32 %30, 8
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %32, %31
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, -4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %22, %4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @__cpu_to_le32(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.r8152*, %struct.r8152** %5, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @generic_ocp_write(%struct.r8152* %39, i32 %40, i32 %41, i32 4, i32* %10, i32 %42)
  ret void
}

declare dso_local i32 @__cpu_to_le32(i32) #1

declare dso_local i32 @generic_ocp_write(%struct.r8152*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
