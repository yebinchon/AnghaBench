; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_setup_vector_base.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_setup_vector_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i32, i32, i32, i64, %struct.ice_pf* }
%struct.ice_pf = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@ICE_VSI_VF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"VSI %d has non-zero base vector %d\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"Failed to get tracking for %d vectors for VSI %d, err=%d\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_vsi_setup_vector_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_setup_vector_base(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i64, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %6 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %7 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %6, i32 0, i32 5
  %8 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  store %struct.ice_pf* %8, %struct.ice_pf** %4, align 8
  %9 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @ICE_VSI_VF, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %17 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %15
  %21 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %22 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %26 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %29 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load i32, i32* @EEXIST, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %76

34:                                               ; preds = %15
  %35 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %36 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %5, align 8
  %38 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %39 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %40 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %44 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ice_get_res(%struct.ice_pf* %38, i32 %41, i64 %42, i32 %45)
  %47 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %48 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %50 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %34
  %54 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %55 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %5, align 8
  %59 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %60 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %63 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_err(i32* %57, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %58, i32 %61, i32 %64)
  %66 = load i32, i32* @ENOENT, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %2, align 4
  br label %76

68:                                               ; preds = %34
  %69 = load i64, i64* %5, align 8
  %70 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %71 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = sub nsw i64 %73, %69
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 8
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %68, %53, %20, %14
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ice_get_res(%struct.ice_pf*, i32, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
