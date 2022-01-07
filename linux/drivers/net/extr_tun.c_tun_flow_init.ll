; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_flow_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_tun_flow_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { i64, i32, i32* }

@TUN_NUM_FLOW_ENTRIES = common dso_local global i32 0, align 4
@TUN_FLOW_EXPIRE = common dso_local global i64 0, align 8
@tun_flow_cleanup = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tun_struct*)* @tun_flow_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tun_flow_init(%struct.tun_struct* %0) #0 {
  %2 = alloca %struct.tun_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %16, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @TUN_NUM_FLOW_ENTRIES, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %4
  %9 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %10 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  %15 = call i32 @INIT_HLIST_HEAD(i32* %14)
  br label %16

16:                                               ; preds = %8
  %17 = load i32, i32* %3, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %3, align 4
  br label %4

19:                                               ; preds = %4
  %20 = load i64, i64* @TUN_FLOW_EXPIRE, align 8
  %21 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %22 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %24 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %23, i32 0, i32 1
  %25 = load i32, i32* @tun_flow_cleanup, align 4
  %26 = call i32 @timer_setup(i32* %24, i32 %25, i32 0)
  %27 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %28 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %27, i32 0, i32 1
  %29 = load i64, i64* @jiffies, align 8
  %30 = load %struct.tun_struct*, %struct.tun_struct** %2, align 8
  %31 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = call i32 @round_jiffies_up(i64 %33)
  %35 = call i32 @mod_timer(i32* %28, i32 %34)
  ret void
}

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies_up(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
