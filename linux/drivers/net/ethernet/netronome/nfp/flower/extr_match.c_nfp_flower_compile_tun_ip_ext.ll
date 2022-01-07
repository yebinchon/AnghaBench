; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_tun_ip_ext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_match.c_nfp_flower_compile_tun_ip_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_flower_tun_ip_ext = type { i32, i32 }
%struct.flow_cls_offload = type { i32 }
%struct.flow_rule = type { i32 }
%struct.flow_match_ip = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@FLOW_DISSECTOR_KEY_ENC_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfp_flower_tun_ip_ext*, %struct.nfp_flower_tun_ip_ext*, %struct.flow_cls_offload*)* @nfp_flower_compile_tun_ip_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfp_flower_compile_tun_ip_ext(%struct.nfp_flower_tun_ip_ext* %0, %struct.nfp_flower_tun_ip_ext* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca %struct.nfp_flower_tun_ip_ext*, align 8
  %5 = alloca %struct.nfp_flower_tun_ip_ext*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.flow_rule*, align 8
  %8 = alloca %struct.flow_match_ip, align 8
  store %struct.nfp_flower_tun_ip_ext* %0, %struct.nfp_flower_tun_ip_ext** %4, align 8
  store %struct.nfp_flower_tun_ip_ext* %1, %struct.nfp_flower_tun_ip_ext** %5, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %6, align 8
  %9 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %10 = call %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload* %9)
  store %struct.flow_rule* %10, %struct.flow_rule** %7, align 8
  %11 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %12 = load i32, i32* @FLOW_DISSECTOR_KEY_ENC_IP, align 4
  %13 = call i64 @flow_rule_match_key(%struct.flow_rule* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %42

15:                                               ; preds = %3
  %16 = load %struct.flow_rule*, %struct.flow_rule** %7, align 8
  %17 = call i32 @flow_rule_match_enc_ip(%struct.flow_rule* %16, %struct.flow_match_ip* %8)
  %18 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %8, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.nfp_flower_tun_ip_ext*, %struct.nfp_flower_tun_ip_ext** %4, align 8
  %23 = getelementptr inbounds %struct.nfp_flower_tun_ip_ext, %struct.nfp_flower_tun_ip_ext* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %8, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfp_flower_tun_ip_ext*, %struct.nfp_flower_tun_ip_ext** %4, align 8
  %29 = getelementptr inbounds %struct.nfp_flower_tun_ip_ext, %struct.nfp_flower_tun_ip_ext* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %8, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.nfp_flower_tun_ip_ext*, %struct.nfp_flower_tun_ip_ext** %5, align 8
  %35 = getelementptr inbounds %struct.nfp_flower_tun_ip_ext, %struct.nfp_flower_tun_ip_ext* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = getelementptr inbounds %struct.flow_match_ip, %struct.flow_match_ip* %8, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfp_flower_tun_ip_ext*, %struct.nfp_flower_tun_ip_ext** %5, align 8
  %41 = getelementptr inbounds %struct.nfp_flower_tun_ip_ext, %struct.nfp_flower_tun_ip_ext* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %15, %3
  ret void
}

declare dso_local %struct.flow_rule* @flow_cls_offload_flow_rule(%struct.flow_cls_offload*) #1

declare dso_local i64 @flow_rule_match_key(%struct.flow_rule*, i32) #1

declare dso_local i32 @flow_rule_match_enc_ip(%struct.flow_rule*, %struct.flow_match_ip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
