; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_reconfig_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_net*, i32)* @nfp_net_reconfig_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_net_reconfig_post(%struct.nfp_net* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %5, i32 0, i32 0
  %7 = call i32 @spin_lock_bh(i32* %6)
  %8 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %15 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %25 = call i64 @nfp_net_reconfig_check_done(%struct.nfp_net* %24, i32 0)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %23, %18
  %28 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @nfp_net_reconfig_start_async(%struct.nfp_net* %28, i32 %29)
  br label %37

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %34 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %27
  br label %38

38:                                               ; preds = %37, %12
  %39 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %40 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %39, i32 0, i32 0
  %41 = call i32 @spin_unlock_bh(i32* %40)
  ret void
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @nfp_net_reconfig_check_done(%struct.nfp_net*, i32) #1

declare dso_local i32 @nfp_net_reconfig_start_async(%struct.nfp_net*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
