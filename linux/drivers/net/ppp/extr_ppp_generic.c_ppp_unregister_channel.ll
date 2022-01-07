; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_unregister_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_unregister_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { %struct.channel* }
%struct.channel = type { %struct.TYPE_2__, i32, i32, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ppp_net = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppp_unregister_channel(%struct.ppp_channel* %0) #0 {
  %2 = alloca %struct.ppp_channel*, align 8
  %3 = alloca %struct.channel*, align 8
  %4 = alloca %struct.ppp_net*, align 8
  store %struct.ppp_channel* %0, %struct.ppp_channel** %2, align 8
  %5 = load %struct.ppp_channel*, %struct.ppp_channel** %2, align 8
  %6 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %5, i32 0, i32 0
  %7 = load %struct.channel*, %struct.channel** %6, align 8
  store %struct.channel* %7, %struct.channel** %3, align 8
  %8 = load %struct.channel*, %struct.channel** %3, align 8
  %9 = icmp ne %struct.channel* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %58

11:                                               ; preds = %1
  %12 = load %struct.ppp_channel*, %struct.ppp_channel** %2, align 8
  %13 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %12, i32 0, i32 0
  store %struct.channel* null, %struct.channel** %13, align 8
  %14 = load %struct.channel*, %struct.channel** %3, align 8
  %15 = getelementptr inbounds %struct.channel, %struct.channel* %14, i32 0, i32 3
  %16 = call i32 @down_write(i32* %15)
  %17 = load %struct.channel*, %struct.channel** %3, align 8
  %18 = getelementptr inbounds %struct.channel, %struct.channel* %17, i32 0, i32 4
  %19 = call i32 @spin_lock_bh(i32* %18)
  %20 = load %struct.channel*, %struct.channel** %3, align 8
  %21 = getelementptr inbounds %struct.channel, %struct.channel* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load %struct.channel*, %struct.channel** %3, align 8
  %23 = getelementptr inbounds %struct.channel, %struct.channel* %22, i32 0, i32 4
  %24 = call i32 @spin_unlock_bh(i32* %23)
  %25 = load %struct.channel*, %struct.channel** %3, align 8
  %26 = getelementptr inbounds %struct.channel, %struct.channel* %25, i32 0, i32 3
  %27 = call i32 @up_write(i32* %26)
  %28 = load %struct.channel*, %struct.channel** %3, align 8
  %29 = call i32 @ppp_disconnect_channel(%struct.channel* %28)
  %30 = load %struct.channel*, %struct.channel** %3, align 8
  %31 = getelementptr inbounds %struct.channel, %struct.channel* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call %struct.ppp_net* @ppp_pernet(i32 %32)
  store %struct.ppp_net* %33, %struct.ppp_net** %4, align 8
  %34 = load %struct.ppp_net*, %struct.ppp_net** %4, align 8
  %35 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %34, i32 0, i32 0
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.channel*, %struct.channel** %3, align 8
  %38 = getelementptr inbounds %struct.channel, %struct.channel* %37, i32 0, i32 1
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.ppp_net*, %struct.ppp_net** %4, align 8
  %41 = getelementptr inbounds %struct.ppp_net, %struct.ppp_net* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock_bh(i32* %41)
  %43 = load %struct.channel*, %struct.channel** %3, align 8
  %44 = getelementptr inbounds %struct.channel, %struct.channel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.channel*, %struct.channel** %3, align 8
  %47 = getelementptr inbounds %struct.channel, %struct.channel* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = call i32 @wake_up_interruptible(i32* %48)
  %50 = load %struct.channel*, %struct.channel** %3, align 8
  %51 = getelementptr inbounds %struct.channel, %struct.channel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = call i64 @refcount_dec_and_test(i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %11
  %56 = load %struct.channel*, %struct.channel** %3, align 8
  %57 = call i32 @ppp_destroy_channel(%struct.channel* %56)
  br label %58

58:                                               ; preds = %10, %55, %11
  ret void
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ppp_disconnect_channel(%struct.channel*) #1

declare dso_local %struct.ppp_net* @ppp_pernet(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @ppp_destroy_channel(%struct.channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
