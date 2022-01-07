; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_oem_bits_config_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_oem_bits_config_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.TYPE_4__ = type { i64 }

@e1000_pchlan = common dso_local global i64 0, align 8
@EXTCNF_CTRL = common dso_local global i32 0, align 4
@E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE = common dso_local global i32 0, align 4
@FEXTNVM = common dso_local global i32 0, align 4
@E1000_FEXTNVM_SW_CONFIG_ICH8M = common dso_local global i32 0, align 4
@PHY_CTRL = common dso_local global i32 0, align 4
@HV_OEM_BITS = common dso_local global i32 0, align 4
@HV_OEM_BITS_GBE_DIS = common dso_local global i32 0, align 4
@HV_OEM_BITS_LPLU = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_D0A_LPLU = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_GBE_DISABLE = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_LPLU = common dso_local global i32 0, align 4
@HV_OEM_BITS_RESTART_AN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_oem_bits_config_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @e1000_pchlan, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %3, align 8
  br label %153

17:                                               ; preds = %2
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %21, align 8
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %24 = bitcast %struct.e1000_hw* %23 to %struct.e1000_hw.2*
  %25 = call i64 %22(%struct.e1000_hw.2* %24)
  store i64 %25, i64* %6, align 8
  %26 = load i64, i64* %6, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %17
  %29 = load i64, i64* %6, align 8
  store i64 %29, i64* %3, align 8
  br label %153

30:                                               ; preds = %17
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_pchlan, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %46

37:                                               ; preds = %30
  %38 = load i32, i32* @EXTCNF_CTRL, align 4
  %39 = call i32 @er32(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @E1000_EXTCNF_CTRL_OEM_WRITE_ENABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  br label %143

45:                                               ; preds = %37
  br label %46

46:                                               ; preds = %45, %30
  %47 = load i32, i32* @FEXTNVM, align 4
  %48 = call i32 @er32(i32 %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @E1000_FEXTNVM_SW_CONFIG_ICH8M, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %46
  br label %143

54:                                               ; preds = %46
  %55 = load i32, i32* @PHY_CTRL, align 4
  %56 = call i32 @er32(i32 %55)
  store i32 %56, i32* %7, align 4
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %58 = load i32, i32* @HV_OEM_BITS, align 4
  %59 = call i64 @e1e_rphy_locked(%struct.e1000_hw* %57, i32 %58, i32* %8)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %143

63:                                               ; preds = %54
  %64 = load i32, i32* @HV_OEM_BITS_GBE_DIS, align 4
  %65 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %8, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %63
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i32, i32* @HV_OEM_BITS_GBE_DIS, align 4
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %77, %72
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %81
  br label %114

91:                                               ; preds = %63
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %94 = load i32, i32* @E1000_PHY_CTRL_NOND0A_GBE_DISABLE, align 4
  %95 = or i32 %93, %94
  %96 = and i32 %92, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %91
  %99 = load i32, i32* @HV_OEM_BITS_GBE_DIS, align 4
  %100 = load i32, i32* %8, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %8, align 4
  br label %102

102:                                              ; preds = %98, %91
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %105 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %106 = or i32 %104, %105
  %107 = and i32 %103, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = load i32, i32* @HV_OEM_BITS_LPLU, align 4
  %111 = load i32, i32* %8, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %109, %102
  br label %114

114:                                              ; preds = %113, %90
  %115 = load i32, i32* %5, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %114
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %119 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @e1000_pchlan, align 8
  %123 = icmp ne i64 %121, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %117, %114
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %128, align 8
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %131 = bitcast %struct.e1000_hw* %130 to %struct.e1000_hw.1*
  %132 = call i32 %129(%struct.e1000_hw.1* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %124
  %135 = load i32, i32* @HV_OEM_BITS_RESTART_AN, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  br label %138

138:                                              ; preds = %134, %124, %117
  %139 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %140 = load i32, i32* @HV_OEM_BITS, align 4
  %141 = load i32, i32* %8, align 4
  %142 = call i64 @e1e_wphy_locked(%struct.e1000_hw* %139, i32 %140, i32 %141)
  store i64 %142, i64* %6, align 8
  br label %143

143:                                              ; preds = %138, %62, %53, %44
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %145 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %147, align 8
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %150 = bitcast %struct.e1000_hw* %149 to %struct.e1000_hw.0*
  %151 = call i32 %148(%struct.e1000_hw.0* %150)
  %152 = load i64, i64* %6, align 8
  store i64 %152, i64* %3, align 8
  br label %153

153:                                              ; preds = %143, %28, %15
  %154 = load i64, i64* %3, align 8
  ret i64 %154
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1e_rphy_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy_locked(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
