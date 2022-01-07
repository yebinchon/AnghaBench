; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_request_msix.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igbvf/extr_netdev.c_igbvf_request_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igbvf_adapter = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__*, %struct.TYPE_4__*, %struct.net_device* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i8* }
%struct.TYPE_4__ = type { i8*, i32, i8* }
%struct.net_device = type { i8* }

@IFNAMSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"%s-tx-0\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"%s-rx-0\00", align 1
@igbvf_intr_msix_tx = common dso_local global i32 0, align 4
@igbvf_intr_msix_rx = common dso_local global i32 0, align 4
@igbvf_msix_other = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igbvf_adapter*)* @igbvf_request_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igbvf_request_msix(%struct.igbvf_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igbvf_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.igbvf_adapter* %0, %struct.igbvf_adapter** %3, align 8
  %7 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %7, i32 0, i32 4
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @strlen(i8* %12)
  %14 = load i32, i32* @IFNAMSIZ, align 4
  %15 = sub nsw i32 %14, 5
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %1
  %18 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %18, i32 0, i32 3
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %4, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @sprintf(i8* %22, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %25)
  %27 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %27, i32 0, i32 2
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @sprintf(i8* %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* %34)
  br label %57

36:                                               ; preds = %1
  %37 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %38 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* @IFNAMSIZ, align 4
  %46 = call i32 @memcpy(i8* %41, i8* %44, i32 %45)
  %47 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load %struct.net_device*, %struct.net_device** %4, align 8
  %53 = getelementptr inbounds %struct.net_device, %struct.net_device* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = load i32, i32* @IFNAMSIZ, align 4
  %56 = call i32 @memcpy(i8* %51, i8* %54, i32 %55)
  br label %57

57:                                               ; preds = %36, %17
  %58 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @igbvf_intr_msix_tx, align 4
  %67 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %67, i32 0, i32 3
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i32 @request_irq(i32 %65, i32 %66, i32 0, i8* %71, %struct.net_device* %72)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %57
  br label %148

77:                                               ; preds = %57
  %78 = load i32, i32* %6, align 4
  %79 = call i8* @E1000_EITR(i32 %78)
  %80 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %81 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i8* %79, i8** %83, align 8
  %84 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %85 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %87, i32 0, i32 3
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  store i32 %86, i32* %90, align 8
  %91 = load i32, i32* %6, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %6, align 4
  %93 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @igbvf_intr_msix_rx, align 4
  %102 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %102, i32 0, i32 2
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i8*, i8** %105, align 8
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = call i32 @request_irq(i32 %100, i32 %101, i32 0, i8* %106, %struct.net_device* %107)
  store i32 %108, i32* %5, align 4
  %109 = load i32, i32* %5, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %77
  br label %148

112:                                              ; preds = %77
  %113 = load i32, i32* %6, align 4
  %114 = call i8* @E1000_EITR(i32 %113)
  %115 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %116 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %115, i32 0, i32 2
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  store i8* %114, i8** %118, align 8
  %119 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %123 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %122, i32 0, i32 2
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  store i32 %121, i32* %125, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.igbvf_adapter, %struct.igbvf_adapter* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %6, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @igbvf_msix_other, align 4
  %137 = load %struct.net_device*, %struct.net_device** %4, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load %struct.net_device*, %struct.net_device** %4, align 8
  %141 = call i32 @request_irq(i32 %135, i32 %136, i32 0, i8* %139, %struct.net_device* %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %112
  br label %148

145:                                              ; preds = %112
  %146 = load %struct.igbvf_adapter*, %struct.igbvf_adapter** %3, align 8
  %147 = call i32 @igbvf_configure_msix(%struct.igbvf_adapter* %146)
  store i32 0, i32* %2, align 4
  br label %150

148:                                              ; preds = %144, %111, %76
  %149 = load i32, i32* %5, align 4
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %148, %145
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i8* @E1000_EITR(i32) #1

declare dso_local i32 @igbvf_configure_msix(%struct.igbvf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
