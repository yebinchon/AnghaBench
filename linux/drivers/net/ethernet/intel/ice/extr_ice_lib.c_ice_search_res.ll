; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_search_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_lib.c_ice_search_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_res_tracker = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@ICE_RES_VALID_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_res_tracker*, i32, i32)* @ice_search_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_search_res(%struct.ice_res_tracker* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ice_res_tracker*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ice_res_tracker* %0, %struct.ice_res_tracker** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %5, align 8
  %13 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sgt i32 %11, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %79

19:                                               ; preds = %3
  %20 = load i32, i32* @ICE_RES_VALID_BIT, align 4
  %21 = load i32, i32* %7, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %70, %19
  %24 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %5, align 8
  %25 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = sext i32 %27 to i64
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @ICE_RES_VALID_BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %23
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %6, align 4
  %39 = add nsw i32 %37, %38
  %40 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %5, align 8
  %41 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sgt i32 %39, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %76

45:                                               ; preds = %35
  br label %46

46:                                               ; preds = %45, %23
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %48, %49
  %51 = icmp eq i32 %47, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load i32, i32* %8, align 4
  store i32 %53, i32* %10, align 4
  br label %54

54:                                               ; preds = %58, %52
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load i32, i32* %7, align 4
  %60 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %5, align 8
  %61 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %10, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32 %59, i32* %66, align 4
  br label %54

67:                                               ; preds = %54
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %4, align 4
  br label %79

69:                                               ; preds = %46
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.ice_res_tracker*, %struct.ice_res_tracker** %5, align 8
  %73 = getelementptr inbounds %struct.ice_res_tracker, %struct.ice_res_tracker* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %23, label %76

76:                                               ; preds = %70, %44
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %76, %67, %16
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
