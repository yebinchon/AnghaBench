; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_tbi_should_accept.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_tbi_should_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_adapter*, i32, i32, i32, i32*)* @e1000_tbi_should_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_tbi_should_accept(%struct.e1000_adapter* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.e1000_hw*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 2
  store %struct.e1000_hw* %16, %struct.e1000_hw** %12, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = getelementptr inbounds i32, i32* %20, i64 -1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %13, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %12, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i64 @TBI_ACCEPT(%struct.e1000_hw* %23, i32 %24, i32 %25, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %5
  %31 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %32 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %31, i32 0, i32 0
  %33 = load i64, i64* %14, align 8
  %34 = call i32 @spin_lock_irqsave(i32* %32, i64 %33)
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %12, align 8
  %36 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %37 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %10, align 4
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @e1000_tbi_adjust_stats(%struct.e1000_hw* %35, i32* %37, i32 %38, i32* %39)
  %41 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %42 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %41, i32 0, i32 0
  %43 = load i64, i64* %14, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  store i32 1, i32* %6, align 4
  br label %46

45:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* %6, align 4
  ret i32 %47
}

declare dso_local i64 @TBI_ACCEPT(%struct.e1000_hw*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @e1000_tbi_adjust_stats(%struct.e1000_hw*, i32*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
