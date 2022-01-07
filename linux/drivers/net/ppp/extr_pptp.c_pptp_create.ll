; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_pptp.c_pptp_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32*, i32 }
%struct.sock = type { i32, i32, i32, i32, i32, i32 }
%struct.pppox_sock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pptp_opt }
%struct.pptp_opt = type { i32, i32, i64, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@PF_PPPOX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@pptp_sk_proto = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@pptp_ops = common dso_local global i32 0, align 4
@pptp_rcv_core = common dso_local global i32 0, align 4
@PPPOX_NONE = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@PX_PROTO_PPTP = common dso_local global i32 0, align 4
@pptp_sock_destruct = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32)* @pptp_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pptp_create(%struct.net* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.socket*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.pppox_sock*, align 8
  %10 = alloca %struct.pptp_opt*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.socket* %1, %struct.socket** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load i32, i32* @PF_PPPOX, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.sock* @sk_alloc(%struct.net* %13, i32 %14, i32 %15, i32* @pptp_sk_proto, i32 %16)
  store %struct.sock* %17, %struct.sock** %8, align 8
  %18 = load %struct.sock*, %struct.sock** %8, align 8
  %19 = icmp ne %struct.sock* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %61

21:                                               ; preds = %3
  %22 = load %struct.socket*, %struct.socket** %5, align 8
  %23 = load %struct.sock*, %struct.sock** %8, align 8
  %24 = call i32 @sock_init_data(%struct.socket* %22, %struct.sock* %23)
  %25 = load i32, i32* @SS_UNCONNECTED, align 4
  %26 = load %struct.socket*, %struct.socket** %5, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load %struct.socket*, %struct.socket** %5, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  store i32* @pptp_ops, i32** %29, align 8
  %30 = load i32, i32* @pptp_rcv_core, align 4
  %31 = load %struct.sock*, %struct.sock** %8, align 8
  %32 = getelementptr inbounds %struct.sock, %struct.sock* %31, i32 0, i32 5
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @PPPOX_NONE, align 4
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = getelementptr inbounds %struct.sock, %struct.sock* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @SOCK_STREAM, align 4
  %37 = load %struct.sock*, %struct.sock** %8, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @PF_PPPOX, align 4
  %40 = load %struct.sock*, %struct.sock** %8, align 8
  %41 = getelementptr inbounds %struct.sock, %struct.sock* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @PX_PROTO_PPTP, align 4
  %43 = load %struct.sock*, %struct.sock** %8, align 8
  %44 = getelementptr inbounds %struct.sock, %struct.sock* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @pptp_sock_destruct, align 4
  %46 = load %struct.sock*, %struct.sock** %8, align 8
  %47 = getelementptr inbounds %struct.sock, %struct.sock* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.sock*, %struct.sock** %8, align 8
  %49 = call %struct.pppox_sock* @pppox_sk(%struct.sock* %48)
  store %struct.pppox_sock* %49, %struct.pppox_sock** %9, align 8
  %50 = load %struct.pppox_sock*, %struct.pppox_sock** %9, align 8
  %51 = getelementptr inbounds %struct.pppox_sock, %struct.pppox_sock* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store %struct.pptp_opt* %52, %struct.pptp_opt** %10, align 8
  %53 = load %struct.pptp_opt*, %struct.pptp_opt** %10, align 8
  %54 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.pptp_opt*, %struct.pptp_opt** %10, align 8
  %56 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load %struct.pptp_opt*, %struct.pptp_opt** %10, align 8
  %58 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.pptp_opt*, %struct.pptp_opt** %10, align 8
  %60 = getelementptr inbounds %struct.pptp_opt, %struct.pptp_opt* %59, i32 0, i32 1
  store i32 -1, i32* %60, align 4
  store i32 0, i32* %7, align 4
  br label %61

61:                                               ; preds = %21, %20
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local %struct.pppox_sock* @pppox_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
