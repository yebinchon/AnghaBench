; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc_arrays.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc_arrays.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i8*, i8*, i8*, i8*, i8*, i32, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ICE_VSI_LB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_vsi_alloc_arrays to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_alloc_arrays(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %5 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %6 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %5, i32 0, i32 9
  %7 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  store %struct.ice_pf* %7, %struct.ice_pf** %4, align 8
  %8 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %9 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %13 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @devm_kcalloc(i32* %11, i32 %14, i32 1, i32 %15)
  %17 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %18 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %17, i32 0, i32 1
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %140

26:                                               ; preds = %1
  %27 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %28 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %32 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @devm_kcalloc(i32* %30, i32 %33, i32 1, i32 %34)
  %36 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %37 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %39 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %38, i32 0, i32 2
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %26
  br label %129

43:                                               ; preds = %26
  %44 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %45 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %49 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @devm_kcalloc(i32* %47, i32 %50, i32 1, i32 %51)
  %53 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %54 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %56 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %55, i32 0, i32 3
  %57 = load i8*, i8** %56, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %43
  br label %120

60:                                               ; preds = %43
  %61 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %62 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %66 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @GFP_KERNEL, align 4
  %69 = call i8* @devm_kcalloc(i32* %64, i32 %67, i32 1, i32 %68)
  %70 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %71 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %70, i32 0, i32 4
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %73 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %72, i32 0, i32 4
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %77, label %76

76:                                               ; preds = %60
  br label %111

77:                                               ; preds = %60
  %78 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %79 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ICE_VSI_LB, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %140

84:                                               ; preds = %77
  %85 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %86 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %90 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i8* @devm_kcalloc(i32* %88, i32 %91, i32 1, i32 %92)
  %94 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %95 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %94, i32 0, i32 5
  store i8* %93, i8** %95, align 8
  %96 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %97 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %96, i32 0, i32 5
  %98 = load i8*, i8** %97, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %84
  br label %102

101:                                              ; preds = %84
  store i32 0, i32* %2, align 4
  br label %140

102:                                              ; preds = %100
  %103 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %104 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %103, i32 0, i32 0
  %105 = load %struct.TYPE_2__*, %struct.TYPE_2__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 0
  %107 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %108 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %107, i32 0, i32 4
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @devm_kfree(i32* %106, i8* %109)
  br label %111

111:                                              ; preds = %102, %76
  %112 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %113 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %117 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %116, i32 0, i32 3
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @devm_kfree(i32* %115, i8* %118)
  br label %120

120:                                              ; preds = %111, %59
  %121 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %122 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %121, i32 0, i32 0
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %126 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %125, i32 0, i32 2
  %127 = load i8*, i8** %126, align 8
  %128 = call i32 @devm_kfree(i32* %124, i8* %127)
  br label %129

129:                                              ; preds = %120, %42
  %130 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %131 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %130, i32 0, i32 0
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %135 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %134, i32 0, i32 1
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @devm_kfree(i32* %133, i8* %136)
  %138 = load i32, i32* @ENOMEM, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %129, %101, %83, %23
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i8* @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @devm_kfree(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
