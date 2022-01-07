; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_set_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_priv = type { i32 }
%struct.ksz_hw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dev_priv*, %struct.ksz_hw*, i32)* @dev_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dev_set_multicast(%struct.dev_priv* %0, %struct.ksz_hw* %1, i32 %2) #0 {
  %4 = alloca %struct.dev_priv*, align 8
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dev_priv* %0, %struct.dev_priv** %4, align 8
  store %struct.ksz_hw* %1, %struct.ksz_hw** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %10 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %8, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %3
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %26 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %19
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.dev_priv*, %struct.dev_priv** %4, align 8
  %32 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %34 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sle i32 %35, 1
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load i32, i32* %7, align 4
  %39 = icmp sle i32 %38, 1
  br i1 %39, label %40, label %46

40:                                               ; preds = %37
  %41 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %42 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hw_set_multicast(%struct.ksz_hw* %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %37, %29
  br label %47

47:                                               ; preds = %46, %3
  ret void
}

declare dso_local i32 @hw_set_multicast(%struct.ksz_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
