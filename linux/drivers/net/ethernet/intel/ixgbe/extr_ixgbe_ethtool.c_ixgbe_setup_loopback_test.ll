; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_setup_loopback_test.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_setup_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_HLREG0 = common dso_local global i32 0, align 4
@IXGBE_HLREG0_LPBK = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_BAM = common dso_local global i32 0, align 4
@IXGBE_FCTRL_SBP = common dso_local global i32 0, align 4
@IXGBE_FCTRL_MPE = common dso_local global i32 0, align 4
@IXGBE_MACC = common dso_local global i32 0, align 4
@IXGBE_MACC_FLU = common dso_local global i32 0, align 4
@IXGBE_AUTOC_FLU = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_ATLAS_PDN_LPBK = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_REG_EN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_10G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_10G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_1G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_1G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_AN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_AN_QL_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_setup_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_loopback_test(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 0
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %4, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = load i32, i32* @IXGBE_HLREG0, align 4
  %11 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @IXGBE_HLREG0_LPBK, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = load i32, i32* @IXGBE_HLREG0, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %15, i32 %16, i32 %17)
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %20 = load i32, i32* @IXGBE_FCTRL, align 4
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @IXGBE_FCTRL_BAM, align 4
  %23 = load i32, i32* @IXGBE_FCTRL_SBP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = load i32, i32* @IXGBE_FCTRL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %29, i32 %30, i32 %31)
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  switch i32 %37, label %49 [
    i32 131, label %38
    i32 130, label %38
    i32 129, label %38
    i32 128, label %38
  ]

38:                                               ; preds = %1, %1, %1, %1
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %40 = load i32, i32* @IXGBE_MACC, align 4
  %41 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* @IXGBE_MACC_FLU, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %46 = load i32, i32* @IXGBE_MACC, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %45, i32 %46, i32 %47)
  br label %68

49:                                               ; preds = %1
  %50 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %51 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %57 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IXGBE_AUTOC_FLU, align 4
  %61 = or i32 %59, %60
  store i32 %61, i32* %5, align 4
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %63 = load i32, i32* @IXGBE_AUTOC, align 4
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %62, i32 %63, i32 %64)
  br label %67

66:                                               ; preds = %49
  store i32 10, i32* %2, align 4
  br label %169

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67, %38
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %70 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %69)
  %71 = call i32 @usleep_range(i32 10000, i32 20000)
  %72 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %73 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %168

79:                                               ; preds = %68
  %80 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %81 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 1
  %84 = load i32 (%struct.ixgbe_hw.1*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)** %83, align 8
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %86 = bitcast %struct.ixgbe_hw* %85 to %struct.ixgbe_hw.1*
  %87 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %88 = call i32 %84(%struct.ixgbe_hw.1* %86, i32 %87, i32* %6)
  %89 = load i32, i32* @IXGBE_ATLAS_PDN_TX_REG_EN, align 4
  %90 = load i32, i32* %6, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %6, align 4
  %92 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %93 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %95, align 8
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %98 = bitcast %struct.ixgbe_hw* %97 to %struct.ixgbe_hw.0*
  %99 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 %96(%struct.ixgbe_hw.0* %98, i32 %99, i32 %100)
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %103 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 1
  %106 = load i32 (%struct.ixgbe_hw.1*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)** %105, align 8
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %108 = bitcast %struct.ixgbe_hw* %107 to %struct.ixgbe_hw.1*
  %109 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %110 = call i32 %106(%struct.ixgbe_hw.1* %108, i32 %109, i32* %6)
  %111 = load i32, i32* @IXGBE_ATLAS_PDN_TX_10G_QL_ALL, align 4
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %115 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %117, align 8
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %120 = bitcast %struct.ixgbe_hw* %119 to %struct.ixgbe_hw.0*
  %121 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 %118(%struct.ixgbe_hw.0* %120, i32 %121, i32 %122)
  %124 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %125 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 1
  %128 = load i32 (%struct.ixgbe_hw.1*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)** %127, align 8
  %129 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %130 = bitcast %struct.ixgbe_hw* %129 to %struct.ixgbe_hw.1*
  %131 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %132 = call i32 %128(%struct.ixgbe_hw.1* %130, i32 %131, i32* %6)
  %133 = load i32, i32* @IXGBE_ATLAS_PDN_TX_1G_QL_ALL, align 4
  %134 = load i32, i32* %6, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %6, align 4
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %137 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %139, align 8
  %141 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %142 = bitcast %struct.ixgbe_hw* %141 to %struct.ixgbe_hw.0*
  %143 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %144 = load i32, i32* %6, align 4
  %145 = call i32 %140(%struct.ixgbe_hw.0* %142, i32 %143, i32 %144)
  %146 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %147 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 1
  %150 = load i32 (%struct.ixgbe_hw.1*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)** %149, align 8
  %151 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %152 = bitcast %struct.ixgbe_hw* %151 to %struct.ixgbe_hw.1*
  %153 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %154 = call i32 %150(%struct.ixgbe_hw.1* %152, i32 %153, i32* %6)
  %155 = load i32, i32* @IXGBE_ATLAS_PDN_TX_AN_QL_ALL, align 4
  %156 = load i32, i32* %6, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %6, align 4
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %159 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %160, i32 0, i32 0
  %162 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %161, align 8
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %164 = bitcast %struct.ixgbe_hw* %163 to %struct.ixgbe_hw.0*
  %165 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 %162(%struct.ixgbe_hw.0* %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %79, %68
  store i32 0, i32* %2, align 4
  br label %169

169:                                              ; preds = %168, %66
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
