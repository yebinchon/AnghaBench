; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dfs.c_ath9k_get_max_index_ht40.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_dfs.c_ath9k_get_max_index_ht40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath9k_dfs_fft_40 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath9k_dfs_fft_40*, i32, i32)* @ath9k_get_max_index_ht40 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath9k_get_max_index_ht40(%struct.ath9k_dfs_fft_40* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath9k_dfs_fft_40*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ath9k_dfs_fft_40* %0, %struct.ath9k_dfs_fft_40** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 64, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %50

16:                                               ; preds = %13
  %17 = load %struct.ath9k_dfs_fft_40*, %struct.ath9k_dfs_fft_40** %5, align 8
  %18 = getelementptr inbounds %struct.ath9k_dfs_fft_40, %struct.ath9k_dfs_fft_40* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @fft_bitmap_weight(i32 %19)
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %6, align 4
  %23 = load %struct.ath9k_dfs_fft_40*, %struct.ath9k_dfs_fft_40** %5, align 8
  %24 = getelementptr inbounds %struct.ath9k_dfs_fft_40, %struct.ath9k_dfs_fft_40* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @fft_bitmap_weight(i32 %25)
  %27 = icmp ne i64 %26, 0
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %16
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = load %struct.ath9k_dfs_fft_40*, %struct.ath9k_dfs_fft_40** %5, align 8
  %36 = getelementptr inbounds %struct.ath9k_dfs_fft_40, %struct.ath9k_dfs_fft_40* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @fft_max_magnitude(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ath9k_dfs_fft_40*, %struct.ath9k_dfs_fft_40** %5, align 8
  %40 = getelementptr inbounds %struct.ath9k_dfs_fft_40, %struct.ath9k_dfs_fft_40* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fft_max_magnitude(i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %48

47:                                               ; preds = %34
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %46
  br label %49

49:                                               ; preds = %48, %31, %16
  br label %50

50:                                               ; preds = %49, %13, %3
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.ath9k_dfs_fft_40*, %struct.ath9k_dfs_fft_40** %5, align 8
  %55 = getelementptr inbounds %struct.ath9k_dfs_fft_40, %struct.ath9k_dfs_fft_40* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @fft_max_index(i32 %56)
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %50
  %59 = load %struct.ath9k_dfs_fft_40*, %struct.ath9k_dfs_fft_40** %5, align 8
  %60 = getelementptr inbounds %struct.ath9k_dfs_fft_40, %struct.ath9k_dfs_fft_40* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @fft_max_index(i32 %61)
  %63 = add nsw i32 %62, 64
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @fft_bitmap_weight(i32) #1

declare dso_local i32 @fft_max_magnitude(i32) #1

declare dso_local i32 @fft_max_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
