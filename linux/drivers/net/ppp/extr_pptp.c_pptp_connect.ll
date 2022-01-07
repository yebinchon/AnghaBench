; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_connect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_pppox = type { i64, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.pppox_sock = type { %struct.TYPE_14__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { i32, i64, i32*, %struct.sock* }
%struct.TYPE_8__ = type { %struct.pptp_opt }
%struct.pptp_opt = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.rtable = type { i32 }
%struct.flowi4 = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PX_PROTO_PPTP = common dso_local global i64 0, align 8
@EALREADY = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PPPOX_DEAD = common dso_local global i32 0, align 4
@pptp_chan_ops = common dso_local global i32 0, align 4
@IPPROTO_GRE = common dso_local global i32 0, align 4
@EHOSTUNREACH = common dso_local global i32 0, align 4
@PPP_MRU = common dso_local global i64 0, align 8
@PPTP_HEADER_OVERHEAD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"PPTP: failed to register PPP channel (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockaddr*, i32, i32)* @pptp_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pptp_connect(%struct.socket* %0, %struct.sockaddr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca %struct.sockaddr_pppox*, align 8
  %12 = alloca %struct.pppox_sock*, align 8
  %13 = alloca %struct.pptp_opt*, align 8
  %14 = alloca %struct.rtable*, align 8
  %15 = alloca %struct.flowi4, align 4
  %16 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.socket*, %struct.socket** %6, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 0
  %19 = load %struct.sock*, %struct.sock** %18, align 8
  store %struct.sock* %19, %struct.sock** %10, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = bitcast %struct.sockaddr* %20 to %struct.sockaddr_pppox*
  store %struct.sockaddr_pppox* %21, %struct.sockaddr_pppox** %11, align 8
  %22 = load %struct.sock*, %struct.sock** %10, align 8
  %23 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %22)
  store %struct.pppox_sock* %23, %struct.pppox_sock** %12, align 8
  %24 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %25 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store %struct.pptp_opt* %26, %struct.pptp_opt** %13, align 8
  store i32 0, i32* %16, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = icmp ult i64 %28, 16
  br i1 %29, label %30, label %33

30:                                               ; preds = %4
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %186

33:                                               ; preds = %4
  %34 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %11, align 8
  %35 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PX_PROTO_PPTP, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %186

42:                                               ; preds = %33
  %43 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %11, align 8
  %44 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %11, align 8
  %49 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @lookup_chan_dst(i32 %47, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %42
  %57 = load i32, i32* @EALREADY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %186

59:                                               ; preds = %42
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = call i32 @lock_sock(%struct.sock* %60)
  %62 = load %struct.sock*, %struct.sock** %10, align 8
  %63 = getelementptr inbounds %struct.sock, %struct.sock* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @PPPOX_CONNECTED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EBUSY, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %16, align 4
  br label %182

71:                                               ; preds = %59
  %72 = load %struct.sock*, %struct.sock** %10, align 8
  %73 = getelementptr inbounds %struct.sock, %struct.sock* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PPPOX_DEAD, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = load i32, i32* @EALREADY, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %16, align 4
  br label %182

81:                                               ; preds = %71
  %82 = load %struct.pptp_opt*, %struct.pptp_opt** %13, align 8
  %83 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %11, align 8
  %90 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %88, %81
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %16, align 4
  br label %182

99:                                               ; preds = %88
  %100 = load %struct.sock*, %struct.sock** %10, align 8
  %101 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %102 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  store %struct.sock* %100, %struct.sock** %103, align 8
  %104 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %105 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 2
  store i32* @pptp_chan_ops, i32** %106, align 8
  %107 = load %struct.sock*, %struct.sock** %10, align 8
  %108 = call i32 @sock_net(%struct.sock* %107)
  %109 = load %struct.sock*, %struct.sock** %10, align 8
  %110 = load %struct.pptp_opt*, %struct.pptp_opt** %13, align 8
  %111 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.pptp_opt*, %struct.pptp_opt** %13, align 8
  %116 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @IPPROTO_GRE, align 4
  %121 = load %struct.sock*, %struct.sock** %10, align 8
  %122 = call i32 @RT_CONN_FLAGS(%struct.sock* %121)
  %123 = call %struct.rtable* @ip_route_output_ports(i32 %108, %struct.flowi4* %15, %struct.sock* %109, i32 %114, i32 %119, i32 0, i32 0, i32 %120, i32 %122, i32 0)
  store %struct.rtable* %123, %struct.rtable** %14, align 8
  %124 = load %struct.rtable*, %struct.rtable** %14, align 8
  %125 = call i64 @IS_ERR(%struct.rtable* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %99
  %128 = load i32, i32* @EHOSTUNREACH, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %16, align 4
  br label %182

130:                                              ; preds = %99
  %131 = load %struct.sock*, %struct.sock** %10, align 8
  %132 = load %struct.rtable*, %struct.rtable** %14, align 8
  %133 = getelementptr inbounds %struct.rtable, %struct.rtable* %132, i32 0, i32 0
  %134 = call i32 @sk_setup_caps(%struct.sock* %131, i32* %133)
  %135 = load %struct.rtable*, %struct.rtable** %14, align 8
  %136 = getelementptr inbounds %struct.rtable, %struct.rtable* %135, i32 0, i32 0
  %137 = call i64 @dst_mtu(i32* %136)
  %138 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %139 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 1
  store i64 %137, i64* %140, align 8
  %141 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %142 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %151, label %146

146:                                              ; preds = %130
  %147 = load i64, i64* @PPP_MRU, align 8
  %148 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %149 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 1
  store i64 %147, i64* %150, align 8
  br label %151

151:                                              ; preds = %146, %130
  %152 = load i64, i64* @PPTP_HEADER_OVERHEAD, align 8
  %153 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %154 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = sub nsw i64 %156, %152
  store i64 %157, i64* %155, align 8
  %158 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %159 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 0
  store i32 6, i32* %160, align 8
  %161 = load %struct.pppox_sock*, %struct.pppox_sock** %12, align 8
  %162 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %161, i32 0, i32 0
  %163 = call i32 @ppp_register_channel(%struct.TYPE_14__* %162)
  store i32 %163, i32* %16, align 4
  %164 = load i32, i32* %16, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %151
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @pr_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %167)
  br label %182

169:                                              ; preds = %151
  %170 = load %struct.pptp_opt*, %struct.pptp_opt** %13, align 8
  %171 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %170, i32 0, i32 0
  %172 = load %struct.sockaddr_pppox*, %struct.sockaddr_pppox** %11, align 8
  %173 = getelementptr inbounds %struct.sockaddr_pppox, %struct.sockaddr_pppox* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %173, i32 0, i32 0
  %175 = bitcast %struct.TYPE_12__* %171 to i8*
  %176 = bitcast %struct.TYPE_12__* %174 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %175, i8* align 8 %176, i64 8, i1 false)
  %177 = load i32, i32* @PPPOX_CONNECTED, align 4
  %178 = load %struct.sock*, %struct.sock** %10, align 8
  %179 = getelementptr inbounds %struct.sock, %struct.sock* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = or i32 %180, %177
  store i32 %181, i32* %179, align 4
  br label %182

182:                                              ; preds = %169, %166, %127, %96, %78, %68
  %183 = load %struct.sock*, %struct.sock** %10, align 8
  %184 = call i32 @release_sock(%struct.sock* %183)
  %185 = load i32, i32* %16, align 4
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %182, %56, %39, %30
  %187 = load i32, i32* %5, align 4
  ret i32 %187
}

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

declare dso_local i64 @lookup_chan_dst(i32, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local %struct.rtable* @ip_route_output_ports(i32, %struct.flowi4*, %struct.sock*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @sock_net(%struct.sock*) #1

declare dso_local i32 @RT_CONN_FLAGS(%struct.sock*) #1

declare dso_local i64 @IS_ERR(%struct.rtable*) #1

declare dso_local i32 @sk_setup_caps(%struct.sock*, i32*) #1

declare dso_local i64 @dst_mtu(i32*) #1

declare dso_local i32 @ppp_register_channel(%struct.TYPE_14__*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @release_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
