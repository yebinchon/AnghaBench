; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_hash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_set_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nfp_meta_parsed = type { i32, i32 }

@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.nfp_meta_parsed*, i32, i32*)* @nfp_net_set_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_set_hash(%struct.net_device* %0, %struct.nfp_meta_parsed* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_meta_parsed*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.nfp_meta_parsed* %1, %struct.nfp_meta_parsed** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @NETIF_F_RXHASH, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %31

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %22 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %18
  ]

18:                                               ; preds = %16, %16, %16
  %19 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %20 = load %struct.nfp_meta_parsed*, %struct.nfp_meta_parsed** %6, align 8
  %21 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  %24 = load %struct.nfp_meta_parsed*, %struct.nfp_meta_parsed** %6, align 8
  %25 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @get_unaligned_be32(i32* %27)
  %29 = load %struct.nfp_meta_parsed*, %struct.nfp_meta_parsed** %6, align 8
  %30 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %15
  ret void
}

declare dso_local i32 @get_unaligned_be32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
