; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sh_veu_dev = type { i64, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@VEU_BSRR = common dso_local global i32 0, align 4
@VEU_SWR = common dso_local global i32 0, align 4
@VEU_SSR = common dso_local global i32 0, align 4
@VEU_BSSR = common dso_local global i32 0, align 4
@VEU_EDWR = common dso_local global i32 0, align 4
@VEU_DACR = common dso_local global i32 0, align 4
@VEU_SWPR = common dso_local global i32 0, align 4
@VEU_TRCR = common dso_local global i32 0, align 4
@VEU_MCR00 = common dso_local global i32 0, align 4
@VEU_MCR01 = common dso_local global i32 0, align 4
@VEU_MCR02 = common dso_local global i32 0, align 4
@VEU_MCR10 = common dso_local global i32 0, align 4
@VEU_MCR11 = common dso_local global i32 0, align 4
@VEU_MCR12 = common dso_local global i32 0, align 4
@VEU_MCR20 = common dso_local global i32 0, align 4
@VEU_MCR21 = common dso_local global i32 0, align 4
@VEU_MCR22 = common dso_local global i32 0, align 4
@VEU_COFFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sh_veu_dev*)* @sh_veu_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_veu_configure(%struct.sh_veu_dev* %0) #0 {
  %2 = alloca %struct.sh_veu_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sh_veu_dev* %0, %struct.sh_veu_dev** %2, align 8
  %11 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %12 = load i32, i32* @VEU_BSRR, align 4
  %13 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %11, i32 %12, i32 256)
  %14 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %15 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %3, align 4
  %19 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %20 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %25 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ALIGN(i32 %28, i32 16)
  store i32 %29, i32* %4, align 4
  %30 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %31 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %9, align 4
  store i32 %34, i32* %6, align 4
  %35 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %36 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %10, align 4
  store i32 %39, i32* %8, align 4
  %40 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %41 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %7, align 4
  %44 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @sh_veu_scale_h(%struct.sh_veu_dev* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %3, align 4
  %49 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @sh_veu_scale_v(%struct.sh_veu_dev* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %55 = load i32, i32* @VEU_SWR, align 4
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %54, i32 %55, i32 %56)
  %58 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %59 = load i32, i32* @VEU_SSR, align 4
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %5, align 4
  %62 = shl i32 %61, 16
  %63 = or i32 %60, %62
  %64 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %58, i32 %59, i32 %63)
  %65 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %66 = load i32, i32* @VEU_BSSR, align 4
  %67 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %65, i32 %66, i32 0)
  %68 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %69 = load i32, i32* @VEU_EDWR, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %68, i32 %69, i32 %70)
  %72 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %73 = load i32, i32* @VEU_DACR, align 4
  %74 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %72, i32 %73, i32 0)
  %75 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %76 = load i32, i32* @VEU_SWPR, align 4
  %77 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %75, i32 %76, i32 103)
  %78 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %79 = load i32, i32* @VEU_TRCR, align 4
  %80 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %78, i32 %79, i32 393222)
  %81 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %82 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %116

85:                                               ; preds = %1
  %86 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %87 = load i32, i32* @VEU_MCR00, align 4
  %88 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %86, i32 %87, i32 3269)
  %89 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %90 = load i32, i32* @VEU_MCR01, align 4
  %91 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %89, i32 %90, i32 2384)
  %92 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %93 = load i32, i32* @VEU_MCR02, align 4
  %94 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %92, i32 %93, i32 0)
  %95 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %96 = load i32, i32* @VEU_MCR10, align 4
  %97 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %95, i32 %96, i32 14719)
  %98 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %99 = load i32, i32* @VEU_MCR11, align 4
  %100 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %98, i32 %99, i32 2384)
  %101 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %102 = load i32, i32* @VEU_MCR12, align 4
  %103 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %101, i32 %102, i32 15565)
  %104 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %105 = load i32, i32* @VEU_MCR20, align 4
  %106 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %104, i32 %105, i32 0)
  %107 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %108 = load i32, i32* @VEU_MCR21, align 4
  %109 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %107, i32 %108, i32 2384)
  %110 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %111 = load i32, i32* @VEU_MCR22, align 4
  %112 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %110, i32 %111, i32 4131)
  %113 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %2, align 8
  %114 = load i32, i32* @VEU_COFFR, align 4
  %115 = call i32 @sh_veu_reg_write(%struct.sh_veu_dev* %113, i32 %114, i32 8388624)
  br label %116

116:                                              ; preds = %85, %1
  ret void
}

declare dso_local i32 @sh_veu_reg_write(%struct.sh_veu_dev*, i32, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @sh_veu_scale_h(%struct.sh_veu_dev*, i32, i32, i32) #1

declare dso_local i32 @sh_veu_scale_v(%struct.sh_veu_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
