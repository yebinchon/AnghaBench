; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_err_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_err_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vxlan_dev = type { i32 }
%struct.vxlan_sock = type { i32 }
%struct.vxlanhdr = type { i32, i32 }

@VXLAN_HLEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VXLAN_HF_VNI = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @vxlan_err_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_err_lookup(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vxlan_dev*, align 8
  %7 = alloca %struct.vxlan_sock*, align 8
  %8 = alloca %struct.vxlanhdr*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = call i64 @skb_transport_offset(%struct.sk_buff* %11)
  %13 = load i64, i64* @VXLAN_HLEN, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @pskb_may_pull(%struct.sk_buff* %10, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %59

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call %struct.vxlanhdr* @vxlan_hdr(%struct.sk_buff* %21)
  store %struct.vxlanhdr* %22, %struct.vxlanhdr** %8, align 8
  %23 = load %struct.vxlanhdr*, %struct.vxlanhdr** %8, align 8
  %24 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @VXLAN_HF_VNI, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %20
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %59

32:                                               ; preds = %20
  %33 = load %struct.sock*, %struct.sock** %4, align 8
  %34 = call %struct.vxlan_sock* @rcu_dereference_sk_user_data(%struct.sock* %33)
  store %struct.vxlan_sock* %34, %struct.vxlan_sock** %7, align 8
  %35 = load %struct.vxlan_sock*, %struct.vxlan_sock** %7, align 8
  %36 = icmp ne %struct.vxlan_sock* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %59

40:                                               ; preds = %32
  %41 = load %struct.vxlanhdr*, %struct.vxlanhdr** %8, align 8
  %42 = getelementptr inbounds %struct.vxlanhdr, %struct.vxlanhdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @vxlan_vni(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.vxlan_sock*, %struct.vxlan_sock** %7, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call %struct.vxlan_dev* @vxlan_vs_find_vni(%struct.vxlan_sock* %45, i32 %50, i32 %51)
  store %struct.vxlan_dev* %52, %struct.vxlan_dev** %6, align 8
  %53 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %54 = icmp ne %struct.vxlan_dev* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %40
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %59

58:                                               ; preds = %40
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %58, %55, %37, %29, %17
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local %struct.vxlanhdr* @vxlan_hdr(%struct.sk_buff*) #1

declare dso_local %struct.vxlan_sock* @rcu_dereference_sk_user_data(%struct.sock*) #1

declare dso_local i32 @vxlan_vni(i32) #1

declare dso_local %struct.vxlan_dev* @vxlan_vs_find_vni(%struct.vxlan_sock*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
