; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/samsung/extr_exynos-srom.c_exynos_srom_configure_bank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/samsung/extr_exynos-srom.c_exynos_srom_configure_bank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_srom = type { i64 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"reg-io-width\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"samsung,srom-page-mode\00", align 1
@EXYNOS_SROM_BCX__PMC__SHIFT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"samsung,srom-timing\00", align 1
@EXYNOS_SROM_BW__BYTEENABLE__SHIFT = common dso_local global i32 0, align 4
@EXYNOS_SROM_BW__DATAWIDTH__SHIFT = common dso_local global i32 0, align 4
@EXYNOS_SROM_BW = common dso_local global i64 0, align 8
@EXYNOS_SROM_BW__CS_MASK = common dso_local global i32 0, align 4
@EXYNOS_SROM_BCX__TACP__SHIFT = common dso_local global i32 0, align 4
@EXYNOS_SROM_BCX__TCAH__SHIFT = common dso_local global i32 0, align 4
@EXYNOS_SROM_BCX__TCOH__SHIFT = common dso_local global i32 0, align 4
@EXYNOS_SROM_BCX__TACC__SHIFT = common dso_local global i32 0, align 4
@EXYNOS_SROM_BCX__TCOS__SHIFT = common dso_local global i32 0, align 4
@EXYNOS_SROM_BCX__TACS__SHIFT = common dso_local global i32 0, align 4
@EXYNOS_SROM_BC0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_srom*, %struct.device_node*)* @exynos_srom_configure_bank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos_srom_configure_bank(%struct.exynos_srom* %0, %struct.device_node* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.exynos_srom*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [6 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.exynos_srom* %0, %struct.exynos_srom** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i64 @of_property_read_u32(%struct.device_node* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %6)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %116

18:                                               ; preds = %2
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i64 @of_property_read_u32(%struct.device_node* %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %7)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 1, i32* %7, align 4
  br label %23

23:                                               ; preds = %22, %18
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i64 @of_property_read_bool(%struct.device_node* %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EXYNOS_SROM_BCX__PMC__SHIFT, align 4
  %29 = shl i32 1, %28
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %23
  %31 = load %struct.device_node*, %struct.device_node** %5, align 8
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %33 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %34 = call i32 @ARRAY_SIZE(i32* %33)
  %35 = call i64 @of_property_read_u32_array(%struct.device_node* %31, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %32, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %116

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  %42 = mul nsw i32 %41, 4
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* @EXYNOS_SROM_BW__BYTEENABLE__SHIFT, align 4
  %44 = shl i32 1, %43
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %52

47:                                               ; preds = %40
  %48 = load i32, i32* @EXYNOS_SROM_BW__DATAWIDTH__SHIFT, align 4
  %49 = shl i32 1, %48
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  br label %52

52:                                               ; preds = %47, %40
  %53 = load %struct.exynos_srom*, %struct.exynos_srom** %4, align 8
  %54 = getelementptr inbounds %struct.exynos_srom, %struct.exynos_srom* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @EXYNOS_SROM_BW, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl_relaxed(i64 %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @EXYNOS_SROM_BW__CS_MASK, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 %60, %61
  %63 = xor i32 %62, -1
  %64 = and i32 %59, %63
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %6, align 4
  %67 = shl i32 %65, %66
  %68 = or i32 %64, %67
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.exynos_srom*, %struct.exynos_srom** %4, align 8
  %71 = getelementptr inbounds %struct.exynos_srom, %struct.exynos_srom* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @EXYNOS_SROM_BW, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writel_relaxed(i32 %69, i64 %74)
  %76 = load i32, i32* %8, align 4
  %77 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 0
  %78 = load i32, i32* %77, align 16
  %79 = load i32, i32* @EXYNOS_SROM_BCX__TACP__SHIFT, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %76, %80
  %82 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @EXYNOS_SROM_BCX__TCAH__SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %81, %85
  %87 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @EXYNOS_SROM_BCX__TCOH__SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = or i32 %86, %90
  %92 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @EXYNOS_SROM_BCX__TACC__SHIFT, align 4
  %95 = shl i32 %93, %94
  %96 = or i32 %91, %95
  %97 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 4
  %98 = load i32, i32* %97, align 16
  %99 = load i32, i32* @EXYNOS_SROM_BCX__TCOS__SHIFT, align 4
  %100 = shl i32 %98, %99
  %101 = or i32 %96, %100
  %102 = getelementptr inbounds [6 x i32], [6 x i32]* %9, i64 0, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @EXYNOS_SROM_BCX__TACS__SHIFT, align 4
  %105 = shl i32 %103, %104
  %106 = or i32 %101, %105
  %107 = load %struct.exynos_srom*, %struct.exynos_srom** %4, align 8
  %108 = getelementptr inbounds %struct.exynos_srom, %struct.exynos_srom* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @EXYNOS_SROM_BC0, align 8
  %111 = add nsw i64 %109, %110
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = call i32 @writel_relaxed(i32 %106, i64 %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %52, %37, %15
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i64 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i64 @of_property_read_u32_array(%struct.device_node*, i8*, i32*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
