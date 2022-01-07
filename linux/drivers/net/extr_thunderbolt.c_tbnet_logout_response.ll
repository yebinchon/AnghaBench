; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_logout_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_thunderbolt.c_tbnet_logout_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tbnet = type { i32, %struct.tb_xdomain* }
%struct.tb_xdomain = type { i32, i32 }
%struct.thunderbolt_ip_status = type { i32 }

@TBIP_STATUS = common dso_local global i32 0, align 4
@TB_CFG_PKG_XDOMAIN_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tbnet*, i32, i32, i32)* @tbnet_logout_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tbnet_logout_response(%struct.tbnet* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.tbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thunderbolt_ip_status, align 4
  %10 = alloca %struct.tb_xdomain*, align 8
  store %struct.tbnet* %0, %struct.tbnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %12 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %11, i32 0, i32 1
  %13 = load %struct.tb_xdomain*, %struct.tb_xdomain** %12, align 8
  store %struct.tb_xdomain* %13, %struct.tb_xdomain** %10, align 8
  %14 = call i32 @memset(%struct.thunderbolt_ip_status* %9, i32 0, i32 4)
  %15 = getelementptr inbounds %struct.thunderbolt_ip_status, %struct.thunderbolt_ip_status* %9, i32 0, i32 0
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.tb_xdomain*, %struct.tb_xdomain** %10, align 8
  %19 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tb_xdomain*, %struct.tb_xdomain** %10, align 8
  %22 = getelementptr inbounds %struct.tb_xdomain, %struct.tb_xdomain* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TBIP_STATUS, align 4
  %25 = load %struct.tbnet*, %struct.tbnet** %5, align 8
  %26 = getelementptr inbounds %struct.tbnet, %struct.tbnet* %25, i32 0, i32 0
  %27 = call i32 @atomic_inc_return(i32* %26)
  %28 = call i32 @tbnet_fill_header(i32* %15, i32 %16, i32 %17, i32 %20, i32 %23, i32 %24, i32 4, i32 %27)
  %29 = load %struct.tb_xdomain*, %struct.tb_xdomain** %10, align 8
  %30 = load i32, i32* @TB_CFG_PKG_XDOMAIN_RESP, align 4
  %31 = call i32 @tb_xdomain_response(%struct.tb_xdomain* %29, %struct.thunderbolt_ip_status* %9, i32 4, i32 %30)
  ret i32 %31
}

declare dso_local i32 @memset(%struct.thunderbolt_ip_status*, i32, i32) #1

declare dso_local i32 @tbnet_fill_header(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @tb_xdomain_response(%struct.tb_xdomain*, %struct.thunderbolt_ip_status*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
