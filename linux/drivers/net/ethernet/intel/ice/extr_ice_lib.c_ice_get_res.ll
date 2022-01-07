; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_get_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_get_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ice_res_tracker = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@ICE_RES_VALID_BIT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"param err: needed=%d, num_entries = %d id=0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_get_res(%struct.ice_pf* %0, %struct.ice_res_tracker* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ice_pf*, align 8
  %7 = alloca %struct.ice_res_tracker*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ice_pf* %0, %struct.ice_pf** %6, align 8
  store %struct.ice_res_tracker* %1, %struct.ice_res_tracker** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %7, align 8
  %11 = icmp ne %struct.ice_res_tracker* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %14 = icmp ne %struct.ice_pf* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %49

18:                                               ; preds = %12
  %19 = load i64, i64* %8, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %7, align 8
  %24 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @ICE_RES_VALID_BIT, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %27, %21, %18
  %32 = load %struct.ice_pf*, %struct.ice_pf** %6, align 8
  %33 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %8, align 8
  %37 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %7, align 8
  %38 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 @dev_err(i32* %35, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %36, i64 %39, i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %49

44:                                               ; preds = %27
  %45 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @ice_search_res(%struct.ice_res_tracker* %45, i64 %46, i64 %47)
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %44, %31, %15
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(i32*, i8*, i64, i64, i64) #1

declare dso_local i32 @ice_search_res(%struct.ice_res_tracker*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
