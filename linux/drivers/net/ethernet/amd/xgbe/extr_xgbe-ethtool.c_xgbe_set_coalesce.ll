; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-ethtool.c_xgbe_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, i32, %struct.xgbe_hw_if }
%struct.xgbe_hw_if = type { i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.1*, i32)*, i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.3*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque
%struct.xgbe_prv_data.2 = type opaque
%struct.xgbe_prv_data.3 = type opaque

@.str = private unnamed_addr constant [34 x i8] c"unsupported coalescing parameter\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@XGMAC_MAX_DMA_RIWT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"rx-usec is limited to %d usecs\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"rx-frames is limited to %d frames\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"tx-frames is limited to %d frames\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @xgbe_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.xgbe_prv_data*, align 8
  %7 = alloca %struct.xgbe_hw_if*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.xgbe_prv_data* @netdev_priv(%struct.net_device* %12)
  store %struct.xgbe_prv_data* %13, %struct.xgbe_prv_data** %6, align 8
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 6
  store %struct.xgbe_hw_if* %15, %struct.xgbe_hw_if** %7, align 8
  %16 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %16, i32 0, i32 21
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %110, label %20

20:                                               ; preds = %2
  %21 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %21, i32 0, i32 20
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %110, label %25

25:                                               ; preds = %20
  %26 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %26, i32 0, i32 19
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %110, label %30

30:                                               ; preds = %25
  %31 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %31, i32 0, i32 18
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %110, label %35

35:                                               ; preds = %30
  %36 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %36, i32 0, i32 17
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %110, label %40

40:                                               ; preds = %35
  %41 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %41, i32 0, i32 16
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %110, label %45

45:                                               ; preds = %40
  %46 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %46, i32 0, i32 15
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %110, label %50

50:                                               ; preds = %45
  %51 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %51, i32 0, i32 14
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %110, label %55

55:                                               ; preds = %50
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 13
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %110, label %60

60:                                               ; preds = %55
  %61 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %62 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %61, i32 0, i32 12
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %110, label %65

65:                                               ; preds = %60
  %66 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %67 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %66, i32 0, i32 11
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %65
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 10
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %110, label %75

75:                                               ; preds = %70
  %76 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %77 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %76, i32 0, i32 9
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %75
  %81 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %82 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %110, label %85

85:                                               ; preds = %80
  %86 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %87 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %110, label %90

90:                                               ; preds = %85
  %91 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %92 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %91, i32 0, i32 6
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %110, label %95

95:                                               ; preds = %90
  %96 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %97 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %110, label %100

100:                                              ; preds = %95
  %101 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %102 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %100
  %106 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %107 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %2
  %111 = load %struct.net_device*, %struct.net_device** %4, align 8
  %112 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @EOPNOTSUPP, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %3, align 4
  br label %209

115:                                              ; preds = %105
  %116 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %117 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %116, i32 0, i32 0
  %118 = load i32 (%struct.xgbe_prv_data.0*, i32)*, i32 (%struct.xgbe_prv_data.0*, i32)** %117, align 8
  %119 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %120 = bitcast %struct.xgbe_prv_data* %119 to %struct.xgbe_prv_data.0*
  %121 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %122 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 %118(%struct.xgbe_prv_data.0* %120, i32 %123)
  store i32 %124, i32* %9, align 4
  %125 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %126 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  store i32 %127, i32* %10, align 4
  %128 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %115
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %133
  store i32 1, i32* %9, align 4
  br label %137

137:                                              ; preds = %136, %133, %115
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @XGMAC_MAX_DMA_RIWT, align 4
  %140 = icmp ugt i32 %138, %139
  br i1 %140, label %141, label %153

141:                                              ; preds = %137
  %142 = load %struct.net_device*, %struct.net_device** %4, align 8
  %143 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %144 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %143, i32 0, i32 1
  %145 = load i32 (%struct.xgbe_prv_data.1*, i32)*, i32 (%struct.xgbe_prv_data.1*, i32)** %144, align 8
  %146 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %147 = bitcast %struct.xgbe_prv_data* %146 to %struct.xgbe_prv_data.1*
  %148 = load i32, i32* @XGMAC_MAX_DMA_RIWT, align 4
  %149 = call i32 %145(%struct.xgbe_prv_data.1* %147, i32 %148)
  %150 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %142, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* @EINVAL, align 4
  %152 = sub nsw i32 0, %151
  store i32 %152, i32* %3, align 4
  br label %209

153:                                              ; preds = %137
  %154 = load i32, i32* %8, align 4
  %155 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %156 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ugt i32 %154, %157
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %162 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %160, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %3, align 4
  br label %209

167:                                              ; preds = %153
  %168 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %169 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  store i32 %170, i32* %11, align 4
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %173 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp ugt i32 %171, %174
  br i1 %175, label %176, label %184

176:                                              ; preds = %167
  %177 = load %struct.net_device*, %struct.net_device** %4, align 8
  %178 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %179 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %177, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* @EINVAL, align 4
  %183 = sub nsw i32 0, %182
  store i32 %183, i32* %3, align 4
  br label %209

184:                                              ; preds = %167
  %185 = load i32, i32* %9, align 4
  %186 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %187 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load i32, i32* %10, align 4
  %189 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %190 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %189, i32 0, i32 3
  store i32 %188, i32* %190, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %193 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %192, i32 0, i32 4
  store i32 %191, i32* %193, align 8
  %194 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %195 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %194, i32 0, i32 3
  %196 = load i32 (%struct.xgbe_prv_data.3*)*, i32 (%struct.xgbe_prv_data.3*)** %195, align 8
  %197 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %198 = bitcast %struct.xgbe_prv_data* %197 to %struct.xgbe_prv_data.3*
  %199 = call i32 %196(%struct.xgbe_prv_data.3* %198)
  %200 = load i32, i32* %11, align 4
  %201 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %202 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %201, i32 0, i32 5
  store i32 %200, i32* %202, align 4
  %203 = load %struct.xgbe_hw_if*, %struct.xgbe_hw_if** %7, align 8
  %204 = getelementptr inbounds %struct.xgbe_hw_if, %struct.xgbe_hw_if* %203, i32 0, i32 2
  %205 = load i32 (%struct.xgbe_prv_data.2*)*, i32 (%struct.xgbe_prv_data.2*)** %204, align 8
  %206 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %6, align 8
  %207 = bitcast %struct.xgbe_prv_data* %206 to %struct.xgbe_prv_data.2*
  %208 = call i32 %205(%struct.xgbe_prv_data.2* %207)
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %184, %176, %159, %141, %110
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local %struct.xgbe_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
