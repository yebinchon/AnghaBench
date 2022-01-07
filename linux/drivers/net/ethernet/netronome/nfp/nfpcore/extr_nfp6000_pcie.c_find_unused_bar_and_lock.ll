; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_find_unused_bar_and_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp6000_pcie.c_find_unused_bar_and_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp6000_pcie = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp6000_pcie*, i32, i32, i32, i32, i64, i32)* @find_unused_bar_and_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_unused_bar_and_lock(%struct.nfp6000_pcie* %0, i32 %1, i32 %2, i32 %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca %struct.nfp6000_pcie*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.nfp6000_pcie* %0, %struct.nfp6000_pcie** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %8, align 8
  %18 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %17, i32 0, i32 0
  %19 = load i64, i64* %15, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call i32 @find_unused_bar_noblock(%struct.nfp6000_pcie* %21, i32 %22, i32 %23, i32 %24, i32 %25, i64 %26, i32 %27)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %7
  %32 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %8, align 8
  %33 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %32, i32 0, i32 0
  %34 = load i64, i64* %15, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  br label %40

36:                                               ; preds = %7
  %37 = load %struct.nfp6000_pcie*, %struct.nfp6000_pcie** %8, align 8
  %38 = getelementptr inbounds %struct.nfp6000_pcie, %struct.nfp6000_pcie* %37, i32 0, i32 0
  %39 = call i32 @__release(i32* %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* %16, align 4
  ret i32 %41
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @find_unused_bar_noblock(%struct.nfp6000_pcie*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
