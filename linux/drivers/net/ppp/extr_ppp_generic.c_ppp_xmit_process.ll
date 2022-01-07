; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_xmit_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_xmit_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"recursion detected\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*, %struct.sk_buff*)* @ppp_xmit_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_xmit_process(%struct.ppp* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ppp*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.ppp* %0, %struct.ppp** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = call i32 (...) @local_bh_disable()
  %6 = load %struct.ppp*, %struct.ppp** %3, align 8
  %7 = getelementptr inbounds %struct.ppp, %struct.ppp* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32* @this_cpu_ptr(i32 %8)
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @unlikely(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %31

14:                                               ; preds = %2
  %15 = load %struct.ppp*, %struct.ppp** %3, align 8
  %16 = getelementptr inbounds %struct.ppp, %struct.ppp* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @this_cpu_ptr(i32 %17)
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.ppp*, %struct.ppp** %3, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i32 @__ppp_xmit_process(%struct.ppp* %21, %struct.sk_buff* %22)
  %24 = load %struct.ppp*, %struct.ppp** %3, align 8
  %25 = getelementptr inbounds %struct.ppp, %struct.ppp* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32* @this_cpu_ptr(i32 %26)
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %27, align 4
  %30 = call i32 (...) @local_bh_enable()
  br label %42

31:                                               ; preds = %13
  %32 = call i32 (...) @local_bh_enable()
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  %35 = call i64 (...) @net_ratelimit()
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.ppp*, %struct.ppp** %3, align 8
  %39 = getelementptr inbounds %struct.ppp, %struct.ppp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @netdev_err(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %42

42:                                               ; preds = %14, %37, %31
  ret void
}

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @this_cpu_ptr(i32) #1

declare dso_local i32 @__ppp_xmit_process(%struct.ppp*, %struct.sk_buff*) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
