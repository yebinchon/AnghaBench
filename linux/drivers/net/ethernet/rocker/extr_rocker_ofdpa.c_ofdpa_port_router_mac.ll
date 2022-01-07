; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_router_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/rocker/extr_rocker_ofdpa.c_ofdpa_port_router_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ofdpa_port = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ff_mac = common dso_local global i32* null, align 8
@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ofdpa_port*, i32, i32)* @ofdpa_port_router_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ofdpa_port_router_mac(%struct.ofdpa_port* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ofdpa_port*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ofdpa_port* %0, %struct.ofdpa_port** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %14 = load i32*, i32** @ff_mac, align 8
  store i32* %14, i32** %10, align 8
  %15 = call i32 @htons(i32 65535)
  store i32 %15, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @ntohs(i32 %16)
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %21 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %19, %3
  %24 = load i32, i32* @ETH_P_IP, align 4
  %25 = call i32 @htons(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %27 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %28 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %33 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @ofdpa_flow_tbl_term_mac(%struct.ofdpa_port* %26, i32 %29, i32 %30, i32 %31, i32 %36, i32* %37, i32 %38, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %23
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %4, align 4
  br label %68

47:                                               ; preds = %23
  %48 = load i32, i32* @ETH_P_IPV6, align 4
  %49 = call i32 @htons(i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %51 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %52 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ofdpa_port*, %struct.ofdpa_port** %5, align 8
  %57 = getelementptr inbounds %struct.ofdpa_port, %struct.ofdpa_port* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @ofdpa_flow_tbl_term_mac(%struct.ofdpa_port* %50, i32 %53, i32 %54, i32 %55, i32 %60, i32* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %4, align 4
  br label %68

68:                                               ; preds = %47, %45
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @ofdpa_flow_tbl_term_mac(%struct.ofdpa_port*, i32, i32, i32, i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
