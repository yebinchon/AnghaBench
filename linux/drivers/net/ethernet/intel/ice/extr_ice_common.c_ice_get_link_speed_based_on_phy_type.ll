; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_link_speed_based_on_phy_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_get_link_speed_based_on_phy_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ICE_AQ_LINK_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_100MB = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_1000MB = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_2500MB = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_5GB = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_10GB = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_25GB = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_40GB = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_50GB = common dso_local global i64 0, align 8
@ICE_AQ_LINK_SPEED_100GB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @ice_get_link_speed_based_on_phy_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ice_get_link_speed_based_on_phy_type(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  store i64 %9, i64* %7, align 8
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %29 [
    i32 187, label %11
    i32 173, label %11
    i32 188, label %13
    i32 189, label %13
    i32 190, label %13
    i32 191, label %13
    i32 165, label %13
    i32 163, label %15
    i32 162, label %15
    i32 164, label %15
    i32 128, label %17
    i32 129, label %17
    i32 169, label %19
    i32 166, label %19
    i32 170, label %19
    i32 171, label %19
    i32 172, label %19
    i32 168, label %19
    i32 167, label %19
    i32 153, label %21
    i32 161, label %21
    i32 159, label %21
    i32 160, label %21
    i32 154, label %21
    i32 155, label %21
    i32 158, label %21
    i32 156, label %21
    i32 157, label %21
    i32 152, label %21
    i32 151, label %21
    i32 150, label %23
    i32 147, label %23
    i32 148, label %23
    i32 149, label %23
    i32 145, label %23
    i32 146, label %23
    i32 143, label %25
    i32 136, label %25
    i32 138, label %25
    i32 141, label %25
    i32 130, label %25
    i32 131, label %25
    i32 132, label %25
    i32 133, label %25
    i32 144, label %25
    i32 137, label %25
    i32 142, label %25
    i32 139, label %25
    i32 140, label %25
    i32 134, label %25
    i32 135, label %25
    i32 185, label %27
    i32 178, label %27
    i32 180, label %27
    i32 182, label %27
    i32 174, label %27
    i32 175, label %27
    i32 176, label %27
    i32 177, label %27
    i32 184, label %27
    i32 181, label %27
    i32 186, label %27
    i32 179, label %27
    i32 183, label %27
  ]

11:                                               ; preds = %2, %2
  %12 = load i64, i64* @ICE_AQ_LINK_SPEED_100MB, align 8
  store i64 %12, i64* %7, align 8
  br label %31

13:                                               ; preds = %2, %2, %2, %2, %2
  %14 = load i64, i64* @ICE_AQ_LINK_SPEED_1000MB, align 8
  store i64 %14, i64* %7, align 8
  br label %31

15:                                               ; preds = %2, %2, %2
  %16 = load i64, i64* @ICE_AQ_LINK_SPEED_2500MB, align 8
  store i64 %16, i64* %7, align 8
  br label %31

17:                                               ; preds = %2, %2
  %18 = load i64, i64* @ICE_AQ_LINK_SPEED_5GB, align 8
  store i64 %18, i64* %7, align 8
  br label %31

19:                                               ; preds = %2, %2, %2, %2, %2, %2, %2
  %20 = load i64, i64* @ICE_AQ_LINK_SPEED_10GB, align 8
  store i64 %20, i64* %7, align 8
  br label %31

21:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %22 = load i64, i64* @ICE_AQ_LINK_SPEED_25GB, align 8
  store i64 %22, i64* %7, align 8
  br label %31

23:                                               ; preds = %2, %2, %2, %2, %2, %2
  %24 = load i64, i64* @ICE_AQ_LINK_SPEED_40GB, align 8
  store i64 %24, i64* %7, align 8
  br label %31

25:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %26 = load i64, i64* @ICE_AQ_LINK_SPEED_50GB, align 8
  store i64 %26, i64* %7, align 8
  br label %31

27:                                               ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %28 = load i64, i64* @ICE_AQ_LINK_SPEED_100GB, align 8
  store i64 %28, i64* %7, align 8
  br label %31

29:                                               ; preds = %2
  %30 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  store i64 %30, i64* %7, align 8
  br label %31

31:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %13, %11
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %35 [
    i32 196, label %33
    i32 192, label %33
    i32 193, label %33
    i32 194, label %33
    i32 195, label %33
  ]

33:                                               ; preds = %31, %31, %31, %31, %31
  %34 = load i64, i64* @ICE_AQ_LINK_SPEED_100GB, align 8
  store i64 %34, i64* %6, align 8
  br label %37

35:                                               ; preds = %31
  %36 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  store i64 %36, i64* %6, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  store i64 %46, i64* %3, align 8
  br label %69

47:                                               ; preds = %41, %37
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  store i64 %56, i64* %3, align 8
  br label %69

57:                                               ; preds = %51, %47
  %58 = load i64, i64* %7, align 8
  %59 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %57
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* @ICE_AQ_LINK_SPEED_UNKNOWN, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %3, align 8
  br label %69

67:                                               ; preds = %61, %57
  %68 = load i64, i64* %6, align 8
  store i64 %68, i64* %3, align 8
  br label %69

69:                                               ; preds = %67, %65, %55, %45
  %70 = load i64, i64* %3, align 8
  ret i64 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
