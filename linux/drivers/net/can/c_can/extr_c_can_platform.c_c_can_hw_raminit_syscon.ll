; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can_platform.c_c_can_hw_raminit_syscon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can_platform.c_c_can_hw_raminit_syscon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_can_priv = type { %struct.c_can_raminit }
%struct.c_can_raminit = type { %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@raminit_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c_can_priv*, i32)* @c_can_hw_raminit_syscon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_hw_raminit_syscon(%struct.c_can_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.c_can_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.c_can_raminit*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.c_can_priv* %0, %struct.c_can_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %9 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %8, i32 0, i32 0
  store %struct.c_can_raminit* %9, %struct.c_can_raminit** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = call i32 @spin_lock(i32* @raminit_lock)
  %11 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %12 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 1, %14
  %16 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %17 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %15, %20
  store i32 %21, i32* %7, align 4
  %22 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %23 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %26 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @regmap_read(i32 %24, i32 %27, i32* %6)
  %29 = load i32, i32* %7, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %34 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %37 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @regmap_update_bits(i32 %35, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %43 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %44 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = shl i32 1, %46
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @c_can_hw_raminit_wait_syscon(%struct.c_can_priv* %42, i32 %47, i32 %48)
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %118

52:                                               ; preds = %2
  %53 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %54 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = shl i32 1, %56
  %58 = load i32, i32* %6, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %6, align 4
  %60 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %61 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* %6, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %68 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %71 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @regmap_update_bits(i32 %69, i32 %72, i32 %73, i32 %74)
  %76 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %77 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = shl i32 1, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %6, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %6, align 4
  %84 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %85 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %106

88:                                               ; preds = %52
  %89 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %90 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = shl i32 1, %92
  %94 = xor i32 %93, -1
  %95 = load i32, i32* %6, align 4
  %96 = and i32 %95, %94
  store i32 %96, i32* %6, align 4
  %97 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %98 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %101 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @regmap_update_bits(i32 %99, i32 %102, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %88, %52
  %107 = load %struct.c_can_raminit*, %struct.c_can_raminit** %5, align 8
  %108 = getelementptr inbounds %struct.c_can_raminit, %struct.c_can_raminit* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 1, %110
  %112 = load i32, i32* %6, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %6, align 4
  %114 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %6, align 4
  %117 = call i32 @c_can_hw_raminit_wait_syscon(%struct.c_can_priv* %114, i32 %115, i32 %116)
  br label %118

118:                                              ; preds = %106, %2
  %119 = call i32 @spin_unlock(i32* @raminit_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @c_can_hw_raminit_wait_syscon(%struct.c_can_priv*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
