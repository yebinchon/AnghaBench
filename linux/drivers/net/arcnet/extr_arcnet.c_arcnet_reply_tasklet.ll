; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_arcnet_reply_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_arcnet_reply_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arcnet_local = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, %struct.sock* }
%struct.sock = type { i32 }
%struct.sock_exterr_skb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@ENOMSG = common dso_local global i32 0, align 4
@SO_EE_ORIGIN_TXSTATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @arcnet_reply_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcnet_reply_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.arcnet_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock_exterr_skb*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %9 = load i64, i64* %2, align 8
  %10 = inttoptr i64 %9 to %struct.arcnet_local*
  store %struct.arcnet_local* %10, %struct.arcnet_local** %3, align 8
  %11 = call i32 (...) @local_irq_disable()
  %12 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %13 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %5, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = icmp ne %struct.sk_buff* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load %struct.sock*, %struct.sock** %20, align 8
  %22 = icmp ne %struct.sock* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %1
  %24 = call i32 (...) @local_irq_enable()
  br label %92

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load %struct.sock*, %struct.sock** %27, align 8
  %29 = call i32 @sock_hold(%struct.sock* %28)
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 1
  %32 = load %struct.sock*, %struct.sock** %31, align 8
  store %struct.sock* %32, %struct.sock** %7, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call %struct.sk_buff* @skb_clone_sk(%struct.sk_buff* %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %4, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load %struct.sock*, %struct.sock** %36, align 8
  %38 = call i32 @sock_put(%struct.sock* %37)
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %25
  %42 = call i32 (...) @local_irq_enable()
  br label %92

43:                                               ; preds = %25
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = call %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff* %44)
  store %struct.sock_exterr_skb* %45, %struct.sock_exterr_skb** %6, align 8
  %46 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %6, align 8
  %47 = call i32 @memset(%struct.sock_exterr_skb* %46, i32 0, i32 16)
  %48 = load i32, i32* @ENOMSG, align 4
  %49 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %6, align 8
  %50 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 4
  %52 = load i32, i32* @SO_EE_ORIGIN_TXSTATUS, align 4
  %53 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %6, align 8
  %54 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i32 %52, i32* %55, align 4
  %56 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %57 = call %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff* %56)
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %6, align 8
  %61 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %64 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.sock_exterr_skb*, %struct.sock_exterr_skb** %6, align 8
  %67 = getelementptr inbounds %struct.sock_exterr_skb, %struct.sock_exterr_skb* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  store i32 %65, i32* %68, align 4
  %69 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %70 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load %struct.sk_buff*, %struct.sk_buff** %71, align 8
  %73 = call i32 @dev_kfree_skb(%struct.sk_buff* %72)
  %74 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %75 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %76, align 8
  %77 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %78 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.sock*, %struct.sock** %7, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = call i32 @sock_queue_err_skb(%struct.sock* %82, %struct.sk_buff* %83)
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %43
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @kfree_skb(%struct.sk_buff* %88)
  br label %90

90:                                               ; preds = %87, %43
  %91 = call i32 (...) @local_irq_enable()
  br label %92

92:                                               ; preds = %90, %41, %23
  ret void
}

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local %struct.sk_buff* @skb_clone_sk(%struct.sk_buff*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local %struct.sock_exterr_skb* @SKB_EXT_ERR(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.sock_exterr_skb*, i32, i32) #1

declare dso_local %struct.TYPE_6__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @sock_queue_err_skb(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
