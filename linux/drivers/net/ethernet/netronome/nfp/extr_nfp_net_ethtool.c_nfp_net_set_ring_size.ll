; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_set_ring_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_ethtool.c_nfp_net_set_ring_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }
%struct.nfp_net_dp = type { i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, i8*, i8*)* @nfp_net_set_ring_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_set_ring_size(%struct.nfp_net* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_net*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.nfp_net_dp*, align 8
  store %struct.nfp_net* %0, %struct.nfp_net** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %10 = call %struct.nfp_net_dp* @nfp_net_clone_dp(%struct.nfp_net* %9)
  store %struct.nfp_net_dp* %10, %struct.nfp_net_dp** %8, align 8
  %11 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %8, align 8
  %12 = icmp ne %struct.nfp_net_dp* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %8, align 8
  %19 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %8, align 8
  %22 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %21, i32 0, i32 0
  store i8* %20, i8** %22, align 8
  %23 = load %struct.nfp_net*, %struct.nfp_net** %5, align 8
  %24 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %8, align 8
  %25 = call i32 @nfp_net_ring_reconfig(%struct.nfp_net* %23, %struct.nfp_net_dp* %24, i32* null)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %16, %13
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.nfp_net_dp* @nfp_net_clone_dp(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_ring_reconfig(%struct.nfp_net*, %struct.nfp_net_dp*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
