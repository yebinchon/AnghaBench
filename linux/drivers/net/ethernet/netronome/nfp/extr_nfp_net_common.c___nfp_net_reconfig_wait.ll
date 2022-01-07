; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c___nfp_net_reconfig_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c___nfp_net_reconfig_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, i64)* @__nfp_net_reconfig_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfp_net_reconfig_wait(%struct.nfp_net* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %18, %2
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 50
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %13 = call i64 @nfp_net_reconfig_check_done(%struct.nfp_net* %12, i32 0)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %34

16:                                               ; preds = %11
  %17 = call i32 @udelay(i32 4)
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %7, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %7, align 4
  br label %8

21:                                               ; preds = %8
  br label %22

22:                                               ; preds = %28, %21
  %23 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @nfp_net_reconfig_check_done(%struct.nfp_net* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = call i32 @usleep_range(i32 250, i32 500)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @time_is_before_eq_jiffies(i64 %30)
  store i32 %31, i32* %6, align 4
  br label %22

32:                                               ; preds = %22
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i64 @nfp_net_reconfig_check_done(%struct.nfp_net*, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @time_is_before_eq_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
