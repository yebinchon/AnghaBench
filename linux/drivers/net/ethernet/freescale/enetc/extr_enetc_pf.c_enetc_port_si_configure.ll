; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_port_si_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_port_si_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_si = type { %struct.TYPE_2__*, %struct.enetc_hw }
%struct.TYPE_2__ = type { i32 }
%struct.enetc_hw = type { i32 }
%struct.enetc_pf = type { i32 }

@ENETC_PCAPR0 = common dso_local global i32 0, align 4
@ENETC_PF_NUM_RINGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Found %d rings, expected %d!\0A\00", align 1
@ENETC_VLAN_TYPE_C = common dso_local global i32 0, align 4
@ENETC_VLAN_TYPE_S = common dso_local global i32 0, align 4
@ENETC_PSICFGR0_VTE = common dso_local global i32 0, align 4
@ENETC_PSICFGR0_SIVIE = common dso_local global i32 0, align 4
@ENETC_PVCLCTR = common dso_local global i32 0, align 4
@ENETC_PSIVLANFMR = common dso_local global i32 0, align 4
@ENETC_PSIVLANFMR_VS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_si*)* @enetc_port_si_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_port_si_configure(%struct.enetc_si* %0) #0 {
  %2 = alloca %struct.enetc_si*, align 8
  %3 = alloca %struct.enetc_pf*, align 8
  %4 = alloca %struct.enetc_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.enetc_si* %0, %struct.enetc_si** %2, align 8
  %8 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %9 = call %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si* %8)
  store %struct.enetc_pf* %9, %struct.enetc_pf** %3, align 8
  %10 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %11 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %10, i32 0, i32 1
  store %struct.enetc_hw* %11, %struct.enetc_hw** %4, align 8
  %12 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %13 = load i32, i32* @ENETC_PCAPR0, align 4
  %14 = call i32 @enetc_port_rd(%struct.enetc_hw* %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @ENETC_PCAPR0_RXBDR(i32 %15)
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @ENETC_PCAPR0_TXBDR(i32 %17)
  %19 = call i32 @min(i32 %16, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @ENETC_PF_NUM_RINGS, align 4
  %21 = call i32 @ENETC_PSICFGR0_SET_TXBDR(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @ENETC_PF_NUM_RINGS, align 4
  %23 = call i32 @ENETC_PSICFGR0_SET_RXBDR(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @ENETC_PF_NUM_RINGS, align 4
  %28 = icmp slt i32 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %1
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ENETC_PSICFGR0_SET_TXBDR(i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ENETC_PSICFGR0_SET_RXBDR(i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.enetc_si*, %struct.enetc_si** %2, align 8
  %40 = getelementptr inbounds %struct.enetc_si, %struct.enetc_si* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @ENETC_PF_NUM_RINGS, align 4
  %45 = call i32 @dev_warn(i32* %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %32, %1
  %47 = load i32, i32* @ENETC_VLAN_TYPE_C, align 4
  %48 = load i32, i32* @ENETC_VLAN_TYPE_S, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @ENETC_PSICFGR0_SIVC(i32 %49)
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  %53 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %54 = call i32 @ENETC_PSICFGR0(i32 0)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @enetc_port_wr(%struct.enetc_hw* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %46
  %60 = load i32, i32* @ENETC_PF_NUM_RINGS, align 4
  %61 = load i32, i32* %5, align 4
  %62 = sub nsw i32 %61, %60
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %59, %46
  %64 = load i32, i32* @ENETC_VLAN_TYPE_C, align 4
  %65 = load i32, i32* @ENETC_VLAN_TYPE_S, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @ENETC_PSICFGR0_SIVC(i32 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @ENETC_PSICFGR0_VTE, align 4
  %69 = load i32, i32* @ENETC_PSICFGR0_SIVIE, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %63
  %76 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %77 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %5, align 4
  %80 = sdiv i32 %79, %78
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @ENETC_PSICFGR0_SET_TXBDR(i32 %81)
  %83 = load i32, i32* %7, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @ENETC_PSICFGR0_SET_RXBDR(i32 %85)
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %75, %63
  store i32 0, i32* %6, align 4
  br label %90

90:                                               ; preds = %103, %89
  %91 = load i32, i32* %6, align 4
  %92 = load %struct.enetc_pf*, %struct.enetc_pf** %3, align 8
  %93 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp slt i32 %91, %94
  br i1 %95, label %96, label %106

96:                                               ; preds = %90
  %97 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %98 = load i32, i32* %6, align 4
  %99 = add nsw i32 %98, 1
  %100 = call i32 @ENETC_PSICFGR0(i32 %99)
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @enetc_port_wr(%struct.enetc_hw* %97, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %6, align 4
  br label %90

106:                                              ; preds = %90
  %107 = load i32, i32* @ENETC_VLAN_TYPE_C, align 4
  %108 = load i32, i32* @ENETC_VLAN_TYPE_S, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @ENETC_PVCLCTR_OVTPIDL(i32 %109)
  store i32 %110, i32* %7, align 4
  %111 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %112 = load i32, i32* @ENETC_PVCLCTR, align 4
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @enetc_port_wr(%struct.enetc_hw* %111, i32 %112, i32 %113)
  %115 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %116 = load i32, i32* @ENETC_PSIVLANFMR, align 4
  %117 = load i32, i32* @ENETC_PSIVLANFMR_VS, align 4
  %118 = call i32 @enetc_port_wr(%struct.enetc_hw* %115, i32 %116, i32 %117)
  ret void
}

declare dso_local %struct.enetc_pf* @enetc_si_priv(%struct.enetc_si*) #1

declare dso_local i32 @enetc_port_rd(%struct.enetc_hw*, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ENETC_PCAPR0_RXBDR(i32) #1

declare dso_local i32 @ENETC_PCAPR0_TXBDR(i32) #1

declare dso_local i32 @ENETC_PSICFGR0_SET_TXBDR(i32) #1

declare dso_local i32 @ENETC_PSICFGR0_SET_RXBDR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i32) #1

declare dso_local i32 @ENETC_PSICFGR0_SIVC(i32) #1

declare dso_local i32 @enetc_port_wr(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @ENETC_PSICFGR0(i32) #1

declare dso_local i32 @ENETC_PVCLCTR_OVTPIDL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
