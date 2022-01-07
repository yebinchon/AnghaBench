; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_cookie_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_cookie_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32*, i64, i32* }

@MAX_COOKIE_NUM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_cookie_init(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca i64, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %4 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %5 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %4, i32 0, i32 2
  store i32* null, i32** %5, align 8
  %6 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %7 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %9 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @memset(i32* %10, i32 0, i32 8)
  store i64 0, i64* %3, align 8
  br label %12

12:                                               ; preds = %24, %1
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @MAX_COOKIE_NUM, align 8
  %15 = icmp ult i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %12
  %17 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %18 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %3, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @ath6kl_free_cookie(%struct.ath6kl* %17, i32* %22)
  br label %24

24:                                               ; preds = %16
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %12

27:                                               ; preds = %12
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ath6kl_free_cookie(%struct.ath6kl*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
