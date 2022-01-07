; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_basic_ip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar_ethtool.c_gfar_set_basic_ip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ethtool_tcpip4_spec = type { i32, i32, i32, i32, i32 }
%struct.filer_table = type { i32 }

@RQFCR_PID_SIA = common dso_local global i32 0, align 4
@RQFCR_PID_DIA = common dso_local global i32 0, align 4
@RQFCR_PID_DPT = common dso_local global i32 0, align 4
@RQFCR_PID_SPT = common dso_local global i32 0, align 4
@RQFCR_PID_TOS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec*, %struct.filer_table*)* @gfar_set_basic_ip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gfar_set_basic_ip(%struct.ethtool_tcpip4_spec* %0, %struct.ethtool_tcpip4_spec* %1, %struct.filer_table* %2) #0 {
  %4 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %5 = alloca %struct.ethtool_tcpip4_spec*, align 8
  %6 = alloca %struct.filer_table*, align 8
  store %struct.ethtool_tcpip4_spec* %0, %struct.ethtool_tcpip4_spec** %4, align 8
  store %struct.ethtool_tcpip4_spec* %1, %struct.ethtool_tcpip4_spec** %5, align 8
  store %struct.filer_table* %2, %struct.filer_table** %6, align 8
  %7 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %4, align 8
  %8 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @be32_to_cpu(i32 %9)
  %11 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @be32_to_cpu(i32 %13)
  %15 = load i32, i32* @RQFCR_PID_SIA, align 4
  %16 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %17 = call i32 @gfar_set_attribute(i32 %10, i32 %14, i32 %15, %struct.filer_table* %16)
  %18 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @be32_to_cpu(i32 %20)
  %22 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %23 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @be32_to_cpu(i32 %24)
  %26 = load i32, i32* @RQFCR_PID_DIA, align 4
  %27 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %28 = call i32 @gfar_set_attribute(i32 %21, i32 %25, i32 %26, %struct.filer_table* %27)
  %29 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be16_to_cpu(i32 %31)
  %33 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be16_to_cpu(i32 %35)
  %37 = load i32, i32* @RQFCR_PID_DPT, align 4
  %38 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %39 = call i32 @gfar_set_attribute(i32 %32, i32 %36, i32 %37, %struct.filer_table* %38)
  %40 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be16_to_cpu(i32 %42)
  %44 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %45 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @be16_to_cpu(i32 %46)
  %48 = load i32, i32* @RQFCR_PID_SPT, align 4
  %49 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %50 = call i32 @gfar_set_attribute(i32 %43, i32 %47, i32 %48, %struct.filer_table* %49)
  %51 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ethtool_tcpip4_spec*, %struct.ethtool_tcpip4_spec** %5, align 8
  %55 = getelementptr inbounds %struct.ethtool_tcpip4_spec, %struct.ethtool_tcpip4_spec* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @RQFCR_PID_TOS, align 4
  %58 = load %struct.filer_table*, %struct.filer_table** %6, align 8
  %59 = call i32 @gfar_set_attribute(i32 %53, i32 %56, i32 %57, %struct.filer_table* %58)
  ret void
}

declare dso_local i32 @gfar_set_attribute(i32, i32, i32, %struct.filer_table*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
