; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drv.c_vsp1_device_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vsp1/extr_vsp1_drv.c_vsp1_device_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vsp1_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@VI6_CLK_DCSWT = common dso_local global i32 0, align 4
@VI6_CLK_DCSWT_CSTPW_SHIFT = common dso_local global i32 0, align 4
@VI6_CLK_DCSWT_CSTRW_SHIFT = common dso_local global i32 0, align 4
@VI6_DPR_NODE_UNUSED = common dso_local global i32 0, align 4
@VI6_DPR_SRU_ROUTE = common dso_local global i32 0, align 4
@VI6_DPR_LUT_ROUTE = common dso_local global i32 0, align 4
@VI6_DPR_CLU_ROUTE = common dso_local global i32 0, align 4
@VI6_DPR_HST_ROUTE = common dso_local global i32 0, align 4
@VI6_DPR_HSI_ROUTE = common dso_local global i32 0, align 4
@VI6_DPR_BRU_ROUTE = common dso_local global i32 0, align 4
@VSP1_HAS_BRS = common dso_local global i32 0, align 4
@VI6_DPR_ILV_BRS_ROUTE = common dso_local global i32 0, align 4
@VI6_DPR_HGO_SMPPT = common dso_local global i32 0, align 4
@VI6_DPR_SMPPT_TGW_SHIFT = common dso_local global i32 0, align 4
@VI6_DPR_SMPPT_PT_SHIFT = common dso_local global i32 0, align 4
@VI6_DPR_HGT_SMPPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vsp1_device*)* @vsp1_device_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsp1_device_init(%struct.vsp1_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vsp1_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vsp1_device* %0, %struct.vsp1_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %23, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %9 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ult i32 %7, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %6
  %15 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @vsp1_reset_wpf(%struct.vsp1_device* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %143

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %4, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %6

26:                                               ; preds = %6
  %27 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %28 = load i32, i32* @VI6_CLK_DCSWT, align 4
  %29 = load i32, i32* @VI6_CLK_DCSWT_CSTPW_SHIFT, align 4
  %30 = shl i32 8, %29
  %31 = load i32, i32* @VI6_CLK_DCSWT_CSTRW_SHIFT, align 4
  %32 = shl i32 8, %31
  %33 = or i32 %30, %32
  %34 = call i32 @vsp1_write(%struct.vsp1_device* %27, i32 %28, i32 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %49, %26
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %38 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %36, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @VI6_DPR_RPF_ROUTE(i32 %45)
  %47 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %48 = call i32 @vsp1_write(%struct.vsp1_device* %44, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %35

52:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %67, %52
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %56 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = icmp ult i32 %54, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i32 @VI6_DPR_UDS_ROUTE(i32 %63)
  %65 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %66 = call i32 @vsp1_write(%struct.vsp1_device* %62, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %53

70:                                               ; preds = %53
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %85, %70
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %74 = getelementptr inbounds %struct.vsp1_device, %struct.vsp1_device* %73, i32 0, i32 0
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ult i32 %72, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %71
  %80 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @VI6_DPR_UIF_ROUTE(i32 %81)
  %83 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %84 = call i32 @vsp1_write(%struct.vsp1_device* %80, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %4, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %4, align 4
  br label %71

88:                                               ; preds = %71
  %89 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %90 = load i32, i32* @VI6_DPR_SRU_ROUTE, align 4
  %91 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %92 = call i32 @vsp1_write(%struct.vsp1_device* %89, i32 %90, i32 %91)
  %93 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %94 = load i32, i32* @VI6_DPR_LUT_ROUTE, align 4
  %95 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %96 = call i32 @vsp1_write(%struct.vsp1_device* %93, i32 %94, i32 %95)
  %97 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %98 = load i32, i32* @VI6_DPR_CLU_ROUTE, align 4
  %99 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %100 = call i32 @vsp1_write(%struct.vsp1_device* %97, i32 %98, i32 %99)
  %101 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %102 = load i32, i32* @VI6_DPR_HST_ROUTE, align 4
  %103 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %104 = call i32 @vsp1_write(%struct.vsp1_device* %101, i32 %102, i32 %103)
  %105 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %106 = load i32, i32* @VI6_DPR_HSI_ROUTE, align 4
  %107 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %108 = call i32 @vsp1_write(%struct.vsp1_device* %105, i32 %106, i32 %107)
  %109 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %110 = load i32, i32* @VI6_DPR_BRU_ROUTE, align 4
  %111 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %112 = call i32 @vsp1_write(%struct.vsp1_device* %109, i32 %110, i32 %111)
  %113 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %114 = load i32, i32* @VSP1_HAS_BRS, align 4
  %115 = call i64 @vsp1_feature(%struct.vsp1_device* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %88
  %118 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %119 = load i32, i32* @VI6_DPR_ILV_BRS_ROUTE, align 4
  %120 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %121 = call i32 @vsp1_write(%struct.vsp1_device* %118, i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %88
  %123 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %124 = load i32, i32* @VI6_DPR_HGO_SMPPT, align 4
  %125 = load i32, i32* @VI6_DPR_SMPPT_TGW_SHIFT, align 4
  %126 = shl i32 7, %125
  %127 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %128 = load i32, i32* @VI6_DPR_SMPPT_PT_SHIFT, align 4
  %129 = shl i32 %127, %128
  %130 = or i32 %126, %129
  %131 = call i32 @vsp1_write(%struct.vsp1_device* %123, i32 %124, i32 %130)
  %132 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %133 = load i32, i32* @VI6_DPR_HGT_SMPPT, align 4
  %134 = load i32, i32* @VI6_DPR_SMPPT_TGW_SHIFT, align 4
  %135 = shl i32 7, %134
  %136 = load i32, i32* @VI6_DPR_NODE_UNUSED, align 4
  %137 = load i32, i32* @VI6_DPR_SMPPT_PT_SHIFT, align 4
  %138 = shl i32 %136, %137
  %139 = or i32 %135, %138
  %140 = call i32 @vsp1_write(%struct.vsp1_device* %132, i32 %133, i32 %139)
  %141 = load %struct.vsp1_device*, %struct.vsp1_device** %3, align 8
  %142 = call i32 @vsp1_dlm_setup(%struct.vsp1_device* %141)
  store i32 0, i32* %2, align 4
  br label %143

143:                                              ; preds = %122, %20
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @vsp1_reset_wpf(%struct.vsp1_device*, i32) #1

declare dso_local i32 @vsp1_write(%struct.vsp1_device*, i32, i32) #1

declare dso_local i32 @VI6_DPR_RPF_ROUTE(i32) #1

declare dso_local i32 @VI6_DPR_UDS_ROUTE(i32) #1

declare dso_local i32 @VI6_DPR_UIF_ROUTE(i32) #1

declare dso_local i64 @vsp1_feature(%struct.vsp1_device*, i32) #1

declare dso_local i32 @vsp1_dlm_setup(%struct.vsp1_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
