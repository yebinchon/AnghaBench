; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_net_free(%struct.nfp_net* %0) #0 {
  %2 = alloca %struct.nfp_net*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %2, align 8
  %3 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %3, i32 0, i32 2
  %5 = call i64 @timer_pending(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %9 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br label %12

12:                                               ; preds = %7, %1
  %13 = phi i1 [ true, %1 ], [ %11, %7 ]
  %14 = zext i1 %13 to i32
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %17 = call i32 @nfp_ccm_mbox_free(%struct.nfp_net* %16)
  %18 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %19 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %12
  %24 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %25 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @free_netdev(i64 %27)
  br label %32

29:                                               ; preds = %12
  %30 = load %struct.nfp_net*, %struct.nfp_net** %2, align 8
  %31 = call i32 @vfree(%struct.nfp_net* %30)
  br label %32

32:                                               ; preds = %29, %23
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @timer_pending(i32*) #1

declare dso_local i32 @nfp_ccm_mbox_free(%struct.nfp_net*) #1

declare dso_local i32 @free_netdev(i64) #1

declare dso_local i32 @vfree(%struct.nfp_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
