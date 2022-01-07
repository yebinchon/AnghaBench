; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_get_ramdump_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_coredump.c_ath10k_coredump_get_ramdump_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_hw_mem_layout = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ath10k_mem_region* }
%struct.ath10k_mem_region = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ath10k*)* @ath10k_coredump_get_ramdump_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ath10k_coredump_get_ramdump_size(%struct.ath10k* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_hw_mem_layout*, align 8
  %5 = alloca %struct.ath10k_mem_region*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = call %struct.ath10k_hw_mem_layout* @ath10k_coredump_get_mem_layout(%struct.ath10k* %8)
  store %struct.ath10k_hw_mem_layout* %9, %struct.ath10k_hw_mem_layout** %4, align 8
  %10 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** %4, align 8
  %11 = icmp ne %struct.ath10k_hw_mem_layout* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i64 0, i64* %2, align 8
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** %4, align 8
  %15 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %16, align 8
  %18 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %17, i64 0
  store %struct.ath10k_mem_region* %18, %struct.ath10k_mem_region** %5, align 8
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %34, %13
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** %4, align 8
  %22 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %19
  %27 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %5, align 8
  %28 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = add i64 %30, %29
  store i64 %31, i64* %6, align 8
  %32 = load %struct.ath10k_mem_region*, %struct.ath10k_mem_region** %5, align 8
  %33 = getelementptr inbounds %struct.ath10k_mem_region, %struct.ath10k_mem_region* %32, i32 1
  store %struct.ath10k_mem_region* %33, %struct.ath10k_mem_region** %5, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %19

37:                                               ; preds = %19
  %38 = load %struct.ath10k_hw_mem_layout*, %struct.ath10k_hw_mem_layout** %4, align 8
  %39 = getelementptr inbounds %struct.ath10k_hw_mem_layout, %struct.ath10k_hw_mem_layout* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = load i64, i64* %6, align 8
  %45 = add i64 %44, %43
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i64 @ALIGN(i64 %46, i32 16)
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %6, align 8
  store i64 %48, i64* %2, align 8
  br label %49

49:                                               ; preds = %37, %12
  %50 = load i64, i64* %2, align 8
  ret i64 %50
}

declare dso_local %struct.ath10k_hw_mem_layout* @ath10k_coredump_get_mem_layout(%struct.ath10k*) #1

declare dso_local i64 @ALIGN(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
