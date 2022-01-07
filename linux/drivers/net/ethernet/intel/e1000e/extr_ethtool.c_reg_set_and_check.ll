; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_reg_set_and_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_reg_set_and_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 }

@.str = private unnamed_addr constant [64 x i8] c"set/check test failed (reg 0x%05X): got 0x%08X expected 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32*, i32, i32, i32)* @reg_set_and_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_set_and_check(%struct.e1000_adapter* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %10, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @__ew32(i32* %14, i32 %15, i32 %18)
  %20 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %21 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %20, i32 0, i32 0
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @__er32(i32* %21, i32 %22)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = and i32 %24, %25
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %10, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %26, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %5
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %10, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %10, align 4
  %38 = and i32 %36, %37
  %39 = call i32 @e_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %35, i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  store i32 1, i32* %6, align 4
  br label %43

42:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %42, %31
  %44 = load i32, i32* %6, align 4
  ret i32 %44
}

declare dso_local i32 @__ew32(i32*, i32, i32) #1

declare dso_local i32 @__er32(i32*, i32) #1

declare dso_local i32 @e_err(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
