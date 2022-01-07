; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_flower_xmit_tun_conf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_tunnel_conf.c_nfp_flower_xmit_tun_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { i32 }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32, i32, i8*, i32)* @nfp_flower_xmit_tun_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_xmit_tun_conf(%struct.nfp_app* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_app*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca i8*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %11, align 4
  %18 = call %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.nfp_app* %14, i32 %15, i32 %16, i32 %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %12, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %37

24:                                               ; preds = %5
  %25 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %26 = call i8* @nfp_flower_cmsg_get_data(%struct.sk_buff* %25)
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %30 = call i32 @nfp_flower_cmsg_get_data_len(%struct.sk_buff* %29)
  %31 = call i32 @memcpy(i8* %27, i8* %28, i32 %30)
  %32 = load %struct.nfp_app*, %struct.nfp_app** %7, align 8
  %33 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %36 = call i32 @nfp_ctrl_tx(i32 %34, %struct.sk_buff* %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %24, %21
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.sk_buff* @nfp_flower_cmsg_alloc(%struct.nfp_app*, i32, i32, i32) #1

declare dso_local i8* @nfp_flower_cmsg_get_data(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @nfp_flower_cmsg_get_data_len(%struct.sk_buff*) #1

declare dso_local i32 @nfp_ctrl_tx(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
