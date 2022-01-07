; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_delete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_vsi_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i64, i32, i32, i32, i32, %struct.ice_pf* }
%struct.ice_pf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ice_vsi_ctx = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ICE_VSI_VF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to delete VSI %i in FW\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_vsi_delete(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  %4 = alloca %struct.ice_vsi_ctx*, align 8
  %5 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %6 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %7 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %6, i32 0, i32 5
  %8 = load %struct.ice_pf*, %struct.ice_pf** %7, align 8
  store %struct.ice_pf* %8, %struct.ice_pf** %3, align 8
  %9 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %10 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ice_vsi_ctx* @devm_kzalloc(i32* %12, i32 12, i32 %13)
  store %struct.ice_vsi_ctx* %14, %struct.ice_vsi_ctx** %4, align 8
  %15 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %4, align 8
  %16 = icmp ne %struct.ice_vsi_ctx* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %66

18:                                               ; preds = %1
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %20 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ICE_VSI_VF, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %26 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %32 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %4, align 8
  %35 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.ice_vsi_ctx, %struct.ice_vsi_ctx* %36, i32 0, i32 0
  %38 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %39 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %38, i32 0, i32 3
  %40 = call i32 @memcpy(i32* %37, i32* %39, i32 4)
  %41 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %42 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %41, i32 0, i32 1
  %43 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %44 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %4, align 8
  %47 = call i32 @ice_free_vsi(i32* %42, i32 %45, %struct.ice_vsi_ctx* %46, i32 0, i32* null)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %30
  %51 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %52 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %56 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32* %54, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %50, %30
  %60 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %61 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.ice_vsi_ctx*, %struct.ice_vsi_ctx** %4, align 8
  %65 = call i32 @devm_kfree(i32* %63, %struct.ice_vsi_ctx* %64)
  br label %66

66:                                               ; preds = %59, %17
  ret void
}

declare dso_local %struct.ice_vsi_ctx* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ice_free_vsi(i32*, i32, %struct.ice_vsi_ctx*, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @devm_kfree(i32*, %struct.ice_vsi_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
