; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_cfp_stat = type { i32, i32 }
%struct.dsa_switch = type { i32 }
%struct.bcm_sf2_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cfp_rule = type { i32 }

@bcm_sf2_cfp_stats = common dso_local global %struct.bcm_sf2_cfp_stat* null, align 8
@OP_SEL_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bcm_sf2_cfp_get_ethtool_stats(%struct.dsa_switch* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bcm_sf2_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bcm_sf2_cfp_stat*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cfp_rule*, align 8
  %14 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %15 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %16 = call %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch* %15)
  store %struct.bcm_sf2_priv* %16, %struct.bcm_sf2_priv** %7, align 8
  %17 = load %struct.bcm_sf2_cfp_stat*, %struct.bcm_sf2_cfp_stat** @bcm_sf2_cfp_stats, align 8
  %18 = call i32 @ARRAY_SIZE(%struct.bcm_sf2_cfp_stat* %17)
  store i32 %18, i32* %8, align 4
  %19 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %20 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  store i32 1, i32* %10, align 4
  br label %23

23:                                               ; preds = %80, %3
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %26 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ult i32 %24, %27
  br i1 %28, label %29, label %83

29:                                               ; preds = %23
  %30 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call %struct.cfp_rule* @bcm_sf2_cfp_rule_find(%struct.bcm_sf2_priv* %30, i32 %31, i32 %32)
  store %struct.cfp_rule* %33, %struct.cfp_rule** %13, align 8
  %34 = load %struct.cfp_rule*, %struct.cfp_rule** %13, align 8
  %35 = icmp ne %struct.cfp_rule* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %80

37:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %38

38:                                               ; preds = %76, %37
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %42, label %79

42:                                               ; preds = %38
  %43 = load %struct.bcm_sf2_cfp_stat*, %struct.bcm_sf2_cfp_stat** @bcm_sf2_cfp_stats, align 8
  %44 = load i32, i32* %11, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.bcm_sf2_cfp_stat, %struct.bcm_sf2_cfp_stat* %43, i64 %45
  store %struct.bcm_sf2_cfp_stat* %46, %struct.bcm_sf2_cfp_stat** %9, align 8
  %47 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv* %47, i32 %48)
  %50 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %51 = load %struct.bcm_sf2_cfp_stat*, %struct.bcm_sf2_cfp_stat** %9, align 8
  %52 = getelementptr inbounds %struct.bcm_sf2_cfp_stat, %struct.bcm_sf2_cfp_stat* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @OP_SEL_READ, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv* %50, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %42
  br label %76

60:                                               ; preds = %42
  %61 = load i32, i32* %10, align 4
  %62 = sub i32 %61, 1
  %63 = load i32, i32* %8, align 4
  %64 = mul i32 %62, %63
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %64, %65
  store i32 %66, i32* %12, align 4
  %67 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %68 = load %struct.bcm_sf2_cfp_stat*, %struct.bcm_sf2_cfp_stat** %9, align 8
  %69 = getelementptr inbounds %struct.bcm_sf2_cfp_stat, %struct.bcm_sf2_cfp_stat* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @core_readl(%struct.bcm_sf2_priv* %67, i32 %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %12, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %71, i32* %75, align 4
  br label %76

76:                                               ; preds = %60, %59
  %77 = load i32, i32* %11, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %11, align 4
  br label %38

79:                                               ; preds = %38
  br label %80

80:                                               ; preds = %79, %36
  %81 = load i32, i32* %10, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %23

83:                                               ; preds = %23
  %84 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %7, align 8
  %85 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = call i32 @mutex_unlock(i32* %86)
  ret void
}

declare dso_local %struct.bcm_sf2_priv* @bcm_sf2_to_priv(%struct.dsa_switch*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.bcm_sf2_cfp_stat*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.cfp_rule* @bcm_sf2_cfp_rule_find(%struct.bcm_sf2_priv*, i32, i32) #1

declare dso_local i32 @bcm_sf2_cfp_rule_addr_set(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @bcm_sf2_cfp_op(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @core_readl(%struct.bcm_sf2_priv*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
