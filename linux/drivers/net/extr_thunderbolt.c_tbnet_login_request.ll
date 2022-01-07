; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_login_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_login_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet = type { i32, %struct.tb_xdomain* }
%struct.tb_xdomain = type { i32, i32, i32 }
%struct.thunderbolt_ip_login_response = type { i32 }
%struct.thunderbolt_ip_login = type { i32, i32, i32 }

@TBIP_LOGIN = common dso_local global i32 0, align 4
@TBIP_LOGIN_PROTO_VERSION = common dso_local global i32 0, align 4
@TBNET_LOCAL_PATH = common dso_local global i32 0, align 4
@TB_CFG_PKG_XDOMAIN_RESP = common dso_local global i32 0, align 4
@TBNET_LOGIN_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tbnet*, i32)* @tbnet_login_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_login_request(%struct.tbnet* %0, i32 %1) #0 {
  %3 = alloca %struct.tbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.thunderbolt_ip_login_response, align 4
  %6 = alloca %struct.thunderbolt_ip_login, align 4
  %7 = alloca %struct.tb_xdomain*, align 8
  store %struct.tbnet* %0, %struct.tbnet** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %9 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %8, i32 0, i32 1
  %10 = load %struct.tb_xdomain*, %struct.tb_xdomain** %9, align 8
  store %struct.tb_xdomain* %10, %struct.tb_xdomain** %7, align 8
  %11 = call i32 @memset(%struct.thunderbolt_ip_login* %6, i32 0, i32 12)
  %12 = getelementptr inbounds %struct.thunderbolt_ip_login, %struct.thunderbolt_ip_login* %6, i32 0, i32 2
  %13 = load %struct.tb_xdomain*, %struct.tb_xdomain** %7, align 8
  %14 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.tb_xdomain*, %struct.tb_xdomain** %7, align 8
  %18 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.tb_xdomain*, %struct.tb_xdomain** %7, align 8
  %21 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TBIP_LOGIN, align 4
  %24 = load %struct.tbnet*, %struct.tbnet** %3, align 8
  %25 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %24, i32 0, i32 0
  %26 = call i32 @atomic_inc_return(i32* %25)
  %27 = call i32 @tbnet_fill_header(i32* %12, i32 %15, i32 %16, i32 %19, i32 %22, i32 %23, i32 12, i32 %26)
  %28 = load i32, i32* @TBIP_LOGIN_PROTO_VERSION, align 4
  %29 = getelementptr inbounds %struct.thunderbolt_ip_login, %struct.thunderbolt_ip_login* %6, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @TBNET_LOCAL_PATH, align 4
  %31 = getelementptr inbounds %struct.thunderbolt_ip_login, %struct.thunderbolt_ip_login* %6, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.tb_xdomain*, %struct.tb_xdomain** %7, align 8
  %33 = load i32, i32* @TB_CFG_PKG_XDOMAIN_RESP, align 4
  %34 = load i32, i32* @TB_CFG_PKG_XDOMAIN_RESP, align 4
  %35 = load i32, i32* @TBNET_LOGIN_TIMEOUT, align 4
  %36 = call i32 @tb_xdomain_request(%struct.tb_xdomain* %32, %struct.thunderbolt_ip_login* %6, i32 12, i32 %33, %struct.thunderbolt_ip_login_response* %5, i32 4, i32 %34, i32 %35)
  ret i32 %36
}

declare dso_local i32 @memset(%struct.thunderbolt_ip_login*, i32, i32) #1

declare dso_local i32 @tbnet_fill_header(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @tb_xdomain_request(%struct.tb_xdomain*, %struct.thunderbolt_ip_login*, i32, i32, %struct.thunderbolt_ip_login_response*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
