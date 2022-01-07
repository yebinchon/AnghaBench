; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_udp_encap_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_udp_encap_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.genevehdr = type { i64, i64, i32 }
%struct.geneve_dev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.geneve_sock = type { i32 }

@GENEVE_BASE_HLEN = common dso_local global i64 0, align 8
@GENEVE_VER = common dso_local global i64 0, align 8
@ETH_P_TEB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @geneve_udp_encap_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geneve_udp_encap_recv(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.genevehdr*, align 8
  %7 = alloca %struct.geneve_dev*, align 8
  %8 = alloca %struct.geneve_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load i64, i64* @GENEVE_BASE_HLEN, align 8
  %12 = call i32 @pskb_may_pull(%struct.sk_buff* %10, i64 %11)
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %93

19:                                               ; preds = %2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = call %struct.genevehdr* @geneve_hdr(%struct.sk_buff* %20)
  store %struct.genevehdr* %21, %struct.genevehdr** %6, align 8
  %22 = load %struct.genevehdr*, %struct.genevehdr** %6, align 8
  %23 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GENEVE_VER, align 8
  %26 = icmp ne i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %93

31:                                               ; preds = %19
  %32 = load %struct.genevehdr*, %struct.genevehdr** %6, align 8
  %33 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @ETH_P_TEB, align 4
  %36 = call i64 @htons(i32 %35)
  %37 = icmp ne i64 %34, %36
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %93

42:                                               ; preds = %31
  %43 = load %struct.sock*, %struct.sock** %4, align 8
  %44 = call %struct.geneve_sock* @rcu_dereference_sk_user_data(%struct.sock* %43)
  store %struct.geneve_sock* %44, %struct.geneve_sock** %8, align 8
  %45 = load %struct.geneve_sock*, %struct.geneve_sock** %8, align 8
  %46 = icmp ne %struct.geneve_sock* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  br label %93

48:                                               ; preds = %42
  %49 = load %struct.geneve_sock*, %struct.geneve_sock** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call %struct.geneve_dev* @geneve_lookup_skb(%struct.geneve_sock* %49, %struct.sk_buff* %50)
  store %struct.geneve_dev* %51, %struct.geneve_dev** %7, align 8
  %52 = load %struct.geneve_dev*, %struct.geneve_dev** %7, align 8
  %53 = icmp ne %struct.geneve_dev* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %93

55:                                               ; preds = %48
  %56 = load %struct.genevehdr*, %struct.genevehdr** %6, align 8
  %57 = getelementptr inbounds %struct.genevehdr, %struct.genevehdr* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = mul nsw i32 %58, 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load i64, i64* @GENEVE_BASE_HLEN, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = add nsw i64 %61, %63
  %65 = load i32, i32* @ETH_P_TEB, align 4
  %66 = call i64 @htons(i32 %65)
  %67 = load %struct.geneve_dev*, %struct.geneve_dev** %7, align 8
  %68 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.geneve_dev*, %struct.geneve_dev** %7, align 8
  %71 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @dev_net(%struct.TYPE_4__* %72)
  %74 = call i32 @net_eq(i32 %69, i32 %73)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = call i64 @iptunnel_pull_header(%struct.sk_buff* %60, i64 %64, i64 %66, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %55
  %81 = load %struct.geneve_dev*, %struct.geneve_dev** %7, align 8
  %82 = getelementptr inbounds %struct.geneve_dev, %struct.geneve_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %93

88:                                               ; preds = %55
  %89 = load %struct.geneve_dev*, %struct.geneve_dev** %7, align 8
  %90 = load %struct.geneve_sock*, %struct.geneve_sock** %8, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = call i32 @geneve_rx(%struct.geneve_dev* %89, %struct.geneve_sock* %90, %struct.sk_buff* %91)
  store i32 0, i32* %3, align 4
  br label %96

93:                                               ; preds = %80, %54, %47, %41, %30, %18
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i32 @kfree_skb(%struct.sk_buff* %94)
  store i32 0, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %88
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local %struct.genevehdr* @geneve_hdr(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.geneve_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local %struct.geneve_dev* @geneve_lookup_skb(%struct.geneve_sock*, %struct.sk_buff*) #1

declare dso_local i64 @iptunnel_pull_header(%struct.sk_buff*, i64, i64, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_4__*) #1

declare dso_local i32 @geneve_rx(%struct.geneve_dev*, %struct.geneve_sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
