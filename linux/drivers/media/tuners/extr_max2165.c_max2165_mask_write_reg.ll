; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_max2165.c_max2165_mask_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_max2165.c_max2165_mask_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max2165_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max2165_priv*, i32, i32, i32)* @max2165_mask_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2165_mask_write_reg(%struct.max2165_priv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.max2165_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.max2165_priv* %0, %struct.max2165_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %9, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %9, align 4
  %15 = load %struct.max2165_priv*, %struct.max2165_priv** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @max2165_read_reg(%struct.max2165_priv* %15, i32 %16, i32* %11)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %5, align 4
  br label %35

22:                                               ; preds = %4
  %23 = load i32, i32* %8, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %11, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  %30 = load %struct.max2165_priv*, %struct.max2165_priv** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @max2165_write_reg(%struct.max2165_priv* %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %22, %20
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @max2165_read_reg(%struct.max2165_priv*, i32, i32*) #1

declare dso_local i32 @max2165_write_reg(%struct.max2165_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
