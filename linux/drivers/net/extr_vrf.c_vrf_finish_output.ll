; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_finish_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vrf.c_vrf_finish_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.dst_entry = type { %struct.net_device* }
%struct.net_device = type { i64 }
%struct.rtable = type { i32 }
%struct.neighbour = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @vrf_finish_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vrf_finish_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.dst_entry*, align 8
  %9 = alloca %struct.rtable*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.neighbour*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.sk_buff*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %17 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %16)
  store %struct.dst_entry* %17, %struct.dst_entry** %8, align 8
  %18 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %19 = bitcast %struct.dst_entry* %18 to %struct.rtable*
  store %struct.rtable* %19, %struct.rtable** %9, align 8
  %20 = load %struct.dst_entry*, %struct.dst_entry** %8, align 8
  %21 = getelementptr inbounds %struct.dst_entry, %struct.dst_entry* %20, i32 0, i32 0
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %10, align 8
  %23 = load %struct.net_device*, %struct.net_device** %10, align 8
  %24 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %23)
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %13, align 4
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %14, align 4
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = call i32 @nf_reset_ct(%struct.sk_buff* %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = call i32 @skb_headroom(%struct.sk_buff* %29)
  %31 = load i32, i32* %11, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %3
  %34 = load %struct.net_device*, %struct.net_device** %10, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %33, %3
  %39 = phi i1 [ false, %3 ], [ %37, %33 ]
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %68

43:                                               ; preds = %38
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = load %struct.net_device*, %struct.net_device** %10, align 8
  %46 = call i32 @LL_RESERVED_SPACE(%struct.net_device* %45)
  %47 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %44, i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %15, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %49 = icmp ne %struct.sk_buff* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %43
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %14, align 4
  br label %88

53:                                               ; preds = %43
  %54 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %61 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @skb_set_owner_w(%struct.sk_buff* %59, i64 %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %66 = call i32 @consume_skb(%struct.sk_buff* %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  store %struct.sk_buff* %67, %struct.sk_buff** %7, align 8
  br label %68

68:                                               ; preds = %64, %38
  %69 = call i32 (...) @rcu_read_lock_bh()
  %70 = load %struct.rtable*, %struct.rtable** %9, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %72 = call %struct.neighbour* @ip_neigh_for_gw(%struct.rtable* %70, %struct.sk_buff* %71, i32* %13)
  store %struct.neighbour* %72, %struct.neighbour** %12, align 8
  %73 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %74 = call i32 @IS_ERR(%struct.neighbour* %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %68
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %79 = call i32 @sock_confirm_neigh(%struct.sk_buff* %77, %struct.neighbour* %78)
  %80 = load %struct.neighbour*, %struct.neighbour** %12, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @neigh_output(%struct.neighbour* %80, %struct.sk_buff* %81, i32 %82)
  store i32 %83, i32* %14, align 4
  %84 = call i32 (...) @rcu_read_unlock_bh()
  %85 = load i32, i32* %14, align 4
  store i32 %85, i32* %4, align 4
  br label %95

86:                                               ; preds = %68
  %87 = call i32 (...) @rcu_read_unlock_bh()
  br label %88

88:                                               ; preds = %86, %50
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = call i32 @vrf_tx_error(i32 %91, %struct.sk_buff* %92)
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %4, align 4
  br label %95

95:                                               ; preds = %88, %76
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i32 @LL_RESERVED_SPACE(%struct.net_device*) #1

declare dso_local i32 @nf_reset_ct(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_lock_bh(...) #1

declare dso_local %struct.neighbour* @ip_neigh_for_gw(%struct.rtable*, %struct.sk_buff*, i32*) #1

declare dso_local i32 @IS_ERR(%struct.neighbour*) #1

declare dso_local i32 @sock_confirm_neigh(%struct.sk_buff*, %struct.neighbour*) #1

declare dso_local i32 @neigh_output(%struct.neighbour*, %struct.sk_buff*, i32) #1

declare dso_local i32 @rcu_read_unlock_bh(...) #1

declare dso_local i32 @vrf_tx_error(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
