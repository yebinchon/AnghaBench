; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }

@CORE_CFP_ACC = common dso_local global i32 0, align 4
@TCAM_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bcm_sf2_cfp_rst(%struct.bcm_sf2_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcm_sf2_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %3, align 8
  store i32 1000, i32* %4, align 4
  %6 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %7 = load i32, i32* @CORE_CFP_ACC, align 4
  %8 = call i32 @core_readl(%struct.bcm_sf2_priv* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* @TCAM_RESET, align 4
  %10 = load i32, i32* %5, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CORE_CFP_ACC, align 4
  %15 = call i32 @core_writel(%struct.bcm_sf2_priv* %12, i32 %13, i32 %14)
  br label %16

16:                                               ; preds = %27, %1
  %17 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %18 = load i32, i32* @CORE_CFP_ACC, align 4
  %19 = call i32 @core_readl(%struct.bcm_sf2_priv* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @TCAM_RESET, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %31

25:                                               ; preds = %16
  %26 = call i32 (...) @cpu_relax()
  br label %27

27:                                               ; preds = %25
  %28 = load i32, i32* %4, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %4, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %16, label %31

31:                                               ; preds = %27, %24
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %31
  %35 = load i32, i32* @ETIMEDOUT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
