; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_ipv4_udp_tun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_ipv4_udp_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_ipv4_udp_tun = type { i32, i32, i8* }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_enc_keyid = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@NFP_FL_TUN_VNI_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun*, %struct.flow_cls_offload*)* @nfp_flower_compile_ipv4_udp_tun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_compile_ipv4_udp_tun(%struct.nfp_flower_ipv4_udp_tun* %0, %struct.nfp_flower_ipv4_udp_tun* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca %struct.nfp_flower_ipv4_udp_tun*, align 8
  %5 = alloca %struct.nfp_flower_ipv4_udp_tun*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.flow_rule*, align 8
  %8 = alloca %struct.flow_match_enc_keyid, align 8
  %9 = alloca i32, align 4
  store %struct.nfp_flower_ipv4_udp_tun* %0, %struct.nfp_flower_ipv4_udp_tun** %4, align 8
  store %struct.nfp_flower_ipv4_udp_tun* %1, %struct.nfp_flower_ipv4_udp_tun** %5, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %6, align 8
  %10 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %11 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %10)
  store %struct.flow_rule* %11, %struct.flow_rule** %7, align 8
  %12 = load %struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun** %4, align 8
  %13 = call i32 @memset(%struct.nfp_flower_ipv4_udp_tun* %12, i32 0, i32 16)
  %14 = load %struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun** %5, align 8
  %15 = call i32 @memset(%struct.nfp_flower_ipv4_udp_tun* %14, i32 0, i32 16)
  %16 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %17 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %18 = call i64 @flow_rule_match_key(%struct.flow_rule* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %3
  %21 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %22 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %21, %struct.flow_match_enc_keyid* %8)
  %23 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %8, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @be32_to_cpu(i32 %26)
  %28 = load i32, i32* @NFP_FL_TUN_VNI_OFFSET, align 4
  %29 = shl i32 %27, %28
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun** %4, align 8
  %33 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, %struct.nfp_flower_ipv4_udp_tun* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %8, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @be32_to_cpu(i32 %37)
  %39 = load i32, i32* @NFP_FL_TUN_VNI_OFFSET, align 4
  %40 = shl i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = load %struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun** %5, align 8
  %44 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, %struct.nfp_flower_ipv4_udp_tun* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  br label %45

45:                                               ; preds = %20, %3
  %46 = load %struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun** %4, align 8
  %47 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, %struct.nfp_flower_ipv4_udp_tun* %46, i32 0, i32 1
  %48 = load %struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun** %5, align 8
  %49 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, %struct.nfp_flower_ipv4_udp_tun* %48, i32 0, i32 1
  %50 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %51 = call i32 @nfp_flower_compile_tun_ipv4_addrs(i32* %47, i32* %49, %struct.flow_cls_offload* %50)
  %52 = load %struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun** %4, align 8
  %53 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, %struct.nfp_flower_ipv4_udp_tun* %52, i32 0, i32 0
  %54 = load %struct.nfp_flower_ipv4_udp_tun*, %struct.nfp_flower_ipv4_udp_tun** %5, align 8
  %55 = getelementptr inbounds %struct.nfp_flower_ipv4_udp_tun, %struct.nfp_flower_ipv4_udp_tun* %54, i32 0, i32 0
  %56 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %57 = call i32 @nfp_flower_compile_tun_ip_ext(i32* %53, i32* %55, %struct.flow_cls_offload* %56)
  ret void
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @memset(%struct.nfp_flower_ipv4_udp_tun*, i32, i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_enc_keyid(%struct.flow_rule*, %struct.flow_match_enc_keyid*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @nfp_flower_compile_tun_ipv4_addrs(i32*, i32*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_compile_tun_ip_ext(i32*, i32*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
