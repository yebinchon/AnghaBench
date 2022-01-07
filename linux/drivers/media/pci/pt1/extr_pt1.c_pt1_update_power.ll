; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_update_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/pt1/extr_pt1.c_pt1_update_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt1 = type { i32, i32, %struct.pt1_adapter**, i32 }
%struct.pt1_adapter = type { i32 }

@pt1_update_power.sleep_bits = internal constant [4 x i32] [i32 16, i32 192, i32 32, i32 320], align 16
@PT1_NR_ADAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt1*)* @pt1_update_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pt1_update_power(%struct.pt1* %0) #0 {
  %2 = alloca %struct.pt1*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pt1_adapter*, align 8
  store %struct.pt1* %0, %struct.pt1** %2, align 8
  %6 = load %struct.pt1*, %struct.pt1** %2, align 8
  %7 = getelementptr inbounds %struct.pt1, %struct.pt1* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.pt1*, %struct.pt1** %2, align 8
  %10 = getelementptr inbounds %struct.pt1, %struct.pt1* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = shl i32 %14, 3
  %16 = or i32 %8, %15
  store i32 %16, i32* %3, align 4
  %17 = load %struct.pt1*, %struct.pt1** %2, align 8
  %18 = getelementptr inbounds %struct.pt1, %struct.pt1* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %49, %1
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @PT1_NR_ADAPS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load %struct.pt1*, %struct.pt1** %2, align 8
  %26 = getelementptr inbounds %struct.pt1, %struct.pt1* %25, i32 0, i32 2
  %27 = load %struct.pt1_adapter**, %struct.pt1_adapter*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.pt1_adapter*, %struct.pt1_adapter** %27, i64 %29
  %31 = load %struct.pt1_adapter*, %struct.pt1_adapter** %30, align 8
  store %struct.pt1_adapter* %31, %struct.pt1_adapter** %5, align 8
  %32 = load %struct.pt1_adapter*, %struct.pt1_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.pt1_adapter, %struct.pt1_adapter* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %41 [
    i32 129, label %35
    i32 128, label %38
  ]

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = or i32 %36, 4
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %24
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, 6
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %24
  br label %42

42:                                               ; preds = %41, %38, %35
  %43 = load i32, i32* %4, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* @pt1_update_power.sleep_bits, i64 0, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %3, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load %struct.pt1*, %struct.pt1** %2, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @pt1_write_reg(%struct.pt1* %53, i32 1, i32 %54)
  %56 = load %struct.pt1*, %struct.pt1** %2, align 8
  %57 = getelementptr inbounds %struct.pt1, %struct.pt1* %56, i32 0, i32 1
  %58 = call i32 @mutex_unlock(i32* %57)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @pt1_write_reg(%struct.pt1*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
