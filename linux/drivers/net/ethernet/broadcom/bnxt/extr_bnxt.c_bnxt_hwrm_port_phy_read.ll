; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_port_phy_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_port_phy_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.TYPE_2__, %struct.hwrm_port_phy_mdio_read_output* }
%struct.TYPE_2__ = type { i32 }
%struct.hwrm_port_phy_mdio_read_output = type { i32 }
%struct.hwrm_port_phy_mdio_read_input = type { i32, i32, i8*, i32, i8*, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HWRM_PORT_PHY_MDIO_READ = common dso_local global i32 0, align 4
@HWRM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32, i32, i32*)* @bnxt_hwrm_port_phy_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_port_phy_read(%struct.bnxt* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bnxt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hwrm_port_phy_mdio_read_output*, align 8
  %11 = alloca %struct.hwrm_port_phy_mdio_read_input, align 8
  %12 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %14 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %13, i32 0, i32 3
  %15 = load %struct.hwrm_port_phy_mdio_read_output*, %struct.hwrm_port_phy_mdio_read_output** %14, align 8
  store %struct.hwrm_port_phy_mdio_read_output* %15, %struct.hwrm_port_phy_mdio_read_output** %10, align 8
  %16 = bitcast %struct.hwrm_port_phy_mdio_read_input* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %16, i8 0, i64 40, i1 false)
  %17 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %18 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 68096
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %74

24:                                               ; preds = %4
  %25 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %26 = load i32, i32* @HWRM_PORT_PHY_MDIO_READ, align 4
  %27 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt* %25, %struct.hwrm_port_phy_mdio_read_input* %11, i32 %26, i32 -1, i32 -1)
  %28 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %29 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = getelementptr inbounds %struct.hwrm_port_phy_mdio_read_input, %struct.hwrm_port_phy_mdio_read_input* %11, i32 0, i32 4
  store i8* %32, i8** %33, align 8
  %34 = load i32, i32* %7, align 4
  %35 = getelementptr inbounds %struct.hwrm_port_phy_mdio_read_input, %struct.hwrm_port_phy_mdio_read_input* %11, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = and i32 %36, 31
  %38 = call i8* @cpu_to_le16(i32 %37)
  %39 = getelementptr inbounds %struct.hwrm_port_phy_mdio_read_input, %struct.hwrm_port_phy_mdio_read_input* %11, i32 0, i32 2
  store i8* %38, i8** %39, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i64 @mdio_phy_id_is_c45(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.hwrm_port_phy_mdio_read_input, %struct.hwrm_port_phy_mdio_read_input* %11, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @mdio_phy_id_prtad(i32 %45)
  %47 = getelementptr inbounds %struct.hwrm_port_phy_mdio_read_input, %struct.hwrm_port_phy_mdio_read_input* %11, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @mdio_phy_id_devad(i32 %48)
  %50 = getelementptr inbounds %struct.hwrm_port_phy_mdio_read_input, %struct.hwrm_port_phy_mdio_read_input* %11, i32 0, i32 3
  store i32 %49, i32* %50, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = getelementptr inbounds %struct.hwrm_port_phy_mdio_read_input, %struct.hwrm_port_phy_mdio_read_input* %11, i32 0, i32 2
  store i8* %52, i8** %53, align 8
  br label %54

54:                                               ; preds = %43, %24
  %55 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %56 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %55, i32 0, i32 1
  %57 = call i32 @mutex_lock(i32* %56)
  %58 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %59 = load i32, i32* @HWRM_CMD_TIMEOUT, align 4
  %60 = call i32 @_hwrm_send_message(%struct.bnxt* %58, %struct.hwrm_port_phy_mdio_read_input* %11, i32 40, i32 %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %54
  %64 = load %struct.hwrm_port_phy_mdio_read_output*, %struct.hwrm_port_phy_mdio_read_output** %10, align 8
  %65 = getelementptr inbounds %struct.hwrm_port_phy_mdio_read_output, %struct.hwrm_port_phy_mdio_read_output* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le16_to_cpu(i32 %66)
  %68 = load i32*, i32** %9, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %63, %54
  %70 = load %struct.bnxt*, %struct.bnxt** %6, align 8
  %71 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %70, i32 0, i32 1
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %12, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %69, %21
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt*, %struct.hwrm_port_phy_mdio_read_input*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i64 @mdio_phy_id_is_c45(i32) #2

declare dso_local i32 @mdio_phy_id_prtad(i32) #2

declare dso_local i32 @mdio_phy_id_devad(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt*, %struct.hwrm_port_phy_mdio_read_input*, i32, i32) #2

declare dso_local i32 @le16_to_cpu(i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
