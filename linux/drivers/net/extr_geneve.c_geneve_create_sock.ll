; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_create_sock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_create_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.net = type { i32 }
%struct.udp_port_cfg = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.net*, i32, i32, i32)* @geneve_create_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @geneve_create_sock(%struct.net* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.udp_port_cfg, align 4
  %12 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = call i32 @memset(%struct.udp_port_cfg* %11, i32 0, i32 20)
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* @AF_INET6, align 4
  %18 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %11, i32 0, i32 4
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %11, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %11, i32 0, i32 1
  store i32 %20, i32* %21, align 4
  br label %29

22:                                               ; preds = %4
  %23 = load i32, i32* @AF_INET, align 4
  %24 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %11, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @INADDR_ANY, align 4
  %26 = call i32 @htonl(i32 %25)
  %27 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %11, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  br label %29

29:                                               ; preds = %22, %16
  %30 = load i32, i32* %8, align 4
  %31 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %11, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.net*, %struct.net** %6, align 8
  %33 = call i32 @udp_sock_create(%struct.net* %32, %struct.udp_port_cfg* %11, %struct.socket** %10)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.socket* @ERR_PTR(i32 %37)
  store %struct.socket* %38, %struct.socket** %5, align 8
  br label %41

39:                                               ; preds = %29
  %40 = load %struct.socket*, %struct.socket** %10, align 8
  store %struct.socket* %40, %struct.socket** %5, align 8
  br label %41

41:                                               ; preds = %39, %36
  %42 = load %struct.socket*, %struct.socket** %5, align 8
  ret %struct.socket* %42
}

declare dso_local i32 @memset(%struct.udp_port_cfg*, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @udp_sock_create(%struct.net*, %struct.udp_port_cfg*, %struct.socket**) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
