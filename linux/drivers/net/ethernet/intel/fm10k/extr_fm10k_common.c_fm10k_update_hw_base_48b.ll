; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_update_hw_base_48b.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_common.c_fm10k_update_hw_base_48b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw_stat = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fm10k_hw_stat*, i32)* @fm10k_update_hw_base_48b to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_update_hw_base_48b(%struct.fm10k_hw_stat* %0, i32 %1) #0 {
  %3 = alloca %struct.fm10k_hw_stat*, align 8
  %4 = alloca i32, align 4
  store %struct.fm10k_hw_stat* %0, %struct.fm10k_hw_stat** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %29

8:                                                ; preds = %2
  %9 = load %struct.fm10k_hw_stat*, %struct.fm10k_hw_stat** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_hw_stat, %struct.fm10k_hw_stat* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = load %struct.fm10k_hw_stat*, %struct.fm10k_hw_stat** %3, align 8
  %19 = getelementptr inbounds %struct.fm10k_hw_stat, %struct.fm10k_hw_stat* %18, i32 0, i32 1
  store i64 %17, i64* %19, align 8
  %20 = load i32, i32* %4, align 4
  %21 = ashr i32 %20, 32
  %22 = sext i32 %21 to i64
  %23 = load %struct.fm10k_hw_stat*, %struct.fm10k_hw_stat** %3, align 8
  %24 = getelementptr inbounds %struct.fm10k_hw_stat, %struct.fm10k_hw_stat* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %22
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  br label %29

29:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
