; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_ctrl_open(%struct.nfp_net* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %3, align 8
  %6 = call i32 (...) @rtnl_lock()
  %7 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %8 = call i32 @nfp_net_open_alloc_all(%struct.nfp_net* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %44

12:                                               ; preds = %1
  %13 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %14 = call i32 @nfp_net_set_config_and_enable(%struct.nfp_net* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %41

18:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %36, %18
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %22 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %20, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %28 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @enable_irq(i32 %34)
  br label %36

36:                                               ; preds = %26
  %37 = load i32, i32* %5, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %5, align 4
  br label %19

39:                                               ; preds = %19
  %40 = call i32 (...) @rtnl_unlock()
  store i32 0, i32* %2, align 4
  br label %47

41:                                               ; preds = %17
  %42 = load %struct.nfp_net*, %struct.nfp_net** %3, align 8
  %43 = call i32 @nfp_net_close_free_all(%struct.nfp_net* %42)
  br label %44

44:                                               ; preds = %41, %11
  %45 = call i32 (...) @rtnl_unlock()
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @nfp_net_open_alloc_all(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_set_config_and_enable(%struct.nfp_net*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @nfp_net_close_free_all(%struct.nfp_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
