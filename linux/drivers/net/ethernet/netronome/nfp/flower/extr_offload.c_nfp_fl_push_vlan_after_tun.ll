; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_fl_push_vlan_after_tun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_offload.c_nfp_fl_push_vlan_after_tun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_fl_push_vlan = type { i32, i32 }
%struct.nfp_fl_set_ipv4_tun = type { i32, i32 }
%struct.nfp_fl_act_head = type { i64, i32 }

@NFP_FL_ACTION_OPCODE_SET_IPV4_TUNNEL = common dso_local global i64 0, align 8
@NFP_FL_LW_SIZ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.nfp_fl_push_vlan*)* @nfp_fl_push_vlan_after_tun to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_fl_push_vlan_after_tun(i8* %0, i32 %1, %struct.nfp_fl_push_vlan* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfp_fl_push_vlan*, align 8
  %8 = alloca %struct.nfp_fl_set_ipv4_tun*, align 8
  %9 = alloca %struct.nfp_fl_act_head*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfp_fl_push_vlan* %2, %struct.nfp_fl_push_vlan** %7, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %39, %3
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %47

15:                                               ; preds = %11
  %16 = load i8*, i8** %5, align 8
  %17 = load i32, i32* %10, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, i8* %16, i64 %18
  %20 = bitcast i8* %19 to %struct.nfp_fl_act_head*
  store %struct.nfp_fl_act_head* %20, %struct.nfp_fl_act_head** %9, align 8
  %21 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %9, align 8
  %22 = getelementptr inbounds %struct.nfp_fl_act_head, %struct.nfp_fl_act_head* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NFP_FL_ACTION_OPCODE_SET_IPV4_TUNNEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %39

26:                                               ; preds = %15
  %27 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %9, align 8
  %28 = bitcast %struct.nfp_fl_act_head* %27 to %struct.nfp_fl_set_ipv4_tun*
  store %struct.nfp_fl_set_ipv4_tun* %28, %struct.nfp_fl_set_ipv4_tun** %8, align 8
  %29 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %7, align 8
  %30 = getelementptr inbounds %struct.nfp_fl_push_vlan, %struct.nfp_fl_push_vlan* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %8, align 8
  %33 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.nfp_fl_push_vlan*, %struct.nfp_fl_push_vlan** %7, align 8
  %35 = getelementptr inbounds %struct.nfp_fl_push_vlan, %struct.nfp_fl_push_vlan* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfp_fl_set_ipv4_tun*, %struct.nfp_fl_set_ipv4_tun** %8, align 8
  %38 = getelementptr inbounds %struct.nfp_fl_set_ipv4_tun, %struct.nfp_fl_set_ipv4_tun* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  store i32 0, i32* %4, align 4
  br label %50

39:                                               ; preds = %15
  %40 = load %struct.nfp_fl_act_head*, %struct.nfp_fl_act_head** %9, align 8
  %41 = getelementptr inbounds %struct.nfp_fl_act_head, %struct.nfp_fl_act_head* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NFP_FL_LW_SIZ, align 4
  %44 = shl i32 %42, %43
  %45 = load i32, i32* %10, align 4
  %46 = add i32 %45, %44
  store i32 %46, i32* %10, align 4
  br label %11

47:                                               ; preds = %11
  %48 = load i32, i32* @EOPNOTSUPP, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47, %26
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
