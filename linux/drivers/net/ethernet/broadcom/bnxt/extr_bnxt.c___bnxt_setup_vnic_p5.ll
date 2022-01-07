; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_setup_vnic_p5.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c___bnxt_setup_vnic_p5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"hwrm vnic %d ctx %d alloc failure rc: %x\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"hwrm vnic %d set rss failure rc: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"hwrm vnic %d cfg failure rc: %x\0A\00", align 1
@BNXT_FLAG_AGG_RINGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"hwrm vnic %d set hds failure rc: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, i32)* @__bnxt_setup_vnic_p5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__bnxt_setup_vnic_p5(%struct.bnxt* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %10 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @DIV_ROUND_UP(i32 %11, i32 64)
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %37, %2
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt* %18, i32 %19, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %17
  %25 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %26 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 (i32, i8*, i32, i32, ...) @netdev_err(i32 %27, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29, i32 %30)
  br label %40

32:                                               ; preds = %17
  %33 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %34 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %13

40:                                               ; preds = %24, %13
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %98

47:                                               ; preds = %40
  %48 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @bnxt_hwrm_vnic_set_rss_p5(%struct.bnxt* %48, i32 %49, i32 1)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %55 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = call i32 (i32, i8*, i32, i32, ...) @netdev_err(i32 %56, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %98

61:                                               ; preds = %47
  %62 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt* %62, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %69 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 (i32, i8*, i32, i32, ...) @netdev_err(i32 %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %71, i32 %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %98

75:                                               ; preds = %61
  %76 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %77 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @BNXT_FLAG_AGG_RINGS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @bnxt_hwrm_vnic_set_hds(%struct.bnxt* %83, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %90 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 (i32, i8*, i32, i32, ...) @netdev_err(i32 %91, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %82
  br label %96

96:                                               ; preds = %95, %75
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %96, %67, %53, %44
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @bnxt_hwrm_vnic_ctx_alloc(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @bnxt_hwrm_vnic_set_rss_p5(%struct.bnxt*, i32, i32) #1

declare dso_local i32 @bnxt_hwrm_vnic_cfg(%struct.bnxt*, i32) #1

declare dso_local i32 @bnxt_hwrm_vnic_set_hds(%struct.bnxt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
