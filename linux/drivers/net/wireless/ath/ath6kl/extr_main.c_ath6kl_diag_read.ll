; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_diag_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_diag_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath6kl_diag_read(%struct.ath6kl* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ath6kl*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ath6kl* %0, %struct.ath6kl** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %11, align 8
  %15 = load i32, i32* %9, align 4
  %16 = srem i32 %15, 4
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %47

22:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %41, %22
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sdiv i32 %25, 4
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.ath6kl*, %struct.ath6kl** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32*, i32** %11, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = call i32 @ath6kl_diag_read32(%struct.ath6kl* %29, i32 %30, i32* %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %47

40:                                               ; preds = %28
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %10, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %7, align 4
  br label %23

46:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %38, %19
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ath6kl_diag_read32(%struct.ath6kl*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
