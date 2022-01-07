; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_mace.c_mace_clean_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_mace.c_mace_clean_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mace_data = type { i32, i32, i32**, i32** }

@N_RX_RING = common dso_local global i32 0, align 4
@N_TX_RING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mace_data*)* @mace_clean_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mace_clean_rings(%struct.mace_data* %0) #0 {
  %2 = alloca %struct.mace_data*, align 8
  %3 = alloca i32, align 4
  store %struct.mace_data* %0, %struct.mace_data** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %33, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @N_RX_RING, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %36

8:                                                ; preds = %4
  %9 = load %struct.mace_data*, %struct.mace_data** %2, align 8
  %10 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %9, i32 0, i32 3
  %11 = load i32**, i32*** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %11, i64 %13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %32

17:                                               ; preds = %8
  %18 = load %struct.mace_data*, %struct.mace_data** %2, align 8
  %19 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %18, i32 0, i32 3
  %20 = load i32**, i32*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @dev_kfree_skb(i32* %24)
  %26 = load %struct.mace_data*, %struct.mace_data** %2, align 8
  %27 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %26, i32 0, i32 3
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %17, %8
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %4

36:                                               ; preds = %4
  %37 = load %struct.mace_data*, %struct.mace_data** %2, align 8
  %38 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %60, %36
  %41 = load i32, i32* %3, align 4
  %42 = load %struct.mace_data*, %struct.mace_data** %2, align 8
  %43 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %61

46:                                               ; preds = %40
  %47 = load %struct.mace_data*, %struct.mace_data** %2, align 8
  %48 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %47, i32 0, i32 2
  %49 = load i32**, i32*** %48, align 8
  %50 = load i32, i32* %3, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @dev_kfree_skb(i32* %53)
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* @N_TX_RING, align 4
  %58 = icmp sge i32 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %46
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %59, %46
  br label %40

61:                                               ; preds = %40
  ret void
}

declare dso_local i32 @dev_kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
