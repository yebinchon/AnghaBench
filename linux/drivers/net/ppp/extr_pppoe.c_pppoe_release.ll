; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pppoe.c_pppoe_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32, i32 }
%struct.pppox_sock = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pppoe_net = type { i32 }
%struct.net = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @pppoe_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppoe_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.pppox_sock*, align 8
  %6 = alloca %struct.pppoe_net*, align 8
  %7 = alloca %struct.net*, align 8
  store %struct.socket* %0, %struct.socket** %3, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.sock*, %struct.sock** %9, align 8
  store %struct.sock* %10, %struct.sock** %4, align 8
  store %struct.net* null, %struct.net** %7, align 8
  %11 = load %struct.sock*, %struct.sock** %4, align 8
  %12 = icmp ne %struct.sock* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %74

14:                                               ; preds = %1
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @lock_sock(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = load i32, i32* @SOCK_DEAD, align 4
  %19 = call i64 @sock_flag(%struct.sock* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load %struct.sock*, %struct.sock** %4, align 8
  %23 = call i32 @release_sock(%struct.sock* %22)
  %24 = load i32, i32* @EBADF, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %74

26:                                               ; preds = %14
  %27 = load %struct.sock*, %struct.sock** %4, align 8
  %28 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %27)
  store %struct.pppox_sock* %28, %struct.pppox_sock** %5, align 8
  %29 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %30 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %26
  %34 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %35 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @dev_put(i32* %36)
  %38 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %39 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = load %struct.sock*, %struct.sock** %4, align 8
  %42 = call i32 @pppox_unbind_sock(%struct.sock* %41)
  %43 = load i32, i32* @PPPOX_DEAD, align 4
  %44 = load %struct.sock*, %struct.sock** %4, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.sock*, %struct.sock** %4, align 8
  %47 = call %struct.net* @sock_net(%struct.sock* %46)
  store %struct.net* %47, %struct.net** %7, align 8
  %48 = load %struct.net*, %struct.net** %7, align 8
  %49 = call %struct.pppoe_net* @pppoe_pernet(%struct.net* %48)
  store %struct.pppoe_net* %49, %struct.pppoe_net** %6, align 8
  %50 = load %struct.pppoe_net*, %struct.pppoe_net** %6, align 8
  %51 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %52 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %56 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %60 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @delete_item(%struct.pppoe_net* %50, i32 %54, i32 %58, i32 %61)
  %63 = load %struct.sock*, %struct.sock** %4, align 8
  %64 = call i32 @sock_orphan(%struct.sock* %63)
  %65 = load %struct.socket*, %struct.socket** %3, align 8
  %66 = getelementptr inbounds %struct.socket, %struct.socket* %65, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %66, align 8
  %67 = load %struct.sock*, %struct.sock** %4, align 8
  %68 = getelementptr inbounds %struct.sock, %struct.sock* %67, i32 0, i32 0
  %69 = call i32 @skb_queue_purge(i32* %68)
  %70 = load %struct.sock*, %struct.sock** %4, align 8
  %71 = call i32 @release_sock(%struct.sock* %70)
  %72 = load %struct.sock*, %struct.sock** %4, align 8
  %73 = call i32 @sock_put(%struct.sock* %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %40, %21, %13
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @dev_put(i32*) #1

declare dso_local i32 @pppox_unbind_sock(%struct.sock*) #1

declare dso_local %struct.net* @sock_net(%struct.sock*) #1

declare dso_local %struct.pppoe_net* @pppoe_pernet(%struct.net*) #1

declare dso_local i32 @delete_item(%struct.pppoe_net*, i32, i32, i32) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
