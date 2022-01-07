; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, %struct.ice_pf* }
%struct.ice_pf = type { i64, %struct.TYPE_2__*, i32, %struct.ice_vsi** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"vsi does not exist at pf->vsi[%d]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_vsi_clear(%struct.ice_vsi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ice_vsi*, align 8
  %4 = alloca %struct.ice_pf*, align 8
  store %struct.ice_vsi* %0, %struct.ice_vsi** %3, align 8
  store %struct.ice_pf* null, %struct.ice_pf** %4, align 8
  %5 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %6 = icmp ne %struct.ice_vsi* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %87

8:                                                ; preds = %1
  %9 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %10 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %9, i32 0, i32 1
  %11 = load %struct.ice_pf*, %struct.ice_pf** %10, align 8
  %12 = icmp ne %struct.ice_pf* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %8
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %87

16:                                               ; preds = %8
  %17 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %18 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %17, i32 0, i32 1
  %19 = load %struct.ice_pf*, %struct.ice_pf** %18, align 8
  store %struct.ice_pf* %19, %struct.ice_pf** %4, align 8
  %20 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %21 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %20, i32 0, i32 3
  %22 = load %struct.ice_vsi**, %struct.ice_vsi*** %21, align 8
  %23 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %24 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %22, i64 %25
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %26, align 8
  %28 = icmp ne %struct.ice_vsi* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %31 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %30, i32 0, i32 3
  %32 = load %struct.ice_vsi**, %struct.ice_vsi*** %31, align 8
  %33 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %34 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %32, i64 %35
  %37 = load %struct.ice_vsi*, %struct.ice_vsi** %36, align 8
  %38 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %39 = icmp ne %struct.ice_vsi* %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %29, %16
  %41 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %42 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %46 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @dev_dbg(i32* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %87

51:                                               ; preds = %29
  %52 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %53 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %52, i32 0, i32 2
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %56 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %55, i32 0, i32 3
  %57 = load %struct.ice_vsi**, %struct.ice_vsi*** %56, align 8
  %58 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %59 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.ice_vsi*, %struct.ice_vsi** %57, i64 %60
  store %struct.ice_vsi* null, %struct.ice_vsi** %61, align 8
  %62 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %63 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %66 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %51
  %70 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %71 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %74 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %69, %51
  %76 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %77 = call i32 @ice_vsi_free_arrays(%struct.ice_vsi* %76)
  %78 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %79 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %78, i32 0, i32 2
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load %struct.ice_pf*, %struct.ice_pf** %4, align 8
  %82 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %81, i32 0, i32 1
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load %struct.ice_vsi*, %struct.ice_vsi** %3, align 8
  %86 = call i32 @devm_kfree(i32* %84, %struct.ice_vsi* %85)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %75, %40, %13, %7
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @dev_dbg(i32*, i8*, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ice_vsi_free_arrays(%struct.ice_vsi*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
