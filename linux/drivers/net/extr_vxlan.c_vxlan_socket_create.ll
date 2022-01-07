; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_socket_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_vxlan.c_vxlan_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxlan_sock = type { i32, i32, i32, %struct.socket*, i32* }
%struct.socket = type { i32 }
%struct.net = type { i32 }
%struct.vxlan_net = type { i32 }
%struct.udp_tunnel_sock_cfg = type { i32, i32, i32, i32*, i32, i32, %struct.vxlan_sock* }

@vxlan_net_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VNI_HASH_SIZE = common dso_local global i32 0, align 4
@VXLAN_F_RCV_FLAGS = common dso_local global i32 0, align 4
@VXLAN_F_GPE = common dso_local global i32 0, align 4
@UDP_TUNNEL_TYPE_VXLAN_GPE = common dso_local global i32 0, align 4
@UDP_TUNNEL_TYPE_VXLAN = common dso_local global i32 0, align 4
@vxlan_rcv = common dso_local global i32 0, align 4
@vxlan_err_lookup = common dso_local global i32 0, align 4
@vxlan_gro_receive = common dso_local global i32 0, align 4
@vxlan_gro_complete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vxlan_sock* (%struct.net*, i32, i32, i32, i32)* @vxlan_socket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vxlan_sock* @vxlan_socket_create(%struct.net* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vxlan_sock*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.vxlan_net*, align 8
  %13 = alloca %struct.vxlan_sock*, align 8
  %14 = alloca %struct.socket*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.udp_tunnel_sock_cfg, align 8
  store %struct.net* %0, %struct.net** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.net*, %struct.net** %7, align 8
  %18 = load i32, i32* @vxlan_net_id, align 4
  %19 = call %struct.vxlan_net* @net_generic(%struct.net* %17, i32 %18)
  store %struct.vxlan_net* %19, %struct.vxlan_net** %12, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.vxlan_sock* @kzalloc(i32 32, i32 %20)
  store %struct.vxlan_sock* %21, %struct.vxlan_sock** %13, align 8
  %22 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %23 = icmp ne %struct.vxlan_sock* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.vxlan_sock* @ERR_PTR(i32 %26)
  store %struct.vxlan_sock* %27, %struct.vxlan_sock** %6, align 8
  br label %114

28:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %15, align 4
  %31 = load i32, i32* @VNI_HASH_SIZE, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %29
  %34 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %35 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %15, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i32 @INIT_HLIST_HEAD(i32* %39)
  br label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %15, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %15, align 4
  br label %29

44:                                               ; preds = %29
  %45 = load %struct.net*, %struct.net** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* %11, align 4
  %50 = call %struct.socket* @vxlan_create_sock(%struct.net* %45, i32 %46, i32 %47, i32 %48, i32 %49)
  store %struct.socket* %50, %struct.socket** %14, align 8
  %51 = load %struct.socket*, %struct.socket** %14, align 8
  %52 = call i64 @IS_ERR(%struct.socket* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %44
  %55 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %56 = call i32 @kfree(%struct.vxlan_sock* %55)
  %57 = load %struct.socket*, %struct.socket** %14, align 8
  %58 = call %struct.vxlan_sock* @ERR_CAST(%struct.socket* %57)
  store %struct.vxlan_sock* %58, %struct.vxlan_sock** %6, align 8
  br label %114

59:                                               ; preds = %44
  %60 = load %struct.socket*, %struct.socket** %14, align 8
  %61 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %62 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %61, i32 0, i32 3
  store %struct.socket* %60, %struct.socket** %62, align 8
  %63 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %64 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %63, i32 0, i32 2
  %65 = call i32 @refcount_set(i32* %64, i32 1)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @VXLAN_F_RCV_FLAGS, align 4
  %68 = and i32 %66, %67
  %69 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %70 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.vxlan_net*, %struct.vxlan_net** %12, align 8
  %72 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %71, i32 0, i32 0
  %73 = call i32 @spin_lock(i32* %72)
  %74 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %75 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %74, i32 0, i32 1
  %76 = load %struct.net*, %struct.net** %7, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @vs_head(%struct.net* %76, i32 %77)
  %79 = call i32 @hlist_add_head_rcu(i32* %75, i32 %78)
  %80 = load %struct.socket*, %struct.socket** %14, align 8
  %81 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %82 = getelementptr inbounds %struct.vxlan_sock, %struct.vxlan_sock* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @VXLAN_F_GPE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %59
  %88 = load i32, i32* @UDP_TUNNEL_TYPE_VXLAN_GPE, align 4
  br label %91

89:                                               ; preds = %59
  %90 = load i32, i32* @UDP_TUNNEL_TYPE_VXLAN, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @udp_tunnel_notify_add_rx_port(%struct.socket* %80, i32 %92)
  %94 = load %struct.vxlan_net*, %struct.vxlan_net** %12, align 8
  %95 = getelementptr inbounds %struct.vxlan_net, %struct.vxlan_net* %94, i32 0, i32 0
  %96 = call i32 @spin_unlock(i32* %95)
  %97 = call i32 @memset(%struct.udp_tunnel_sock_cfg* %16, i32 0, i32 40)
  %98 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  %99 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %16, i32 0, i32 6
  store %struct.vxlan_sock* %98, %struct.vxlan_sock** %99, align 8
  %100 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %16, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load i32, i32* @vxlan_rcv, align 4
  %102 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %16, i32 0, i32 5
  store i32 %101, i32* %102, align 4
  %103 = load i32, i32* @vxlan_err_lookup, align 4
  %104 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %16, i32 0, i32 4
  store i32 %103, i32* %104, align 8
  %105 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %16, i32 0, i32 3
  store i32* null, i32** %105, align 8
  %106 = load i32, i32* @vxlan_gro_receive, align 4
  %107 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %16, i32 0, i32 2
  store i32 %106, i32* %107, align 8
  %108 = load i32, i32* @vxlan_gro_complete, align 4
  %109 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %16, i32 0, i32 1
  store i32 %108, i32* %109, align 4
  %110 = load %struct.net*, %struct.net** %7, align 8
  %111 = load %struct.socket*, %struct.socket** %14, align 8
  %112 = call i32 @setup_udp_tunnel_sock(%struct.net* %110, %struct.socket* %111, %struct.udp_tunnel_sock_cfg* %16)
  %113 = load %struct.vxlan_sock*, %struct.vxlan_sock** %13, align 8
  store %struct.vxlan_sock* %113, %struct.vxlan_sock** %6, align 8
  br label %114

114:                                              ; preds = %91, %54, %24
  %115 = load %struct.vxlan_sock*, %struct.vxlan_sock** %6, align 8
  ret %struct.vxlan_sock* %115
}

declare dso_local %struct.vxlan_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.vxlan_sock* @kzalloc(i32, i32) #1

declare dso_local %struct.vxlan_sock* @ERR_PTR(i32) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local %struct.socket* @vxlan_create_sock(%struct.net*, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.socket*) #1

declare dso_local i32 @kfree(%struct.vxlan_sock*) #1

declare dso_local %struct.vxlan_sock* @ERR_CAST(%struct.socket*) #1

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @hlist_add_head_rcu(i32*, i32) #1

declare dso_local i32 @vs_head(%struct.net*, i32) #1

declare dso_local i32 @udp_tunnel_notify_add_rx_port(%struct.socket*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @memset(%struct.udp_tunnel_sock_cfg*, i32, i32) #1

declare dso_local i32 @setup_udp_tunnel_sock(%struct.net*, %struct.socket*, %struct.udp_tunnel_sock_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
