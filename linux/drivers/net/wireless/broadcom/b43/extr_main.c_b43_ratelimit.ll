; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_ratelimit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_ratelimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wl = type { i32 }

@B43_STAT_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wl*)* @b43_ratelimit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_ratelimit(%struct.b43_wl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wl*, align 8
  store %struct.b43_wl* %0, %struct.b43_wl** %3, align 8
  %4 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %5 = icmp ne %struct.b43_wl* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %22

12:                                               ; preds = %6
  %13 = load %struct.b43_wl*, %struct.b43_wl** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wl, %struct.b43_wl* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @b43_status(i32 %15)
  %17 = load i64, i64* @B43_STAT_STARTED, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %22

20:                                               ; preds = %12
  %21 = call i32 (...) @net_ratelimit()
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %19, %11
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @b43_status(i32) #1

declare dso_local i32 @net_ratelimit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
