; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_del_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_del_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@OP_SEL_READ = common dso_local global i32 0, align 4
@TCAM_SEL = common dso_local global i32 0, align 4
@CHAIN_ID_MASK = common dso_local global i32 0, align 4
@SLICE_VALID = common dso_local global i32 0, align 4
@OP_SEL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sf2_priv*, i32, i32, i32*)* @bcm_sf2_cfp_rule_del_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_rule_del_one(%struct.bcm_sf2_priv* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcm_sf2_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv* %12, i32 %13)
  %15 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %16 = load i32, i32* @OP_SEL_READ, align 4
  %17 = load i32, i32* @TCAM_SEL, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %70

24:                                               ; preds = %4
  %25 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %26 = call i32 @CORE_CFP_DATA_PORT(i32 6)
  %27 = call i32 @core_readl(%struct.bcm_sf2_priv* %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = ashr i32 %31, 24
  %33 = load i32, i32* @CHAIN_ID_MASK, align 4
  %34 = and i32 %32, %33
  %35 = load i32*, i32** %9, align 8
  store i32 %34, i32* %35, align 4
  br label %36

36:                                               ; preds = %30, %24
  %37 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %38 = call i32 @CORE_CFP_DATA_PORT(i32 0)
  %39 = call i32 @core_readl(%struct.bcm_sf2_priv* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* @SLICE_VALID, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %11, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %11, align 4
  %44 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @CORE_CFP_DATA_PORT(i32 0)
  %47 = call i32 @core_writel(%struct.bcm_sf2_priv* %44, i32 %45, i32 %46)
  %48 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %49 = load i32, i32* @OP_SEL_WRITE, align 4
  %50 = load i32, i32* @TCAM_SEL, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %48, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %10, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %36
  %56 = load i32, i32* %10, align 4
  store i32 %56, i32* %5, align 4
  br label %70

57:                                               ; preds = %36
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %60 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clear_bit(i32 %58, i32 %62)
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %6, align 8
  %66 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @clear_bit(i32 %64, i32 %68)
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %57, %55, %22
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @CORE_CFP_DATA_PORT(i32) #1

declare dso_local i32 @core_writel(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
