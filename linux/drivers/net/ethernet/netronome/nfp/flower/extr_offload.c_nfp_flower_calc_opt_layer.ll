; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_calc_opt_layer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_flower_calc_opt_layer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_dissector_key_enc_opts = type { i64 }
%struct.netlink_ext_ack = type { i32 }

@NFP_FL_MAX_GENEVE_OPT_KEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [58 x i8] c"unsupported offload: geneve options exceed maximum length\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@NFP_FLOWER_LAYER2_GENEVE_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flow_dissector_key_enc_opts*, i32*, i32*, %struct.netlink_ext_ack*)* @nfp_flower_calc_opt_layer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_calc_opt_layer(%struct.flow_dissector_key_enc_opts* %0, i32* %1, i32* %2, %struct.netlink_ext_ack* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.flow_dissector_key_enc_opts*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.flow_dissector_key_enc_opts* %0, %struct.flow_dissector_key_enc_opts** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.netlink_ext_ack* %3, %struct.netlink_ext_ack** %9, align 8
  %10 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %6, align 8
  %11 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, %struct.flow_dissector_key_enc_opts* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @NFP_FL_MAX_GENEVE_OPT_KEY, align 8
  %14 = icmp sgt i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %4
  %16 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %9, align 8
  %17 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %16, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %4
  %21 = load %struct.flow_dissector_key_enc_opts*, %struct.flow_dissector_key_enc_opts** %6, align 8
  %22 = getelementptr inbounds %struct.flow_dissector_key_enc_opts, %struct.flow_dissector_key_enc_opts* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32, i32* @NFP_FLOWER_LAYER2_GENEVE_OP, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %26
  store i32 %29, i32* %27, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %30, align 4
  br label %35

35:                                               ; preds = %25, %20
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %15
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
