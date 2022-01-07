; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_netvf_main.c_nfp_netvf_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_netvf_main.c_nfp_netvf_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@NFP_NET_CFG_MACADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*)* @nfp_netvf_get_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_netvf_get_mac_addr(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %6 = load i32, i32* @ETH_ALEN, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %11 = load i64, i64* @NFP_NET_CFG_MACADDR, align 8
  %12 = add nsw i64 %11, 0
  %13 = call i32 @nn_readl(%struct.nfp_net* %10, i64 %12)
  %14 = getelementptr inbounds i32, i32* %9, i64 0
  %15 = call i32 @put_unaligned_be32(i32 %13, i32* %14)
  %16 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %17 = load i64, i64* @NFP_NET_CFG_MACADDR, align 8
  %18 = add nsw i64 %17, 6
  %19 = call i32 @nn_readw(%struct.nfp_net* %16, i64 %18)
  %20 = getelementptr inbounds i32, i32* %9, i64 4
  %21 = call i32 @put_unaligned_be16(i32 %19, i32* %20)
  %22 = call i32 @is_valid_ether_addr(i32* %9)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %26 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @eth_hw_addr_random(%struct.TYPE_4__* %28)
  store i32 1, i32* %5, align 4
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %32 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ether_addr_copy(i32 %36, i32* %9)
  %38 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %39 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ether_addr_copy(i32 %43, i32* %9)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %30, %24
  %46 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %46)
  %47 = load i32, i32* %5, align 4
  switch i32 %47, label %49 [
    i32 0, label %48
    i32 1, label %48
  ]

48:                                               ; preds = %45, %45
  ret void

49:                                               ; preds = %45
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @put_unaligned_be32(i32, i32*) #2

declare dso_local i32 @nn_readl(%struct.nfp_net*, i64) #2

declare dso_local i32 @put_unaligned_be16(i32, i32*) #2

declare dso_local i32 @nn_readw(%struct.nfp_net*, i64) #2

declare dso_local i32 @is_valid_ether_addr(i32*) #2

declare dso_local i32 @eth_hw_addr_random(%struct.TYPE_4__*) #2

declare dso_local i32 @ether_addr_copy(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
