; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc_wait_for_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_xc4000.c_xc_wait_for_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xc4000_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xc4000_priv*)* @xc_wait_for_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xc_wait_for_lock(%struct.xc4000_priv* %0) #0 {
  %2 = alloca %struct.xc4000_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xc4000_priv* %0, %struct.xc4000_priv** %2, align 8
  store i32 0, i32* %3, align 4
  store i32 40, i32* %4, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 0
  br label %11

11:                                               ; preds = %8, %5
  %12 = phi i1 [ false, %5 ], [ %10, %8 ]
  br i1 %12, label %13, label %23

13:                                               ; preds = %11
  %14 = load %struct.xc4000_priv*, %struct.xc4000_priv** %2, align 8
  %15 = call i32 @xc_get_lock_status(%struct.xc4000_priv* %14, i32* %3)
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 1
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = call i32 @msleep(i32 5)
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %18, %13
  br label %5

23:                                               ; preds = %11
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @xc_get_lock_status(%struct.xc4000_priv*, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
