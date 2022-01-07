; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_trigger_vf_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_virtchnl_pf.c_ice_trigger_vf_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vf = type { i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_4__*, %struct.ice_hw }
%struct.TYPE_4__ = type { i32 }
%struct.ice_hw = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ICE_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@ICE_VF_STATE_INIT = common dso_local global i32 0, align 4
@VPGEN_VFRTRIG_VFSWR_M = common dso_local global i32 0, align 4
@PF_PCI_CIAA = common dso_local global i32 0, align 4
@VF_DEVICE_STATUS = common dso_local global i32 0, align 4
@PF_PCI_CIAA_VF_NUM_S = common dso_local global i32 0, align 4
@ICE_PCI_CIAD_WAIT_COUNT = common dso_local global i32 0, align 4
@PF_PCI_CIAD = common dso_local global i32 0, align 4
@VF_TRANS_PENDING_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"VF %d PCI transactions stuck\0A\00", align 1
@ICE_PCI_CIAD_WAIT_DELAY_US = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ice_vf*, i32, i32)* @ice_trigger_vf_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_trigger_vf_reset(%struct.ice_vf* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ice_vf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ice_pf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ice_hw*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ice_vf* %0, %struct.ice_vf** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %15 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %14, i32 0, i32 2
  %16 = load %struct.ice_pf*, %struct.ice_pf** %15, align 8
  store %struct.ice_pf* %16, %struct.ice_pf** %7, align 8
  %17 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %18 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %17, i32 0, i32 1
  store %struct.ice_hw* %18, %struct.ice_hw** %11, align 8
  %19 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %20 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %23 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %21, %25
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* @ICE_VF_STATE_ACTIVE, align 4
  %28 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %29 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clear_bit(i32 %27, i32 %30)
  %32 = load i32, i32* @ICE_VF_STATE_INIT, align 4
  %33 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %34 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @clear_bit(i32 %32, i32 %35)
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %3
  %40 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @VF_MBX_ARQLEN(i32 %41)
  %43 = call i32 @wr32(%struct.ice_hw* %40, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39, %3
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %44
  %48 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %49 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %50 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @VPGEN_VFRTRIG(i32 %51)
  %53 = call i32 @rd32(%struct.ice_hw* %48, i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @VPGEN_VFRTRIG_VFSWR_M, align 4
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  %57 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %58 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %59 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @VPGEN_VFRTRIG(i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @wr32(%struct.ice_hw* %57, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %47, %44
  %65 = load i32, i32* %12, align 4
  %66 = sdiv i32 %65, 32
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %12, align 4
  %68 = srem i32 %67, 32
  store i32 %68, i32* %10, align 4
  %69 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @GLGEN_VFLRSTAT(i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @BIT(i32 %72)
  %74 = call i32 @wr32(%struct.ice_hw* %69, i32 %71, i32 %73)
  %75 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %76 = call i32 @ice_flush(%struct.ice_hw* %75)
  %77 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %78 = load i32, i32* @PF_PCI_CIAA, align 4
  %79 = load i32, i32* @VF_DEVICE_STATUS, align 4
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* @PF_PCI_CIAA_VF_NUM_S, align 4
  %82 = shl i32 %80, %81
  %83 = or i32 %79, %82
  %84 = call i32 @wr32(%struct.ice_hw* %77, i32 %78, i32 %83)
  store i32 0, i32* %13, align 4
  br label %85

85:                                               ; preds = %109, %64
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @ICE_PCI_CIAD_WAIT_COUNT, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %112

89:                                               ; preds = %85
  %90 = load %struct.ice_hw*, %struct.ice_hw** %11, align 8
  %91 = load i32, i32* @PF_PCI_CIAD, align 4
  %92 = call i32 @rd32(%struct.ice_hw* %90, i32 %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @VF_TRANS_PENDING_M, align 4
  %95 = and i32 %93, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %89
  br label %112

98:                                               ; preds = %89
  %99 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  %100 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load %struct.ice_vf*, %struct.ice_vf** %4, align 8
  %104 = getelementptr inbounds %struct.ice_vf, %struct.ice_vf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @dev_err(i32* %102, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @ICE_PCI_CIAD_WAIT_DELAY_US, align 4
  %108 = call i32 @udelay(i32 %107)
  br label %109

109:                                              ; preds = %98
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %85

112:                                              ; preds = %97, %85
  ret void
}

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @VF_MBX_ARQLEN(i32) #1

declare dso_local i32 @rd32(%struct.ice_hw*, i32) #1

declare dso_local i32 @VPGEN_VFRTRIG(i32) #1

declare dso_local i32 @GLGEN_VFLRSTAT(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
