; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_dcb_tc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_dcb_tc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_4__*, %struct.TYPE_3__, %struct.ieee_ets* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee_ets = type { i32*, i32*, i32* }

@MTL_OMR = common dso_local global i32 0, align 4
@ETSALG = common dso_local global i32 0, align 4
@MTL_ETSALG_DWRR = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"TC%u PRIO mask=%#x\0A\00", align 1
@MTL_TCPM0R = common dso_local global i32 0, align 4
@MTL_TCPM_INC = common dso_local global i32 0, align 4
@MTL_TCPM_TC_PER_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"TC%u using SP\0A\00", align 1
@MTL_TC_ETSCR = common dso_local global i32 0, align 4
@TSA = common dso_local global i32 0, align 4
@MTL_TSA_SP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"TC%u using DWRR (weight %u)\0A\00", align 1
@MTL_TSA_ETS = common dso_local global i32 0, align 4
@MTL_TC_QWR = common dso_local global i32 0, align 4
@QW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_config_dcb_tc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_config_dcb_tc(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.ieee_ets*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %12 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %13 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %12, i32 0, i32 2
  %14 = load %struct.ieee_ets*, %struct.ieee_ets** %13, align 8
  store %struct.ieee_ets* %14, %struct.ieee_ets** %3, align 8
  %15 = load %struct.ieee_ets*, %struct.ieee_ets** %3, align 8
  %16 = icmp ne %struct.ieee_ets* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %175

18:                                               ; preds = %1
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %20 = load i32, i32* @MTL_OMR, align 4
  %21 = load i32, i32* @ETSALG, align 4
  %22 = load i32, i32* @MTL_ETSALG_DWRR, align 4
  %23 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %19, i32 %20, i32 %21, i32 %22)
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %25 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul i32 %28, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = udiv i32 %34, 100
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %18
  store i32 1, i32* %5, align 4
  br label %39

39:                                               ; preds = %38, %18
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %169, %39
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %43 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ult i32 %41, %45
  br i1 %46, label %47, label %172

47:                                               ; preds = %40
  store i32 0, i32* %7, align 4
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %68, %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %71

52:                                               ; preds = %48
  %53 = load %struct.ieee_ets*, %struct.ieee_ets** %3, align 8
  %54 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %52
  %63 = load i32, i32* %11, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %7, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %11, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %48

71:                                               ; preds = %48
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 255
  store i32 %73, i32* %7, align 4
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %75 = load i32, i32* @drv, align 4
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %77 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 (%struct.xgbe_prv_data*, i32, %struct.TYPE_4__*, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %74, i32 %75, %struct.TYPE_4__* %78, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load i32, i32* @MTL_TCPM0R, align 4
  %83 = load i32, i32* @MTL_TCPM_INC, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MTL_TCPM_TC_PER_REG, align 4
  %86 = udiv i32 %84, %85
  %87 = mul i32 %83, %86
  %88 = add i32 %82, %87
  store i32 %88, i32* %8, align 4
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @XGMAC_IOREAD(%struct.xgbe_prv_data* %89, i32 %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @MTL_TCPM_TC_PER_REG, align 4
  %94 = urem i32 %92, %93
  %95 = shl i32 %94, 3
  %96 = shl i32 255, %95
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @MTL_TCPM_TC_PER_REG, align 4
  %103 = urem i32 %101, %102
  %104 = shl i32 %103, 3
  %105 = shl i32 %100, %104
  %106 = load i32, i32* %9, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %9, align 4
  %108 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %108, i32 %109, i32 %110)
  %112 = load %struct.ieee_ets*, %struct.ieee_ets** %3, align 8
  %113 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  switch i32 %118, label %168 [
    i32 128, label %119
    i32 129, label %133
  ]

119:                                              ; preds = %71
  %120 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %121 = load i32, i32* @drv, align 4
  %122 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %123 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = call i32 (%struct.xgbe_prv_data*, i32, %struct.TYPE_4__*, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %120, i32 %121, %struct.TYPE_4__* %124, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %125)
  %127 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* @MTL_TC_ETSCR, align 4
  %130 = load i32, i32* @TSA, align 4
  %131 = load i32, i32* @MTL_TSA_SP, align 4
  %132 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %127, i32 %128, i32 %129, i32 %130, i32 %131)
  br label %168

133:                                              ; preds = %71
  %134 = load i32, i32* %4, align 4
  %135 = load %struct.ieee_ets*, %struct.ieee_ets** %3, align 8
  %136 = getelementptr inbounds %struct.ieee_ets, %struct.ieee_ets* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = mul i32 %134, %141
  %143 = udiv i32 %142, 100
  store i32 %143, i32* %6, align 4
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %4, align 4
  %147 = call i32 @clamp(i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %6, align 4
  %148 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %149 = load i32, i32* @drv, align 4
  %150 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %151 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %150, i32 0, i32 0
  %152 = load %struct.TYPE_4__*, %struct.TYPE_4__** %151, align 8
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (%struct.xgbe_prv_data*, i32, %struct.TYPE_4__*, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %148, i32 %149, %struct.TYPE_4__* %152, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %154)
  %156 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @MTL_TC_ETSCR, align 4
  %159 = load i32, i32* @TSA, align 4
  %160 = load i32, i32* @MTL_TSA_ETS, align 4
  %161 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %156, i32 %157, i32 %158, i32 %159, i32 %160)
  %162 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %163 = load i32, i32* %10, align 4
  %164 = load i32, i32* @MTL_TC_QWR, align 4
  %165 = load i32, i32* @QW, align 4
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %162, i32 %163, i32 %164, i32 %165, i32 %166)
  br label %168

168:                                              ; preds = %71, %133, %119
  br label %169

169:                                              ; preds = %168
  %170 = load i32, i32* %10, align 4
  %171 = add i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %40

172:                                              ; preds = %40
  %173 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %174 = call i32 @xgbe_config_tc(%struct.xgbe_prv_data* %173)
  br label %175

175:                                              ; preds = %172, %17
  ret void
}

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, %struct.TYPE_4__*, i8*, i32, ...) #1

declare dso_local i32 @XGMAC_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i32 @xgbe_config_tc(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
