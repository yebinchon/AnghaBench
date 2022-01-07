; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { i32 }

@CORE_CFP_ACC = common dso_local global i32 0, align 4
@OP_SEL_MASK = common dso_local global i32 0, align 4
@RAM_SEL_MASK = common dso_local global i32 0, align 4
@OP_STR_DONE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sf2_priv*, i32)* @bcm_sf2_cfp_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcm_sf2_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 1000, i32* %6, align 4
  %8 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %9 = load i32, i32* @CORE_CFP_ACC, align 4
  %10 = call i32 @core_readl(%struct.bcm_sf2_priv* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @OP_SEL_MASK, align 4
  %12 = load i32, i32* @RAM_SEL_MASK, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* @OP_STR_DONE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @CORE_CFP_ACC, align 4
  %25 = call i32 @core_writel(%struct.bcm_sf2_priv* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %37, %2
  %27 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %4, align 8
  %28 = load i32, i32* @CORE_CFP_ACC, align 4
  %29 = call i32 @core_readl(%struct.bcm_sf2_priv* %27, i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @OP_STR_DONE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %41

35:                                               ; preds = %26
  %36 = call i32 (...) @cpu_relax()
  br label %37

37:                                               ; preds = %35
  %38 = load i32, i32* %6, align 4
  %39 = add i32 %38, -1
  store i32 %39, i32* %6, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %26, label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @ETIMEDOUT, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, i32* %3, align 4
  ret i32 %49
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
