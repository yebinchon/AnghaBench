; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_req_irq_msix_misc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_req_irq_msix_misc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { i32, i32, i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.ice_hw }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ice_hw = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s-%s:misc\00", align 1
@ICE_RES_MISC_VEC_ID = common dso_local global i32 0, align 4
@ice_misc_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"devm_request_irq for %s failed: %d\0A\00", align 1
@ICE_RX_ITR = common dso_local global i32 0, align 4
@ICE_ITR_8K = common dso_local global i32 0, align 4
@ICE_ITR_GRAN_S = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_pf*)* @ice_req_irq_msix_misc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_req_irq_msix_misc(%struct.ice_pf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ice_pf* %0, %struct.ice_pf** %3, align 8
  %7 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %8 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %7, i32 0, i32 7
  store %struct.ice_hw* %8, %struct.ice_hw** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %30, label %15

15:                                               ; preds = %1
  %16 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %17 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %20 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %19, i32 0, i32 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = call i8* @dev_driver_string(i32* %22)
  %24 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %25 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %24, i32 0, i32 4
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = call i8* @dev_name(i32* %27)
  %29 = call i32 @snprintf(i32* %18, i32 7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %28)
  br label %30

30:                                               ; preds = %15, %1
  %31 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %32 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @ice_is_reset_in_progress(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %99

37:                                               ; preds = %30
  %38 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %39 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %40 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @ICE_RES_MISC_VEC_ID, align 4
  %43 = call i32 @ice_get_res(%struct.ice_pf* %38, i32 %41, i32 1, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %2, align 4
  br label %124

48:                                               ; preds = %37
  %49 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %50 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %55 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %57 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %61 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %64 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @ice_misc_intr, align 4
  %71 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %72 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %75 = call i32 @devm_request_irq(i32* %59, i32 %69, i32 %70, i32 0, i32* %73, %struct.ice_pf* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %98

78:                                               ; preds = %48
  %79 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %80 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %79, i32 0, i32 4
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %84 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @dev_err(i32* %82, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32* %85, i32 %86)
  %88 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %89 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @ICE_RES_MISC_VEC_ID, align 4
  %92 = call i32 @ice_free_res(i32 %90, i32 1, i32 %91)
  %93 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %94 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 8
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %124

98:                                               ; preds = %48
  br label %99

99:                                               ; preds = %98, %36
  %100 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %101 = call i32 @ice_ena_misc_vector(%struct.ice_pf* %100)
  %102 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %103 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %104 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = sext i32 %105 to i64
  %107 = call i32 @ice_ena_ctrlq_interrupts(%struct.ice_hw* %102, i64 %106)
  %108 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %109 = load i32, i32* @ICE_RX_ITR, align 4
  %110 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %111 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = call i32 @GLINT_ITR(i32 %109, i64 %113)
  %115 = load i32, i32* @ICE_ITR_8K, align 4
  %116 = call i32 @ITR_REG_ALIGN(i32 %115)
  %117 = load i32, i32* @ICE_ITR_GRAN_S, align 4
  %118 = ashr i32 %116, %117
  %119 = call i32 @wr32(%struct.ice_hw* %108, i32 %114, i32 %118)
  %120 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %121 = call i32 @ice_flush(%struct.ice_hw* %120)
  %122 = load %struct.ice_hw*, %struct.ice_hw** %4, align 8
  %123 = call i32 @ice_irq_dynamic_ena(%struct.ice_hw* %122, i32* null, i32* null)
  store i32 0, i32* %2, align 4
  br label %124

124:                                              ; preds = %99, %78, %46
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @dev_driver_string(i32*) #1

declare dso_local i8* @dev_name(i32*) #1

declare dso_local i64 @ice_is_reset_in_progress(i32) #1

declare dso_local i32 @ice_get_res(%struct.ice_pf*, i32, i32, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32*, %struct.ice_pf*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32*, i32) #1

declare dso_local i32 @ice_free_res(i32, i32, i32) #1

declare dso_local i32 @ice_ena_misc_vector(%struct.ice_pf*) #1

declare dso_local i32 @ice_ena_ctrlq_interrupts(%struct.ice_hw*, i64) #1

declare dso_local i32 @wr32(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @GLINT_ITR(i32, i64) #1

declare dso_local i32 @ITR_REG_ALIGN(i32) #1

declare dso_local i32 @ice_flush(%struct.ice_hw*) #1

declare dso_local i32 @ice_irq_dynamic_ena(%struct.ice_hw*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
