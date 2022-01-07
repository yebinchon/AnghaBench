; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_ds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-7.c_vfe_set_ds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }

@VFE_0_BUS_BDG_DS_CFG_0_CFG = common dso_local global i32 0, align 4
@VFE_0_BUS_BDG_DS_CFG_16_CFG = common dso_local global i32 0, align 4
@VFE_0_BUS_BDG_DS_CFG_0 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_1 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_2 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_3 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_4 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_5 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_6 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_7 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_8 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_9 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_10 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_11 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_12 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_13 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_14 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_15 = common dso_local global i64 0, align 8
@VFE_0_BUS_BDG_DS_CFG_16 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*)* @vfe_set_ds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_set_ds(%struct.vfe_device* %0) #0 {
  %2 = alloca %struct.vfe_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.vfe_device* %0, %struct.vfe_device** %2, align 8
  %5 = load i32, i32* @VFE_0_BUS_BDG_DS_CFG_0_CFG, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* @VFE_0_BUS_BDG_DS_CFG_16_CFG, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %9 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_0, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 %7, i64 %12)
  %14 = load i32, i32* %3, align 4
  %15 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %16 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_1, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 %14, i64 %19)
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %23 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_2, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel_relaxed(i32 %21, i64 %26)
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %30 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_3, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel_relaxed(i32 %28, i64 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %37 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_4, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i32 %35, i64 %40)
  %42 = load i32, i32* %3, align 4
  %43 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %44 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_5, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 %42, i64 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %51 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_6, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 %49, i64 %54)
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %58 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_7, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel_relaxed(i32 %56, i64 %61)
  %63 = load i32, i32* %3, align 4
  %64 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %65 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_8, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @writel_relaxed(i32 %63, i64 %68)
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %72 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_9, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @writel_relaxed(i32 %70, i64 %75)
  %77 = load i32, i32* %3, align 4
  %78 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %79 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_10, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel_relaxed(i32 %77, i64 %82)
  %84 = load i32, i32* %3, align 4
  %85 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %86 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_11, align 8
  %89 = add nsw i64 %87, %88
  %90 = call i32 @writel_relaxed(i32 %84, i64 %89)
  %91 = load i32, i32* %3, align 4
  %92 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %93 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_12, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @writel_relaxed(i32 %91, i64 %96)
  %98 = load i32, i32* %3, align 4
  %99 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %100 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_13, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel_relaxed(i32 %98, i64 %103)
  %105 = load i32, i32* %3, align 4
  %106 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %107 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_14, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel_relaxed(i32 %105, i64 %110)
  %112 = load i32, i32* %3, align 4
  %113 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %114 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_15, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @writel_relaxed(i32 %112, i64 %117)
  %119 = load i32, i32* %4, align 4
  %120 = load %struct.vfe_device*, %struct.vfe_device** %2, align 8
  %121 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @VFE_0_BUS_BDG_DS_CFG_16, align 8
  %124 = add nsw i64 %122, %123
  %125 = call i32 @writel_relaxed(i32 %119, i64 %124)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
