; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_mii_write32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_qca8k.c_qca8k_mii_write32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 (%struct.mii_bus*, i32, i32, i32)*, i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed to write qca8k 32bit register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mii_bus*, i32, i32, i32)* @qca8k_mii_write32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qca8k_mii_write32(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = and i32 %12, 65535
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = ashr i32 %14, 16
  store i32 %15, i32* %10, align 4
  %16 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %17 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %16, i32 0, i32 0
  %18 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %17, align 8
  %19 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 %18(%struct.mii_bus* %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp sge i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %4
  %27 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %28 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %27, i32 0, i32 0
  %29 = load i32 (%struct.mii_bus*, i32, i32, i32)*, i32 (%struct.mii_bus*, i32, i32, i32)** %28, align 8
  %30 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  %34 = load i32, i32* %10, align 4
  %35 = call i32 %29(%struct.mii_bus* %30, i32 %31, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %26, %4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %41 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %40, i32 0, i32 1
  %42 = call i32 @dev_err_ratelimited(i32* %41, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @dev_err_ratelimited(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
