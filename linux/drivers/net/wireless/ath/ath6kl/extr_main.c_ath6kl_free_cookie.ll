; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_free_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_free_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl = type { i32, %struct.ath6kl_cookie* }
%struct.ath6kl_cookie = type { %struct.ath6kl_cookie* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath6kl_free_cookie(%struct.ath6kl* %0, %struct.ath6kl_cookie* %1) #0 {
  %3 = alloca %struct.ath6kl*, align 8
  %4 = alloca %struct.ath6kl_cookie*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %3, align 8
  store %struct.ath6kl_cookie* %1, %struct.ath6kl_cookie** %4, align 8
  %5 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %6 = icmp ne %struct.ath6kl* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %4, align 8
  %9 = icmp ne %struct.ath6kl_cookie* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7, %2
  br label %24

11:                                               ; preds = %7
  %12 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %13 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %12, i32 0, i32 1
  %14 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %13, align 8
  %15 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %4, align 8
  %16 = getelementptr inbounds %struct.ath6kl_cookie, %struct.ath6kl_cookie* %15, i32 0, i32 0
  store %struct.ath6kl_cookie* %14, %struct.ath6kl_cookie** %16, align 8
  %17 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %4, align 8
  %18 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %19 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %18, i32 0, i32 1
  store %struct.ath6kl_cookie* %17, %struct.ath6kl_cookie** %19, align 8
  %20 = load %struct.ath6kl*, %struct.ath6kl** %3, align 8
  %21 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  br label %24

24:                                               ; preds = %11, %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
