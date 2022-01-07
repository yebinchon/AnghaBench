; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c___gtp_encap_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c___gtp_encap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { %struct.gtp_dev* }
%struct.gtp_dev = type { i32*, %struct.sock* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @__gtp_encap_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gtp_encap_destroy(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.gtp_dev*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call i32 @lock_sock(%struct.sock* %4)
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = getelementptr inbounds %struct.sock, %struct.sock* %6, i32 0, i32 0
  %8 = load %struct.gtp_dev*, %struct.gtp_dev** %7, align 8
  store %struct.gtp_dev* %8, %struct.gtp_dev** %3, align 8
  %9 = load %struct.gtp_dev*, %struct.gtp_dev** %3, align 8
  %10 = icmp ne %struct.gtp_dev* %9, null
  br i1 %10, label %11, label %31

11:                                               ; preds = %1
  %12 = load %struct.gtp_dev*, %struct.gtp_dev** %3, align 8
  %13 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %12, i32 0, i32 1
  %14 = load %struct.sock*, %struct.sock** %13, align 8
  %15 = load %struct.sock*, %struct.sock** %2, align 8
  %16 = icmp eq %struct.sock* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load %struct.gtp_dev*, %struct.gtp_dev** %3, align 8
  %19 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %18, i32 0, i32 1
  store %struct.sock* null, %struct.sock** %19, align 8
  br label %23

20:                                               ; preds = %11
  %21 = load %struct.gtp_dev*, %struct.gtp_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gtp_dev, %struct.gtp_dev* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = call %struct.TYPE_2__* @udp_sk(%struct.sock* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  store i64 0, i64* %26, align 8
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = call i32 @rcu_assign_sk_user_data(%struct.sock* %27, i32* null)
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @sock_put(%struct.sock* %29)
  br label %31

31:                                               ; preds = %23, %1
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = call i32 @release_sock(%struct.sock* %32)
  ret void
}

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @udp_sk(%struct.sock*) #1

declare dso_local i32 @rcu_assign_sk_user_data(%struct.sock*, i32*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
