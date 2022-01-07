; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_alloc_cookie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_main.c_ath6kl_alloc_cookie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_cookie = type { %struct.ath6kl_cookie* }
%struct.ath6kl = type { i32, %struct.ath6kl_cookie* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ath6kl_cookie* @ath6kl_alloc_cookie(%struct.ath6kl* %0) #0 {
  %2 = alloca %struct.ath6kl*, align 8
  %3 = alloca %struct.ath6kl_cookie*, align 8
  store %struct.ath6kl* %0, %struct.ath6kl** %2, align 8
  %4 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %5 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %4, i32 0, i32 1
  %6 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %5, align 8
  store %struct.ath6kl_cookie* %6, %struct.ath6kl_cookie** %3, align 8
  %7 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %3, align 8
  %8 = icmp ne %struct.ath6kl_cookie* %7, null
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %3, align 8
  %11 = getelementptr inbounds %struct.ath6kl_cookie, %struct.ath6kl_cookie* %10, i32 0, i32 0
  %12 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %11, align 8
  %13 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %14 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %13, i32 0, i32 1
  store %struct.ath6kl_cookie* %12, %struct.ath6kl_cookie** %14, align 8
  %15 = load %struct.ath6kl*, %struct.ath6kl** %2, align 8
  %16 = getelementptr inbounds %struct.ath6kl, %struct.ath6kl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  br label %19

19:                                               ; preds = %9, %1
  %20 = load %struct.ath6kl_cookie*, %struct.ath6kl_cookie** %3, align 8
  ret %struct.ath6kl_cookie* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
