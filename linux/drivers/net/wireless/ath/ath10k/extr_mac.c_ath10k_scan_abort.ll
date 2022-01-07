; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_scan_abort.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_scan_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"refusing scan abortion due to invalid scan state: %s (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to abort scan: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_scan_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_scan_abort(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  %3 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %4 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %5 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %4, i32 0, i32 2
  %6 = call i32 @lockdep_assert_held(i32* %5)
  %7 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %8 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_bh(i32* %8)
  %10 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %11 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %46 [
    i32 130, label %14
    i32 128, label %15
    i32 131, label %15
    i32 129, label %27
  ]

14:                                               ; preds = %1
  br label %46

15:                                               ; preds = %1, %1
  %16 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %17 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %18 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ath10k_scan_state_str(i32 %20)
  %22 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %23 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %16, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  br label %46

27:                                               ; preds = %1
  %28 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %29 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 131, i32* %30, align 4
  %31 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %32 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %31, i32 0, i32 0
  %33 = call i32 @spin_unlock_bh(i32* %32)
  %34 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %35 = call i32 @ath10k_scan_stop(%struct.ath10k* %34)
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_warn(%struct.ath10k* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %27
  %43 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 0
  %45 = call i32 @spin_lock_bh(i32* %44)
  br label %46

46:                                               ; preds = %1, %42, %15, %14
  %47 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %48 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %47, i32 0, i32 0
  %49 = call i32 @spin_unlock_bh(i32* %48)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @ath10k_scan_state_str(i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @ath10k_scan_stop(%struct.ath10k*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
