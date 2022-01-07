; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_ht_addr_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ipvlan/extr_ipvlan_core.c_ipvlan_ht_addr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipvl_dev = type { %struct.ipvl_port* }
%struct.ipvl_port = type { i32* }
%struct.ipvl_addr = type { i64, i32, i32, i32 }

@IPVL_IPV6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipvlan_ht_addr_add(%struct.ipvl_dev* %0, %struct.ipvl_addr* %1) #0 {
  %3 = alloca %struct.ipvl_dev*, align 8
  %4 = alloca %struct.ipvl_addr*, align 8
  %5 = alloca %struct.ipvl_port*, align 8
  %6 = alloca i64, align 8
  store %struct.ipvl_dev* %0, %struct.ipvl_dev** %3, align 8
  store %struct.ipvl_addr* %1, %struct.ipvl_addr** %4, align 8
  %7 = load %struct.ipvl_dev*, %struct.ipvl_dev** %3, align 8
  %8 = getelementptr inbounds %struct.ipvl_dev, %struct.ipvl_dev* %7, i32 0, i32 0
  %9 = load %struct.ipvl_port*, %struct.ipvl_port** %8, align 8
  store %struct.ipvl_port* %9, %struct.ipvl_port** %5, align 8
  %10 = load %struct.ipvl_addr*, %struct.ipvl_addr** %4, align 8
  %11 = getelementptr inbounds %struct.ipvl_addr, %struct.ipvl_addr* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @IPVL_IPV6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.ipvl_addr*, %struct.ipvl_addr** %4, align 8
  %17 = getelementptr inbounds %struct.ipvl_addr, %struct.ipvl_addr* %16, i32 0, i32 3
  %18 = call i64 @ipvlan_get_v6_hash(i32* %17)
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.ipvl_addr*, %struct.ipvl_addr** %4, align 8
  %21 = getelementptr inbounds %struct.ipvl_addr, %struct.ipvl_addr* %20, i32 0, i32 2
  %22 = call i64 @ipvlan_get_v4_hash(i32* %21)
  br label %23

23:                                               ; preds = %19, %15
  %24 = phi i64 [ %18, %15 ], [ %22, %19 ]
  store i64 %24, i64* %6, align 8
  %25 = load %struct.ipvl_addr*, %struct.ipvl_addr** %4, align 8
  %26 = getelementptr inbounds %struct.ipvl_addr, %struct.ipvl_addr* %25, i32 0, i32 1
  %27 = call i64 @hlist_unhashed(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.ipvl_addr*, %struct.ipvl_addr** %4, align 8
  %31 = getelementptr inbounds %struct.ipvl_addr, %struct.ipvl_addr* %30, i32 0, i32 1
  %32 = load %struct.ipvl_port*, %struct.ipvl_port** %5, align 8
  %33 = getelementptr inbounds %struct.ipvl_port, %struct.ipvl_port* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = call i32 @hlist_add_head_rcu(i32* %31, i32* %36)
  br label %38

38:                                               ; preds = %29, %23
  ret void
}

declare dso_local i64 @ipvlan_get_v6_hash(i32*) #1

declare dso_local i64 @ipvlan_get_v4_hash(i32*) #1

declare dso_local i64 @hlist_unhashed(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
