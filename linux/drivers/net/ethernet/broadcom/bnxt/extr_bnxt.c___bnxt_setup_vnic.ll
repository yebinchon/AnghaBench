; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_setup_vnic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_setup_vnic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, %struct.bnxt_vnic_info* }
%struct.bnxt_vnic_info = type { i32 }

@BNXT_VNIC_RFS_NEW_RSS_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"hwrm vnic %d alloc failure rc: %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"hwrm vnic %d cos ctx alloc failure rc: %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"hwrm vnic %d cfg failure rc: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"hwrm vnic %d set rss failure rc: %x\0A\00", align 1
@BNXT_FLAG_AGG_RINGS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"hwrm vnic %d set hds failure rc: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i64)* @__bnxt_setup_vnic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bnxt_setup_vnic(%struct.bnxt* %0, i64 %1) #0 {
  %3 = alloca %struct.bnxt*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.bnxt_vnic_info*, align 8
  %6 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %8 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %7, i32 0, i32 3
  %9 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %8, align 8
  %10 = load i64, i64* %4, align 8
  %11 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %9, i64 %10
  store %struct.bnxt_vnic_info* %11, %struct.bnxt_vnic_info** %5, align 8
  %12 = load %struct.bnxt_vnic_info*, %struct.bnxt_vnic_info** %5, align 8
  %13 = getelementptr inbounds %struct.bnxt_vnic_info, %struct.bnxt_vnic_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BNXT_VNIC_RFS_NEW_RSS_FLAG, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %59

19:                                               ; preds = %2
  %20 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt* %20, i64 %21, i32 0)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %19
  %26 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %27 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @netdev_err(i32 %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %29, i32 %30)
  br label %107

32:                                               ; preds = %19
  %33 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %34 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %38 = call i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %58

40:                                               ; preds = %32
  %41 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %42 = load i64, i64* %4, align 8
  %43 = call i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt* %41, i64 %42, i32 1)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %48 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @netdev_err(i32 %49, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %50, i32 %51)
  br label %107

53:                                               ; preds = %40
  %54 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %55 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 8
  br label %58

58:                                               ; preds = %53, %32
  br label %59

59:                                               ; preds = %58, %18
  %60 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %61 = load i64, i64* %4, align 8
  %62 = call i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt* %60, i64 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @netdev_err(i32 %68, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i64 %69, i32 %70)
  br label %107

72:                                               ; preds = %59
  %73 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %74 = load i64, i64* %4, align 8
  %75 = call i32 @bnxt_hwrm_vnic_set_rss(%struct.bnxt* %73, i64 %74, i32 1)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %80 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @netdev_err(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %82, i32 %83)
  br label %107

85:                                               ; preds = %72
  %86 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BNXT_FLAG_AGG_RINGS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %106

92:                                               ; preds = %85
  %93 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %94 = load i64, i64* %4, align 8
  %95 = call i32 @bnxt_hwrm_vnic_set_hds(%struct.bnxt* %93, i64 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.bnxt*, %struct.bnxt** %3, align 8
  %100 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @netdev_err(i32 %101, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64 %102, i32 %103)
  br label %105

105:                                              ; preds = %98, %92
  br label %106

106:                                              ; preds = %105, %85
  br label %107

107:                                              ; preds = %106, %78, %65, %46, %25
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt*, i64, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64, i32) #1

declare dso_local i64 @BNXT_CHIP_TYPE_NITRO_A0(%struct.bnxt*) #1

declare dso_local i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt*, i64) #1

declare dso_local i32 @bnxt_hwrm_vnic_set_rss(%struct.bnxt*, i64, i32) #1

declare dso_local i32 @bnxt_hwrm_vnic_set_hds(%struct.bnxt*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
