; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_encap_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_encap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.gtp_dev = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"encap_recv sk=%p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"received GTP0 packet\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"received GTP1U packet\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"pass up to the process\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"GTP packet has been dropped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @gtp_encap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_encap_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.gtp_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.gtp_dev* @rcu_dereference_sk_user_data(%struct.sock* %8)
  store %struct.gtp_dev* %9, %struct.gtp_dev** %6, align 8
  %10 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %11 = icmp ne %struct.gtp_dev* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %15 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.sock* %17)
  %19 = load %struct.sock*, %struct.sock** %4, align 8
  %20 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %39 [
    i32 129, label %23
    i32 128, label %31
  ]

23:                                               ; preds = %13
  %24 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %25 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = call i32 @gtp0_udp_encap_recv(%struct.gtp_dev* %28, %struct.sk_buff* %29)
  store i32 %30, i32* %7, align 4
  br label %40

31:                                               ; preds = %13
  %32 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %33 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %36 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = call i32 @gtp1u_udp_encap_recv(%struct.gtp_dev* %36, %struct.sk_buff* %37)
  store i32 %38, i32* %7, align 4
  br label %40

39:                                               ; preds = %13
  store i32 -1, i32* %7, align 4
  br label %40

40:                                               ; preds = %39, %31, %23
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %55 [
    i32 1, label %42
    i32 0, label %47
    i32 -1, label %48
  ]

42:                                               ; preds = %40
  %43 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %44 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %55

47:                                               ; preds = %40
  br label %55

48:                                               ; preds = %40
  %49 = load %struct.gtp_dev*, %struct.gtp_dev** %6, align 8
  %50 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = call i32 @kfree_skb(%struct.sk_buff* %53)
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %40, %48, %47, %42
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %55, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.gtp_dev* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @gtp0_udp_encap_recv(%struct.gtp_dev*, %struct.sk_buff*) #1

declare dso_local i32 @gtp1u_udp_encap_recv(%struct.gtp_dev*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
