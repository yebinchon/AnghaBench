; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.pppox_sock = type { i32 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @pptp_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pptp_release(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.pppox_sock*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 0
  %9 = load %struct.sock*, %struct.sock** %8, align 8
  store %struct.sock* %9, %struct.sock** %4, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = icmp ne %struct.sock* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %45

13:                                               ; preds = %1
  %14 = load %struct.sock*, %struct.sock** %4, align 8
  %15 = call i32 @lock_sock(%struct.sock* %14)
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = load i32, i32* @SOCK_DEAD, align 4
  %18 = call i64 @sock_flag(%struct.sock* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call i32 @release_sock(%struct.sock* %21)
  %23 = load i32, i32* @EBADF, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %45

25:                                               ; preds = %13
  %26 = load %struct.sock*, %struct.sock** %4, align 8
  %27 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %26)
  store %struct.pppox_sock* %27, %struct.pppox_sock** %5, align 8
  %28 = load %struct.pppox_sock*, %struct.pppox_sock** %5, align 8
  %29 = call i32 @del_chan(%struct.pppox_sock* %28)
  %30 = call i32 (...) @synchronize_rcu()
  %31 = load %struct.sock*, %struct.sock** %4, align 8
  %32 = call i32 @pppox_unbind_sock(%struct.sock* %31)
  %33 = load i32, i32* @PPPOX_DEAD, align 4
  %34 = load %struct.sock*, %struct.sock** %4, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sock*, %struct.sock** %4, align 8
  %37 = call i32 @sock_orphan(%struct.sock* %36)
  %38 = load %struct.socket*, %struct.socket** %3, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 0
  store %struct.sock* null, %struct.sock** %39, align 8
  %40 = load %struct.sock*, %struct.sock** %4, align 8
  %41 = call i32 @release_sock(%struct.sock* %40)
  %42 = load %struct.sock*, %struct.sock** %4, align 8
  %43 = call i32 @sock_put(%struct.sock* %42)
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %25, %20, %12
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i32 @del_chan(%struct.pppox_sock*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @pppox_unbind_sock(%struct.sock*) #1

declare dso_local i32 @sock_orphan(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
