; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_ipv4_gre_tun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_ipv4_gre_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_ipv4_gre_tun = type { i32, i32, i8*, i32, i8* }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_enc_keyid = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ETH_P_TEB = common dso_local global i32 0, align 4
@FLOW_DISSECTOR_KEY_ENC_KEYID = common dso_local global i32 0, align 4
@NFP_FL_GRE_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun*, %struct.flow_cls_offload*)* @nfp_flower_compile_ipv4_gre_tun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_compile_ipv4_gre_tun(%struct.nfp_flower_ipv4_gre_tun* %0, %struct.nfp_flower_ipv4_gre_tun* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca %struct.nfp_flower_ipv4_gre_tun*, align 8
  %5 = alloca %struct.nfp_flower_ipv4_gre_tun*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.flow_rule*, align 8
  %8 = alloca %struct.flow_match_enc_keyid, align 8
  store %struct.nfp_flower_ipv4_gre_tun* %0, %struct.nfp_flower_ipv4_gre_tun** %4, align 8
  store %struct.nfp_flower_ipv4_gre_tun* %1, %struct.nfp_flower_ipv4_gre_tun** %5, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %6, align 8
  %9 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %10 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %9)
  store %struct.flow_rule* %10, %struct.flow_rule** %7, align 8
  %11 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %4, align 8
  %12 = call i32 @memset(%struct.nfp_flower_ipv4_gre_tun* %11, i32 0, i32 32)
  %13 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %5, align 8
  %14 = call i32 @memset(%struct.nfp_flower_ipv4_gre_tun* %13, i32 0, i32 32)
  %15 = load i32, i32* @ETH_P_TEB, align 4
  %16 = call i8* @cpu_to_be16(i32 %15)
  %17 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %4, align 8
  %18 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = call i8* @cpu_to_be16(i32 -1)
  %20 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %5, align 8
  %21 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %23 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_KEYID, align 4
  %24 = call i64 @flow_rule_match_key(%struct.flow_rule* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %3
  %27 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %28 = call i32 @flow_rule_match_enc_keyid(%struct.flow_rule* %27, %struct.flow_match_enc_keyid* %8)
  %29 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %8, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %4, align 8
  %34 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = getelementptr inbounds %struct.flow_match_enc_keyid, %struct.flow_match_enc_keyid* %8, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %5, align 8
  %40 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %39, i32 0, i32 3
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* @NFP_FL_GRE_FLAG_KEY, align 4
  %42 = call i8* @cpu_to_be16(i32 %41)
  %43 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %4, align 8
  %44 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %43, i32 0, i32 2
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* @NFP_FL_GRE_FLAG_KEY, align 4
  %46 = call i8* @cpu_to_be16(i32 %45)
  %47 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %5, align 8
  %48 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  br label %49

49:                                               ; preds = %26, %3
  %50 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %4, align 8
  %51 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %50, i32 0, i32 1
  %52 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %5, align 8
  %53 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %52, i32 0, i32 1
  %54 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %55 = call i32 @nfp_flower_compile_tun_ipv4_addrs(i32* %51, i32* %53, %struct.flow_cls_offload* %54)
  %56 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %4, align 8
  %57 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %56, i32 0, i32 0
  %58 = load %struct.nfp_flower_ipv4_gre_tun*, %struct.nfp_flower_ipv4_gre_tun** %5, align 8
  %59 = getelementptr inbounds %struct.nfp_flower_ipv4_gre_tun, %struct.nfp_flower_ipv4_gre_tun* %58, i32 0, i32 0
  %60 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %61 = call i32 @nfp_flower_compile_tun_ip_ext(i32* %57, i32* %59, %struct.flow_cls_offload* %60)
  ret void
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i32 @memset(%struct.nfp_flower_ipv4_gre_tun*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_enc_keyid(%struct.flow_rule*, %struct.flow_match_enc_keyid*) #1

declare dso_local i32 @nfp_flower_compile_tun_ipv4_addrs(i32*, i32*, %struct.flow_cls_offload*) #1

declare dso_local i32 @nfp_flower_compile_tun_ip_ext(i32*, i32*, %struct.flow_cls_offload*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
