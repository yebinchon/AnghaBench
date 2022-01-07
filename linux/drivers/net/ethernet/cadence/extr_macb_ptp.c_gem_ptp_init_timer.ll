; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_init_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_init_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@GEM_SUBNSINCR_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.macb*)* @gem_ptp_init_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_ptp_init_timer(%struct.macb* %0) #0 {
  %2 = alloca %struct.macb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.macb* %0, %struct.macb** %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load i32, i32* @NSEC_PER_SEC, align 4
  %6 = load %struct.macb*, %struct.macb** %2, align 8
  %7 = getelementptr inbounds %struct.macb, %struct.macb* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @div_u64_rem(i32 %5, i32 %8, i64* %3)
  %10 = load %struct.macb*, %struct.macb** %2, align 8
  %11 = getelementptr inbounds %struct.macb, %struct.macb* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 %9, i32* %12, align 4
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %1
  %16 = load i64, i64* %3, align 8
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @GEM_SUBNSINCR_SIZE, align 8
  %18 = load i64, i64* %4, align 8
  %19 = shl i64 %18, %17
  store i64 %19, i64* %4, align 8
  %20 = load i64, i64* %4, align 8
  %21 = load %struct.macb*, %struct.macb** %2, align 8
  %22 = getelementptr inbounds %struct.macb, %struct.macb* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @div_u64(i64 %20, i32 %23)
  %25 = load %struct.macb*, %struct.macb** %2, align 8
  %26 = getelementptr inbounds %struct.macb, %struct.macb* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %32

28:                                               ; preds = %1
  %29 = load %struct.macb*, %struct.macb** %2, align 8
  %30 = getelementptr inbounds %struct.macb, %struct.macb* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  store i32 0, i32* %31, align 4
  br label %32

32:                                               ; preds = %28, %15
  ret void
}

declare dso_local i32 @div_u64_rem(i32, i32, i64*) #1

declare dso_local i32 @div_u64(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
