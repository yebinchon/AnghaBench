; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_genl_get_pdp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_genl_get_pdp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, %struct.TYPE_3__*, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.pdp_ctx = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GTPA_VERSION = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_GOODSIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @gtp_genl_get_pdp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gtp_genl_get_pdp(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.pdp_ctx*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  store %struct.pdp_ctx* null, %struct.pdp_ctx** %6, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = load i64, i64* @GTPA_VERSION, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %80

20:                                               ; preds = %2
  %21 = call i32 (...) @rcu_read_lock()
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sock_net(i32 %24)
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call %struct.pdp_ctx* @gtp_find_pdp(i32 %25, i32* %28)
  store %struct.pdp_ctx* %29, %struct.pdp_ctx** %6, align 8
  %30 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %31 = call i64 @IS_ERR(%struct.pdp_ctx* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %35 = call i32 @PTR_ERR(%struct.pdp_ctx* %34)
  store i32 %35, i32* %8, align 4
  br label %77

36:                                               ; preds = %20
  %37 = load i32, i32* @NLMSG_GOODSIZE, align 4
  %38 = load i32, i32* @GFP_ATOMIC, align 4
  %39 = call %struct.sk_buff* @genlmsg_new(i32 %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %7, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = icmp eq %struct.sk_buff* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %77

45:                                               ; preds = %36
  %46 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = call i32 @NETLINK_CB(%struct.sk_buff* %47)
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pdp_ctx*, %struct.pdp_ctx** %6, align 8
  %61 = call i32 @gtp_genl_fill_info(%struct.sk_buff* %46, i32 %51, i32 %54, i32 %59, %struct.pdp_ctx* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %45
  br label %74

65:                                               ; preds = %45
  %66 = call i32 (...) @rcu_read_unlock()
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = call i32 @genl_info_net(%struct.genl_info* %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @genlmsg_unicast(i32 %68, %struct.sk_buff* %69, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %80

74:                                               ; preds = %64
  %75 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  br label %77

77:                                               ; preds = %74, %42, %33
  %78 = call i32 (...) @rcu_read_unlock()
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %65, %17
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.pdp_ctx* @gtp_find_pdp(i32, i32*) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i64 @IS_ERR(%struct.pdp_ctx*) #1

declare dso_local i32 @PTR_ERR(%struct.pdp_ctx*) #1

declare dso_local %struct.sk_buff* @genlmsg_new(i32, i32) #1

declare dso_local i32 @gtp_genl_fill_info(%struct.sk_buff*, i32, i32, i32, %struct.pdp_ctx*) #1

declare dso_local i32 @NETLINK_CB(%struct.sk_buff*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @genlmsg_unicast(i32, %struct.sk_buff*, i32) #1

declare dso_local i32 @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
