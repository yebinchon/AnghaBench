; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_socket_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_geneve.c_geneve_socket_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.geneve_sock = type { i32, i32, %struct.socket*, i32* }
%struct.socket = type { i32 }
%struct.net = type { i32 }
%struct.geneve_net = type { i32 }
%struct.udp_tunnel_sock_cfg = type { i32, i32*, i32, i32, i32, i32, %struct.geneve_sock* }

@geneve_net_id = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@VNI_HASH_SIZE = common dso_local global i32 0, align 4
@UDP_TUNNEL_TYPE_GENEVE = common dso_local global i32 0, align 4
@geneve_gro_receive = common dso_local global i32 0, align 4
@geneve_gro_complete = common dso_local global i32 0, align 4
@geneve_udp_encap_recv = common dso_local global i32 0, align 4
@geneve_udp_encap_err_lookup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.geneve_sock* (%struct.net*, i32, i32, i32)* @geneve_socket_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.geneve_sock* @geneve_socket_create(%struct.net* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.geneve_sock*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.geneve_net*, align 8
  %11 = alloca %struct.geneve_sock*, align 8
  %12 = alloca %struct.socket*, align 8
  %13 = alloca %struct.udp_tunnel_sock_cfg, align 8
  %14 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.net*, %struct.net** %6, align 8
  %16 = load i32, i32* @geneve_net_id, align 4
  %17 = call %struct.geneve_net* @net_generic(%struct.net* %15, i32 %16)
  store %struct.geneve_net* %17, %struct.geneve_net** %10, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.geneve_sock* @kzalloc(i32 24, i32 %18)
  store %struct.geneve_sock* %19, %struct.geneve_sock** %11, align 8
  %20 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %21 = icmp ne %struct.geneve_sock* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.geneve_sock* @ERR_PTR(i32 %24)
  store %struct.geneve_sock* %25, %struct.geneve_sock** %5, align 8
  br label %89

26:                                               ; preds = %4
  %27 = load %struct.net*, %struct.net** %6, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call %struct.socket* @geneve_create_sock(%struct.net* %27, i32 %28, i32 %29, i32 %30)
  store %struct.socket* %31, %struct.socket** %12, align 8
  %32 = load %struct.socket*, %struct.socket** %12, align 8
  %33 = call i64 @IS_ERR(%struct.socket* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %37 = call i32 @kfree(%struct.geneve_sock* %36)
  %38 = load %struct.socket*, %struct.socket** %12, align 8
  %39 = call %struct.geneve_sock* @ERR_CAST(%struct.socket* %38)
  store %struct.geneve_sock* %39, %struct.geneve_sock** %5, align 8
  br label %89

40:                                               ; preds = %26
  %41 = load %struct.socket*, %struct.socket** %12, align 8
  %42 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %43 = getelementptr inbounds %struct.geneve_sock, %struct.geneve_sock* %42, i32 0, i32 2
  store %struct.socket* %41, %struct.socket** %43, align 8
  %44 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %45 = getelementptr inbounds %struct.geneve_sock, %struct.geneve_sock* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  store i32 0, i32* %14, align 4
  br label %46

46:                                               ; preds = %58, %40
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* @VNI_HASH_SIZE, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %52 = getelementptr inbounds %struct.geneve_sock, %struct.geneve_sock* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %14, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = call i32 @INIT_HLIST_HEAD(i32* %56)
  br label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %14, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %14, align 4
  br label %46

61:                                               ; preds = %46
  %62 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %63 = getelementptr inbounds %struct.geneve_sock, %struct.geneve_sock* %62, i32 0, i32 2
  %64 = load %struct.socket*, %struct.socket** %63, align 8
  %65 = load i32, i32* @UDP_TUNNEL_TYPE_GENEVE, align 4
  %66 = call i32 @udp_tunnel_notify_add_rx_port(%struct.socket* %64, i32 %65)
  %67 = call i32 @memset(%struct.udp_tunnel_sock_cfg* %13, i32 0, i32 40)
  %68 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %69 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %13, i32 0, i32 6
  store %struct.geneve_sock* %68, %struct.geneve_sock** %69, align 8
  %70 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %13, i32 0, i32 0
  store i32 1, i32* %70, align 8
  %71 = load i32, i32* @geneve_gro_receive, align 4
  %72 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %13, i32 0, i32 5
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @geneve_gro_complete, align 4
  %74 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %13, i32 0, i32 4
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* @geneve_udp_encap_recv, align 4
  %76 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %13, i32 0, i32 3
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @geneve_udp_encap_err_lookup, align 4
  %78 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %13, i32 0, i32 2
  store i32 %77, i32* %78, align 8
  %79 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %13, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.net*, %struct.net** %6, align 8
  %81 = load %struct.socket*, %struct.socket** %12, align 8
  %82 = call i32 @setup_udp_tunnel_sock(%struct.net* %80, %struct.socket* %81, %struct.udp_tunnel_sock_cfg* %13)
  %83 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  %84 = getelementptr inbounds %struct.geneve_sock, %struct.geneve_sock* %83, i32 0, i32 1
  %85 = load %struct.geneve_net*, %struct.geneve_net** %10, align 8
  %86 = getelementptr inbounds %struct.geneve_net, %struct.geneve_net* %85, i32 0, i32 0
  %87 = call i32 @list_add(i32* %84, i32* %86)
  %88 = load %struct.geneve_sock*, %struct.geneve_sock** %11, align 8
  store %struct.geneve_sock* %88, %struct.geneve_sock** %5, align 8
  br label %89

89:                                               ; preds = %61, %35, %22
  %90 = load %struct.geneve_sock*, %struct.geneve_sock** %5, align 8
  ret %struct.geneve_sock* %90
}

declare dso_local %struct.geneve_net* @net_generic(%struct.net*, i32) #1

declare dso_local %struct.geneve_sock* @kzalloc(i32, i32) #1

declare dso_local %struct.geneve_sock* @ERR_PTR(i32) #1

declare dso_local %struct.socket* @geneve_create_sock(%struct.net*, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.socket*) #1

declare dso_local i32 @kfree(%struct.geneve_sock*) #1

declare dso_local %struct.geneve_sock* @ERR_CAST(%struct.socket*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @udp_tunnel_notify_add_rx_port(%struct.socket*, i32) #1

declare dso_local i32 @memset(%struct.udp_tunnel_sock_cfg*, i32, i32) #1

declare dso_local i32 @setup_udp_tunnel_sock(%struct.net*, %struct.socket*, %struct.udp_tunnel_sock_cfg*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
