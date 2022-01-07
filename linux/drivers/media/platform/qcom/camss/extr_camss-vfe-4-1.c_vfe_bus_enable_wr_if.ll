; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_bus_enable_wr_if.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/camss/extr_camss-vfe-4-1.c_vfe_bus_enable_wr_if.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfe_device = type { i64 }

@VFE_0_BUS_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfe_device*, i64)* @vfe_bus_enable_wr_if to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfe_bus_enable_wr_if(%struct.vfe_device* %0, i64 %1) #0 {
  %3 = alloca %struct.vfe_device*, align 8
  %4 = alloca i64, align 8
  store %struct.vfe_device* %0, %struct.vfe_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %9 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VFE_0_BUS_CFG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @writel_relaxed(i32 268435465, i64 %12)
  br label %21

14:                                               ; preds = %2
  %15 = load %struct.vfe_device*, %struct.vfe_device** %3, align 8
  %16 = getelementptr inbounds %struct.vfe_device, %struct.vfe_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VFE_0_BUS_CFG, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel_relaxed(i32 0, i64 %19)
  br label %21

21:                                               ; preds = %14, %7
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
