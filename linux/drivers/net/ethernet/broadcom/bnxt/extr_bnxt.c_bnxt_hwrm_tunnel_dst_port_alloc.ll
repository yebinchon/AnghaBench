; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_tunnel_dst_port_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_tunnel_dst_port_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32, %struct.hwrm_tunnel_dst_port_alloc_output* }
%struct.hwrm_tunnel_dst_port_alloc_output = type { i32 }
%struct.hwrm_tunnel_dst_port_alloc_input = type { i32, i32, i32 }

@HWRM_TUNNEL_DST_PORT_ALLOC = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"hwrm_tunnel_dst_port_alloc failed. rc:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, i32)* @bnxt_hwrm_tunnel_dst_port_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_tunnel_dst_port_alloc(%struct.bnxt* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.hwrm_tunnel_dst_port_alloc_input, align 4
  %9 = alloca %struct.hwrm_tunnel_dst_port_alloc_output*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = bitcast %struct.hwrm_tunnel_dst_port_alloc_input* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 12, i1 false)
  %11 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %12 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %11, i32 0, i32 4
  %13 = load %struct.hwrm_tunnel_dst_port_alloc_output*, %struct.hwrm_tunnel_dst_port_alloc_output** %12, align 8
  store %struct.hwrm_tunnel_dst_port_alloc_output* %13, %struct.hwrm_tunnel_dst_port_alloc_output** %9, align 8
  %14 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %15 = load i32, i32* @HWRM_TUNNEL_DST_PORT_ALLOC, align 4
  %16 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %14, %struct.hwrm_tunnel_dst_port_alloc_input* %8, i32 %15, i32 -1, i32 -1)
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.hwrm_tunnel_dst_port_alloc_input, %struct.hwrm_tunnel_dst_port_alloc_input* %8, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %5, align 4
  %20 = getelementptr inbounds %struct.hwrm_tunnel_dst_port_alloc_input, %struct.hwrm_tunnel_dst_port_alloc_input* %8, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %22 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %25 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %26 = call i32 @_hwrm_send_message(%struct.bnxt* %24, %struct.hwrm_tunnel_dst_port_alloc_input* %8, i32 12, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %31 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @netdev_err(i32 %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %51

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %49 [
    i32 128, label %37
    i32 129, label %43
  ]

37:                                               ; preds = %35
  %38 = load %struct.hwrm_tunnel_dst_port_alloc_output*, %struct.hwrm_tunnel_dst_port_alloc_output** %9, align 8
  %39 = getelementptr inbounds %struct.hwrm_tunnel_dst_port_alloc_output, %struct.hwrm_tunnel_dst_port_alloc_output* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %42 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  br label %50

43:                                               ; preds = %35
  %44 = load %struct.hwrm_tunnel_dst_port_alloc_output*, %struct.hwrm_tunnel_dst_port_alloc_output** %9, align 8
  %45 = getelementptr inbounds %struct.hwrm_tunnel_dst_port_alloc_output, %struct.hwrm_tunnel_dst_port_alloc_output* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %50

49:                                               ; preds = %35
  br label %50

50:                                               ; preds = %49, %43, %37
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %53 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %52, i32 0, i32 0
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_tunnel_dst_port_alloc_input*, i32, i32, i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_tunnel_dst_port_alloc_input*, i32, i32) #2

declare dso_local i32 @netdev_err(i32, i8*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
