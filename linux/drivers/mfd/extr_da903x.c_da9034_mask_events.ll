; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da903x.c_da9034_mask_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da903x.c_da9034_mask_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da903x_chip = type { i32, i32 }

@DA9034_IRQ_MASK_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da903x_chip*, i32)* @da9034_mask_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9034_mask_events(%struct.da903x_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.da903x_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  store %struct.da903x_chip* %0, %struct.da903x_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %8 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %12 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, 255
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %14, i32* %15, align 16
  %16 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %17 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = lshr i32 %18, 8
  %20 = and i32 %19, 255
  %21 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %23 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = lshr i32 %24, 16
  %26 = and i32 %25, 255
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %26, i32* %27, align 8
  %28 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %29 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = lshr i32 %30, 24
  %32 = and i32 %31, 255
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %32, i32* %33, align 4
  %34 = load %struct.da903x_chip*, %struct.da903x_chip** %3, align 8
  %35 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @DA9034_IRQ_MASK_A, align 4
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %39 = call i32 @__da903x_writes(i32 %36, i32 %37, i32 4, i32* %38)
  ret i32 %39
}

declare dso_local i32 @__da903x_writes(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
