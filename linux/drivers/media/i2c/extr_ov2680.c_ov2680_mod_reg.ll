; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_mod_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ov2680.c_ov2680_mod_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ov2680_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ov2680_dev*, i32, i32, i32)* @ov2680_mod_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov2680_mod_reg(%struct.ov2680_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ov2680_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ov2680_dev* %0, %struct.ov2680_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i32 @ov2680_read_reg(%struct.ov2680_dev* %12, i32 %13, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %11, align 4
  store i32 %18, i32* %5, align 4
  br label %34

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = xor i32 %20, -1
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %9, align 4
  %30 = load %struct.ov2680_dev*, %struct.ov2680_dev** %6, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @ov2680_write_reg(%struct.ov2680_dev* %30, i32 %31, i32 %32)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %19, %17
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @ov2680_read_reg(%struct.ov2680_dev*, i32, i32*) #1

declare dso_local i32 @ov2680_write_reg(%struct.ov2680_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
