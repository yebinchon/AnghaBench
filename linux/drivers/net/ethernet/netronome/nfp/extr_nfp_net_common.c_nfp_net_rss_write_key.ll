; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rss_write_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rss_write_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i64 }

@NFP_NET_CFG_RSS_KEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_net_rss_write_key(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  %3 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %7 = call i32 @nfp_net_rss_key_sz(%struct.nfp_net* %6)
  %8 = icmp slt i32 %5, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %4
  %10 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %11 = load i64, i64* @NFP_NET_CFG_RSS_KEY, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %11, %13
  %15 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %16 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = sext i32 %18 to i64
  %20 = add nsw i64 %17, %19
  %21 = call i32 @get_unaligned_le32(i64 %20)
  %22 = call i32 @nn_writel(%struct.nfp_net* %10, i64 %14, i32 %21)
  br label %23

23:                                               ; preds = %9
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 4
  store i32 %25, i32* %3, align 4
  br label %4

26:                                               ; preds = %4
  ret void
}

declare dso_local i32 @nfp_net_rss_key_sz(%struct.nfp_net*) #1

declare dso_local i32 @nn_writel(%struct.nfp_net*, i64, i32) #1

declare dso_local i32 @get_unaligned_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
