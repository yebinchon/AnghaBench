; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_encap_enable_socket.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_gtp.c_gtp_encap_enable_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i64 }
%struct.gtp_dev = type { i32 }
%struct.udp_tunnel_sock_cfg = type { i32, i32, i32, %struct.gtp_dev*, i32* }
%struct.socket = type { %struct.sock* }

@.str = private unnamed_addr constant [22 x i8] c"enable gtp on %d, %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"gtp socket fd=%d not found\0A\00", align 1
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"socket fd=%d not UDP\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@gtp_encap_recv = common dso_local global i32 0, align 4
@gtp_encap_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock* (i32, i32, %struct.gtp_dev*)* @gtp_encap_enable_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock* @gtp_encap_enable_socket(i32 %0, i32 %1, %struct.gtp_dev* %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gtp_dev*, align 8
  %8 = alloca %struct.udp_tunnel_sock_cfg, align 8
  %9 = alloca %struct.socket*, align 8
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.gtp_dev* %2, %struct.gtp_dev** %7, align 8
  %12 = bitcast %struct.udp_tunnel_sock_cfg* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call %struct.socket* @sockfd_lookup(i32 %16, i32* %11)
  store %struct.socket* %17, %struct.socket** %9, align 8
  %18 = load %struct.socket*, %struct.socket** %9, align 8
  %19 = icmp ne %struct.socket* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store %struct.sock* null, %struct.sock** %4, align 8
  br label %80

23:                                               ; preds = %3
  %24 = load %struct.socket*, %struct.socket** %9, align 8
  %25 = getelementptr inbounds %struct.socket, %struct.socket* %24, i32 0, i32 0
  %26 = load %struct.sock*, %struct.sock** %25, align 8
  %27 = getelementptr inbounds %struct.sock, %struct.sock* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IPPROTO_UDP, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %23
  %32 = load i32, i32* %5, align 4
  %33 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.sock* @ERR_PTR(i32 %35)
  store %struct.sock* %36, %struct.sock** %10, align 8
  br label %72

37:                                               ; preds = %23
  %38 = load %struct.socket*, %struct.socket** %9, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 0
  %40 = load %struct.sock*, %struct.sock** %39, align 8
  %41 = call i32 @lock_sock(%struct.sock* %40)
  %42 = load %struct.socket*, %struct.socket** %9, align 8
  %43 = getelementptr inbounds %struct.socket, %struct.socket* %42, i32 0, i32 0
  %44 = load %struct.sock*, %struct.sock** %43, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %37
  %49 = load i32, i32* @EBUSY, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.sock* @ERR_PTR(i32 %50)
  store %struct.sock* %51, %struct.sock** %10, align 8
  br label %72

52:                                               ; preds = %37
  %53 = load %struct.socket*, %struct.socket** %9, align 8
  %54 = getelementptr inbounds %struct.socket, %struct.socket* %53, i32 0, i32 0
  %55 = load %struct.sock*, %struct.sock** %54, align 8
  store %struct.sock* %55, %struct.sock** %10, align 8
  %56 = load %struct.sock*, %struct.sock** %10, align 8
  %57 = call i32 @sock_hold(%struct.sock* %56)
  %58 = load %struct.gtp_dev*, %struct.gtp_dev** %7, align 8
  %59 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %8, i32 0, i32 3
  store %struct.gtp_dev* %58, %struct.gtp_dev** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %8, i32 0, i32 0
  store i32 %60, i32* %61, align 8
  %62 = load i32, i32* @gtp_encap_recv, align 4
  %63 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %8, i32 0, i32 2
  store i32 %62, i32* %63, align 8
  %64 = load i32, i32* @gtp_encap_destroy, align 4
  %65 = getelementptr inbounds %struct.udp_tunnel_sock_cfg, %struct.udp_tunnel_sock_cfg* %8, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = load %struct.socket*, %struct.socket** %9, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load %struct.sock*, %struct.sock** %67, align 8
  %69 = call i32 @sock_net(%struct.sock* %68)
  %70 = load %struct.socket*, %struct.socket** %9, align 8
  %71 = call i32 @setup_udp_tunnel_sock(i32 %69, %struct.socket* %70, %struct.udp_tunnel_sock_cfg* %8)
  br label %72

72:                                               ; preds = %52, %48, %31
  %73 = load %struct.socket*, %struct.socket** %9, align 8
  %74 = getelementptr inbounds %struct.socket, %struct.socket* %73, i32 0, i32 0
  %75 = load %struct.sock*, %struct.sock** %74, align 8
  %76 = call i32 @release_sock(%struct.sock* %75)
  %77 = load %struct.socket*, %struct.socket** %9, align 8
  %78 = call i32 @sockfd_put(%struct.socket* %77)
  %79 = load %struct.sock*, %struct.sock** %10, align 8
  store %struct.sock* %79, %struct.sock** %4, align 8
  br label %80

80:                                               ; preds = %72, %20
  %81 = load %struct.sock*, %struct.sock** %4, align 8
  ret %struct.sock* %81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #2

declare dso_local %struct.socket* @sockfd_lookup(i32, i32*) #2

declare dso_local %struct.sock* @ERR_PTR(i32) #2

declare dso_local i32 @lock_sock(%struct.sock*) #2

declare dso_local i32 @sock_hold(%struct.sock*) #2

declare dso_local i32 @setup_udp_tunnel_sock(i32, %struct.socket*, %struct.udp_tunnel_sock_cfg*) #2

declare dso_local i32 @sock_net(%struct.sock*) #2

declare dso_local i32 @release_sock(%struct.sock*) #2

declare dso_local i32 @sockfd_put(%struct.socket*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
