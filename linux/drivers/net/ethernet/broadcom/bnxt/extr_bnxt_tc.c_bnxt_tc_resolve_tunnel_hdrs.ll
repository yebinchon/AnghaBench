; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_resolve_tunnel_hdrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_resolve_tunnel_hdrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ip_tunnel_key = type { i32, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.bnxt_tc_l2_key = type { i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.ip_tunnel_key*, %struct.bnxt_tc_l2_key*)* @bnxt_tc_resolve_tunnel_hdrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_resolve_tunnel_hdrs(%struct.bnxt* %0, %struct.ip_tunnel_key* %1, %struct.bnxt_tc_l2_key* %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.ip_tunnel_key*, align 8
  %6 = alloca %struct.bnxt_tc_l2_key*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.ip_tunnel_key* %1, %struct.ip_tunnel_key** %5, align 8
  store %struct.bnxt_tc_l2_key* %2, %struct.bnxt_tc_l2_key** %6, align 8
  %7 = load i32, i32* @EOPNOTSUPP, align 4
  %8 = sub nsw i32 0, %7
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
