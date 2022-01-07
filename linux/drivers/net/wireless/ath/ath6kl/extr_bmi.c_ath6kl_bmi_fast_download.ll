; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_fast_download.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_bmi.c_ath6kl_bmi_fast_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_bmi_fast_download(%struct.ath6kl* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = and i32 %14, -4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %9, align 4
  %17 = and i32 %16, 3
  store i32 %17, i32* %13, align 4
  %18 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ath6kl_bmi_lz_stream_start(%struct.ath6kl* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %5, align 4
  br label %58

25:                                               ; preds = %4
  %26 = load i32, i32* %13, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @memcpy(i32* %11, i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %28, %25
  %36 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @ath6kl_bmi_lz_data(%struct.ath6kl* %36, i32* %37, i32 %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i32, i32* %10, align 4
  store i32 %43, i32* %5, align 4
  br label %58

44:                                               ; preds = %35
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %49 = call i32 @ath6kl_bmi_lz_data(%struct.ath6kl* %48, i32* %11, i32 4)
  store i32 %49, i32* %10, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %55 = call i32 @ath6kl_bmi_lz_stream_start(%struct.ath6kl* %54, i32 0)
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %56, %42, %23
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @ath6kl_bmi_lz_stream_start(%struct.ath6kl*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ath6kl_bmi_lz_data(%struct.ath6kl*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
