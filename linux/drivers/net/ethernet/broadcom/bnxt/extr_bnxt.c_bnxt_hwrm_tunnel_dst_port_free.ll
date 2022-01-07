; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_tunnel_dst_port_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_tunnel_dst_port_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32 }
%struct.hwrm_tunnel_dst_port_free_input = type { i32, i32, i32 }

@HWRM_TUNNEL_DST_PORT_FREE = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"hwrm_tunnel_dst_port_free failed. rc:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @bnxt_hwrm_tunnel_dst_port_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_tunnel_dst_port_free(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hwrm_tunnel_dst_port_free_input, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = bitcast %struct.hwrm_tunnel_dst_port_free_input* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %9 = load i32, i32* @HWRM_TUNNEL_DST_PORT_FREE, align 4
  %10 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %8, %struct.hwrm_tunnel_dst_port_free_input* %6, i32 %9, i32 -1, i32 -1)
  %11 = load i32, i32* %4, align 4
  %12 = getelementptr inbounds %struct.hwrm_tunnel_dst_port_free_input, %struct.hwrm_tunnel_dst_port_free_input* %6, i32 0, i32 0
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %24 [
    i32 128, label %14
    i32 129, label %19
  ]

14:                                               ; preds = %2
  %15 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %16 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.hwrm_tunnel_dst_port_free_input, %struct.hwrm_tunnel_dst_port_free_input* %6, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  br label %25

19:                                               ; preds = %2
  %20 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %21 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.hwrm_tunnel_dst_port_free_input, %struct.hwrm_tunnel_dst_port_free_input* %6, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  br label %25

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %24, %19, %14
  %26 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %27 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %28 = call i32 @hwrm_send_message(%struct.bnxt* %26, %struct.hwrm_tunnel_dst_port_free_input* %6, i32 12, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %33 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @netdev_err(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_tunnel_dst_port_free_input*, i32, i32, i32) #2

declare dso_local i32 @hwrm_send_message(%struct.bnxt*, %struct.hwrm_tunnel_dst_port_free_input*, i32, i32) #2

declare dso_local i32 @netdev_err(i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
