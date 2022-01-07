; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_create_sock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_create_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.net = type { i32 }
%struct.udp_port_cfg = type { i32, i32, i32, i32, i32 }

@AF_INET6 = common dso_local global i32 0, align 4
@VXLAN_F_UDP_ZERO_CSUM6_RX = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.net*, i32, i32, i32, i32)* @vxlan_create_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @vxlan_create_sock(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.udp_port_cfg, align 4
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i32 @memset(%struct.udp_port_cfg* %13, i32 0, i32 20)
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %5
  %19 = load i32, i32* @AF_INET6, align 4
  %20 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %13, i32 0, i32 4
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @VXLAN_F_UDP_ZERO_CSUM6_RX, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %13, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %13, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %32

29:                                               ; preds = %5
  %30 = load i32, i32* @AF_INET, align 4
  %31 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %13, i32 0, i32 4
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %18
  %33 = load i32, i32* %9, align 4
  %34 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %13, i32 0, i32 3
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %11, align 4
  %36 = getelementptr inbounds %struct.udp_port_cfg, %struct.udp_port_cfg* %13, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.net*, %struct.net** %7, align 8
  %38 = call i32 @udp_sock_create(%struct.net* %37, %struct.udp_port_cfg* %13, %struct.socket** %12)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %14, align 4
  %43 = call %struct.socket* @ERR_PTR(i32 %42)
  store %struct.socket* %43, %struct.socket** %6, align 8
  br label %46

44:                                               ; preds = %32
  %45 = load %struct.socket*, %struct.socket** %12, align 8
  store %struct.socket* %45, %struct.socket** %6, align 8
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.socket*, %struct.socket** %6, align 8
  ret %struct.socket* %47
}

declare dso_local i32 @memset(%struct.udp_port_cfg*, i32, i32) #1

declare dso_local i32 @udp_sock_create(%struct.net*, %struct.udp_port_cfg*, %struct.socket**) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
