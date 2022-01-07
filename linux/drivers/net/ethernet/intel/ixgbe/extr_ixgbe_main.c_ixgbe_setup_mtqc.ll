; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_mtqc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_setup_mtqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.ixgbe_hw }
%struct.TYPE_4__ = type { i64 }
%struct.ixgbe_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_RTTDCS = common dso_local global i32 0, align 4
@IXGBE_RTTDCS_ARBDIS = common dso_local global i32 0, align 4
@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@IXGBE_MTQC_VT_ENA = common dso_local global i32 0, align 4
@IXGBE_MTQC_RT_ENA = common dso_local global i32 0, align 4
@IXGBE_MTQC_8TC_8TQ = common dso_local global i32 0, align 4
@IXGBE_MTQC_4TC_4TQ = common dso_local global i32 0, align 4
@RING_F_VMDQ = common dso_local global i64 0, align 8
@IXGBE_82599_VMDQ_4Q_MASK = common dso_local global i64 0, align 8
@IXGBE_MTQC_32VF = common dso_local global i32 0, align 4
@IXGBE_MTQC_64VF = common dso_local global i32 0, align 4
@IXGBE_MTQC_64Q_1PB = common dso_local global i32 0, align 4
@IXGBE_MTQC = common dso_local global i32 0, align 4
@IXGBE_SECTXMINIFG = common dso_local global i32 0, align 4
@IXGBE_SECTX_DCB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_setup_mtqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_setup_mtqc(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 5
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %3, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %6, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %138

21:                                               ; preds = %1
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = load i32, i32* @IXGBE_RTTDCS, align 4
  %24 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @IXGBE_RTTDCS_ARBDIS, align 4
  %26 = load i32, i32* %4, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %4, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %29 = load i32, i32* @IXGBE_RTTDCS, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i32 %30)
  %32 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %78

38:                                               ; preds = %21
  %39 = load i32, i32* @IXGBE_MTQC_VT_ENA, align 4
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp sgt i32 %40, 4
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %44 = load i32, i32* @IXGBE_MTQC_8TC_8TQ, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %5, align 4
  br label %77

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %53 = load i32, i32* @IXGBE_MTQC_4TC_4TQ, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* %5, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %5, align 4
  br label %76

57:                                               ; preds = %48
  %58 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %58, i32 0, i32 4
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i64, i64* @RING_F_VMDQ, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @IXGBE_82599_VMDQ_4Q_MASK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = load i32, i32* @IXGBE_MTQC_32VF, align 4
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  br label %75

71:                                               ; preds = %57
  %72 = load i32, i32* @IXGBE_MTQC_64VF, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %67
  br label %76

76:                                               ; preds = %75, %51
  br label %77

77:                                               ; preds = %76, %42
  br label %111

78:                                               ; preds = %21
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 4
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %83 = load i32, i32* @IXGBE_MTQC_8TC_8TQ, align 4
  %84 = or i32 %82, %83
  store i32 %84, i32* %5, align 4
  br label %110

85:                                               ; preds = %78
  %86 = load i32, i32* %6, align 4
  %87 = icmp sgt i32 %86, 1
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %90 = load i32, i32* @IXGBE_MTQC_4TC_4TQ, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %5, align 4
  br label %109

92:                                               ; preds = %85
  %93 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %94 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %97 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %95, %98
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 63
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  %103 = load i32, i32* @IXGBE_MTQC_RT_ENA, align 4
  %104 = load i32, i32* @IXGBE_MTQC_4TC_4TQ, align 4
  %105 = or i32 %103, %104
  store i32 %105, i32* %5, align 4
  br label %108

106:                                              ; preds = %92
  %107 = load i32, i32* @IXGBE_MTQC_64Q_1PB, align 4
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %106, %102
  br label %109

109:                                              ; preds = %108, %88
  br label %110

110:                                              ; preds = %109, %81
  br label %111

111:                                              ; preds = %110, %77
  %112 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %113 = load i32, i32* @IXGBE_MTQC, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %112, i32 %113, i32 %114)
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %129

118:                                              ; preds = %111
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %120 = load i32, i32* @IXGBE_SECTXMINIFG, align 4
  %121 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %119, i32 %120)
  store i32 %121, i32* %8, align 4
  %122 = load i32, i32* @IXGBE_SECTX_DCB, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %126 = load i32, i32* @IXGBE_SECTXMINIFG, align 4
  %127 = load i32, i32* %8, align 4
  %128 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %125, i32 %126, i32 %127)
  br label %129

129:                                              ; preds = %118, %111
  %130 = load i32, i32* @IXGBE_RTTDCS_ARBDIS, align 4
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %4, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %4, align 4
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %135 = load i32, i32* @IXGBE_RTTDCS, align 4
  %136 = load i32, i32* %4, align 4
  %137 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %134, i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %129, %20
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
