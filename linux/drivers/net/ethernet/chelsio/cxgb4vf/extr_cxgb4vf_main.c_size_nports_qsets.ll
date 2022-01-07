; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_size_nports_qsets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_cxgb4vf_main.c_size_nports_qsets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.vf_resources }
%struct.vf_resources = type { i32, i32, i32, i32, i32 }

@MAX_NPORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"only using %d of %d maximum allowed virtual interfaces\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"only using %d of %d provisioned virtual interfaces; limited by Port Access Rights mask %#x\0A\00", align 1
@msi = common dso_local global i64 0, align 8
@MSI_MSI = common dso_local global i64 0, align 8
@MAX_ETH_QSETS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"only using %d of %d available virtual interfaces (too few Queue Sets)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @size_nports_qsets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @size_nports_qsets(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca %struct.vf_resources*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store %struct.vf_resources* %8, %struct.vf_resources** %3, align 8
  %9 = load %struct.vf_resources*, %struct.vf_resources** %3, align 8
  %10 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MAX_NPORTS, align 4
  %20 = icmp ugt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %1
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_NPORTS, align 4
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, i32, ...) @dev_warn(i32 %24, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %29)
  %31 = load i32, i32* @MAX_NPORTS, align 4
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = getelementptr inbounds %struct.adapter, %struct.adapter* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  br label %35

35:                                               ; preds = %21, %1
  %36 = load %struct.adapter*, %struct.adapter** %2, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @hweight32(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.adapter*, %struct.adapter** %2, align 8
  %44 = getelementptr inbounds %struct.adapter, %struct.adapter* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ult i32 %42, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %35
  %49 = load %struct.adapter*, %struct.adapter** %2, align 8
  %50 = getelementptr inbounds %struct.adapter, %struct.adapter* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.adapter*, %struct.adapter** %2, align 8
  %54 = getelementptr inbounds %struct.adapter, %struct.adapter* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.adapter*, %struct.adapter** %2, align 8
  %58 = getelementptr inbounds %struct.adapter, %struct.adapter* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i32, i8*, i32, i32, ...) @dev_warn(i32 %51, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %56, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.adapter*, %struct.adapter** %2, align 8
  %65 = getelementptr inbounds %struct.adapter, %struct.adapter* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %48, %35
  %68 = load %struct.vf_resources*, %struct.vf_resources** %3, align 8
  %69 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %70, 1
  %72 = load i64, i64* @msi, align 8
  %73 = load i64, i64* @MSI_MSI, align 8
  %74 = icmp eq i64 %72, %73
  %75 = zext i1 %74 to i32
  %76 = sub nsw i32 %71, %75
  store i32 %76, i32* %4, align 4
  %77 = load %struct.vf_resources*, %struct.vf_resources** %3, align 8
  %78 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %67
  %83 = load %struct.vf_resources*, %struct.vf_resources** %3, align 8
  %84 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @min(i32 %85, i32 %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %82, %67
  %89 = load %struct.vf_resources*, %struct.vf_resources** %3, align 8
  %90 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %4, align 4
  %93 = mul i32 %92, 2
  %94 = icmp ult i32 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %88
  %96 = load %struct.vf_resources*, %struct.vf_resources** %3, align 8
  %97 = getelementptr inbounds %struct.vf_resources, %struct.vf_resources* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = udiv i32 %98, 2
  store i32 %99, i32* %4, align 4
  br label %100

100:                                              ; preds = %95, %88
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MAX_ETH_QSETS, align 4
  %103 = icmp ugt i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100
  %105 = load i32, i32* @MAX_ETH_QSETS, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %104, %100
  %107 = load i32, i32* %4, align 4
  %108 = load %struct.adapter*, %struct.adapter** %2, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  store i32 %107, i32* %110, align 4
  %111 = load %struct.adapter*, %struct.adapter** %2, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.adapter*, %struct.adapter** %2, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ult i32 %114, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %106
  %121 = load %struct.adapter*, %struct.adapter** %2, align 8
  %122 = getelementptr inbounds %struct.adapter, %struct.adapter* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.adapter*, %struct.adapter** %2, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.adapter*, %struct.adapter** %2, align 8
  %129 = getelementptr inbounds %struct.adapter, %struct.adapter* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i32, i8*, i32, i32, ...) @dev_warn(i32 %123, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %131)
  %133 = load %struct.adapter*, %struct.adapter** %2, align 8
  %134 = getelementptr inbounds %struct.adapter, %struct.adapter* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.adapter*, %struct.adapter** %2, align 8
  %138 = getelementptr inbounds %struct.adapter, %struct.adapter* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  store i32 %136, i32* %139, align 4
  br label %140

140:                                              ; preds = %120, %106
  ret void
}

declare dso_local i32 @dev_warn(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
