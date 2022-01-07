; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_mac_repr_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_cmsg.c_nfp_flower_cmsg_mac_repr_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.nfp_flower_cmsg_mac_repr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@NFP_FLOWER_CMSG_MAC_REPR_NBI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_flower_cmsg_mac_repr_add(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfp_flower_cmsg_mac_repr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %13 = call %struct.nfp_flower_cmsg_mac_repr* @nfp_flower_cmsg_get_data(%struct.sk_buff* %12)
  store %struct.nfp_flower_cmsg_mac_repr* %13, %struct.nfp_flower_cmsg_mac_repr** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.nfp_flower_cmsg_mac_repr*, %struct.nfp_flower_cmsg_mac_repr** %11, align 8
  %16 = getelementptr inbounds %struct.nfp_flower_cmsg_mac_repr, %struct.nfp_flower_cmsg_mac_repr* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %14, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @NFP_FLOWER_CMSG_MAC_REPR_NBI, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.nfp_flower_cmsg_mac_repr*, %struct.nfp_flower_cmsg_mac_repr** %11, align 8
  %26 = getelementptr inbounds %struct.nfp_flower_cmsg_mac_repr, %struct.nfp_flower_cmsg_mac_repr* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 %24, i32* %31, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.nfp_flower_cmsg_mac_repr*, %struct.nfp_flower_cmsg_mac_repr** %11, align 8
  %34 = getelementptr inbounds %struct.nfp_flower_cmsg_mac_repr, %struct.nfp_flower_cmsg_mac_repr* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32 %32, i32* %39, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.nfp_flower_cmsg_mac_repr*, %struct.nfp_flower_cmsg_mac_repr** %11, align 8
  %42 = getelementptr inbounds %struct.nfp_flower_cmsg_mac_repr, %struct.nfp_flower_cmsg_mac_repr* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 %40, i32* %47, align 4
  ret void
}

declare dso_local %struct.nfp_flower_cmsg_mac_repr* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
