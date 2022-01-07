; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc_q_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_alloc_q_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32, i64*, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"VSI %d has existing q_vectors\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Failed to allocate %d q_vector for VSI %d, ret=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_vsi_alloc_q_vectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_vsi_alloc_q_vectors(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  %8 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %9 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %8, i32 0, i32 3
  %10 = load %struct.ice_pf*, %struct.ice_pf** %9, align 8
  store %struct.ice_pf* %10, %struct.ice_pf** %4, align 8
  store i32 0, i32* %5, align 4
  %11 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %12 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = getelementptr inbounds i64, i64* %13, i64 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %19 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %23 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32* %21, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EEXIST, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %73

28:                                               ; preds = %1
  %29 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %30 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %44, %28
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %32
  %37 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @ice_vsi_alloc_q_vector(%struct.ice_vsi* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %48

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %32

47:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %73

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %53, %48
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %5, align 4
  %52 = icmp ne i32 %50, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ice_free_q_vector(%struct.ice_vsi* %54, i32 %55)
  br label %49

57:                                               ; preds = %49
  %58 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %59 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %63 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %66 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @dev_err(i32* %61, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %64, i32 %67, i32 %68)
  %70 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %71 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %70, i32 0, i32 0
  store i32 0, i32* %71, align 8
  %72 = load i32, i32* %7, align 4
  store i32 %72, i32* %2, align 4
  br label %73

73:                                               ; preds = %57, %47, %17
  %74 = load i32, i32* %2, align 4
  ret i32 %74
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ice_vsi_alloc_q_vector(%struct.ice_vsi*, i32) #1

declare dso_local i32 @ice_free_q_vector(%struct.ice_vsi*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
