; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-ethtool.c_xlgmac_ethtool_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-ethtool.c_xlgmac_ethtool_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.xlgmac_pdata = type { i32, i32, i32, i32, i32, i32, %struct.xlgmac_hw_ops }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_pdata.0*, i32)*, i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.2*)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_pdata.1 = type opaque
%struct.xlgmac_pdata.2 = type opaque

@EOPNOTSUPP = common dso_local global i32 0, align 4
@XLGMAC_MAX_DMA_RIWT = common dso_local global i32 0, align 4
@XLGMAC_MIN_DMA_RIWT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @xlgmac_ethtool_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_ethtool_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.xlgmac_pdata*, align 8
  %7 = alloca %struct.xlgmac_hw_ops*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.xlgmac_pdata* @netdev_priv(%struct.net_device* %12)
  store %struct.xlgmac_pdata* %13, %struct.xlgmac_pdata** %6, align 8
  %14 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %15 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %14, i32 0, i32 6
  store %struct.xlgmac_hw_ops* %15, %struct.xlgmac_hw_ops** %7, align 8
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
  br i1 %109, label %110, label %113

110:                                              ; preds = %105, %100, %95, %90, %85, %80, %75, %70, %65, %60, %55, %50, %45, %40, %35, %30, %25, %20, %2
  %111 = load i32, i32* @EOPNOTSUPP, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %180

113:                                              ; preds = %105
  %114 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  store i32 %116, i32* %10, align 4
  %117 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %7, align 8
  %118 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %117, i32 0, i32 0
  %119 = load i32 (%struct.xlgmac_pdata.0*, i32)*, i32 (%struct.xlgmac_pdata.0*, i32)** %118, align 8
  %120 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %121 = bitcast %struct.xlgmac_pdata* %120 to %struct.xlgmac_pdata.0*
  %122 = load i32, i32* %10, align 4
  %123 = call i32 %119(%struct.xlgmac_pdata.0* %121, i32 %122)
  store i32 %123, i32* %9, align 4
  %124 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  store i32 %126, i32* %8, align 4
  %127 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %128 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  store i32 %129, i32* %11, align 4
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @XLGMAC_MAX_DMA_RIWT, align 4
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %143, label %133

133:                                              ; preds = %113
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* @XLGMAC_MIN_DMA_RIWT, align 4
  %136 = icmp ult i32 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %133
  %138 = load i32, i32* %8, align 4
  %139 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %140 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = icmp ugt i32 %138, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137, %133, %113
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %180

146:                                              ; preds = %137
  %147 = load i32, i32* %11, align 4
  %148 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %149 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp ugt i32 %147, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %146
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %180

155:                                              ; preds = %146
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %158 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %161 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %164 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %163, i32 0, i32 4
  store i32 %162, i32* %164, align 8
  %165 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %7, align 8
  %166 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %165, i32 0, i32 2
  %167 = load i32 (%struct.xlgmac_pdata.2*)*, i32 (%struct.xlgmac_pdata.2*)** %166, align 8
  %168 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %169 = bitcast %struct.xlgmac_pdata* %168 to %struct.xlgmac_pdata.2*
  %170 = call i32 %167(%struct.xlgmac_pdata.2* %169)
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %173 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %172, i32 0, i32 5
  store i32 %171, i32* %173, align 4
  %174 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %7, align 8
  %175 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %174, i32 0, i32 1
  %176 = load i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.1*)** %175, align 8
  %177 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %6, align 8
  %178 = bitcast %struct.xlgmac_pdata* %177 to %struct.xlgmac_pdata.1*
  %179 = call i32 %176(%struct.xlgmac_pdata.1* %178)
  store i32 0, i32* %3, align 4
  br label %180

180:                                              ; preds = %155, %152, %143, %110
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.xlgmac_pdata* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
