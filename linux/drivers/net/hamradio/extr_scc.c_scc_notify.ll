; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.sk_buff = type { i32 }

@KISS_DUPLEX_OPTIMA = common dso_local global i64 0, align 8
@PARAM_HWEVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*, i32)* @scc_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_notify(%struct.scc_channel* %0, i32 %1) #0 {
  %3 = alloca %struct.scc_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8*, align 8
  store %struct.scc_channel* %0, %struct.scc_channel** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %8 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @KISS_DUPLEX_OPTIMA, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %38

14:                                               ; preds = %2
  %15 = call %struct.sk_buff* @dev_alloc_skb(i32 2)
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = call i8* @skb_put(%struct.sk_buff* %19, i32 2)
  store i8* %20, i8** %6, align 8
  %21 = load i32, i32* @PARAM_HWEVENT, align 4
  %22 = trunc i32 %21 to i8
  %23 = load i8*, i8** %6, align 8
  %24 = getelementptr inbounds i8, i8* %23, i32 1
  store i8* %24, i8** %6, align 8
  store i8 %22, i8* %23, align 1
  %25 = load i32, i32* %4, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %6, align 8
  store i8 %26, i8* %27, align 1
  %29 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = call i32 @scc_net_rx(%struct.scc_channel* %29, %struct.sk_buff* %30)
  br label %38

32:                                               ; preds = %14
  %33 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %34 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %13, %32, %18
  ret void
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @scc_net_rx(%struct.scc_channel*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
