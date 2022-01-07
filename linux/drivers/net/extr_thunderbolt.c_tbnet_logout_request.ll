; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_logout_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_logout_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet = type { i32, %struct.tb_xdomain* }
%struct.tb_xdomain = type { i32, i32, i32 }
%struct.thunderbolt_ip_logout = type { i32 }
%struct.thunderbolt_ip_status = type { i32 }

@TBIP_LOGOUT = common dso_local global i32 0, align 4
@TB_CFG_PKG_XDOMAIN_RESP = common dso_local global i32 0, align 4
@TBNET_LOGOUT_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tbnet*)* @tbnet_logout_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_logout_request(%struct.tbnet* %0) #0 {
  %2 = alloca %struct.tbnet*, align 8
  %3 = alloca %struct.thunderbolt_ip_logout, align 4
  %4 = alloca %struct.thunderbolt_ip_status, align 4
  %5 = alloca %struct.tb_xdomain*, align 8
  store %struct.tbnet* %0, %struct.tbnet** %2, align 8
  %6 = load %struct.tbnet*, %struct.tbnet** %2, align 8
  %7 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %6, i32 0, i32 1
  %8 = load %struct.tb_xdomain*, %struct.tb_xdomain** %7, align 8
  store %struct.tb_xdomain* %8, %struct.tb_xdomain** %5, align 8
  %9 = call i32 @memset(%struct.thunderbolt_ip_logout* %3, i32 0, i32 4)
  %10 = getelementptr inbounds %struct.thunderbolt_ip_logout, %struct.thunderbolt_ip_logout* %3, i32 0, i32 0
  %11 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %12 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %15 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %18 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TBIP_LOGOUT, align 4
  %21 = load %struct.tbnet*, %struct.tbnet** %2, align 8
  %22 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %21, i32 0, i32 0
  %23 = call i32 @atomic_inc_return(i32* %22)
  %24 = call i32 @tbnet_fill_header(i32* %10, i32 %13, i32 0, i32 %16, i32 %19, i32 %20, i32 4, i32 %23)
  %25 = load %struct.tb_xdomain*, %struct.tb_xdomain** %5, align 8
  %26 = load i32, i32* @TB_CFG_PKG_XDOMAIN_RESP, align 4
  %27 = load i32, i32* @TB_CFG_PKG_XDOMAIN_RESP, align 4
  %28 = load i32, i32* @TBNET_LOGOUT_TIMEOUT, align 4
  %29 = call i32 @tb_xdomain_request(%struct.tb_xdomain* %25, %struct.thunderbolt_ip_logout* %3, i32 4, i32 %26, %struct.thunderbolt_ip_status* %4, i32 4, i32 %27, i32 %28)
  ret i32 %29
}

declare dso_local i32 @memset(%struct.thunderbolt_ip_logout*, i32, i32) #1

declare dso_local i32 @tbnet_fill_header(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @tb_xdomain_request(%struct.tb_xdomain*, %struct.thunderbolt_ip_logout*, i32, i32, %struct.thunderbolt_ip_status*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
