; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2_cfp.c_bcm_sf2_cfp_rule_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm_sf2_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cfp_rule = type { i32 }

@CFP_NUM_RULES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcm_sf2_priv*, i32, i64)* @bcm_sf2_cfp_rule_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_cfp_rule_del(%struct.bcm_sf2_priv* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bcm_sf2_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.cfp_rule*, align 8
  %9 = alloca i32, align 4
  store %struct.bcm_sf2_priv* %0, %struct.bcm_sf2_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* @CFP_NUM_RULES, align 8
  %12 = icmp sge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %51

16:                                               ; preds = %3
  %17 = load i64, i64* %7, align 8
  %18 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %19 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @test_bit(i64 %17, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i64, i64* %7, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %51

30:                                               ; preds = %24
  %31 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i64, i64* %7, align 8
  %34 = call %struct.cfp_rule* @bcm_sf2_cfp_rule_find(%struct.bcm_sf2_priv* %31, i32 %32, i64 %33)
  store %struct.cfp_rule* %34, %struct.cfp_rule** %8, align 8
  %35 = load %struct.cfp_rule*, %struct.cfp_rule** %8, align 8
  %36 = icmp ne %struct.cfp_rule* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %30
  %41 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @bcm_sf2_cfp_rule_remove(%struct.bcm_sf2_priv* %41, i32 %42, i64 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.cfp_rule*, %struct.cfp_rule** %8, align 8
  %46 = getelementptr inbounds %struct.cfp_rule, %struct.cfp_rule* %45, i32 0, i32 0
  %47 = call i32 @list_del(i32* %46)
  %48 = load %struct.cfp_rule*, %struct.cfp_rule** %8, align 8
  %49 = call i32 @kfree(%struct.cfp_rule* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %40, %37, %27, %13
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local %struct.cfp_rule* @bcm_sf2_cfp_rule_find(%struct.bcm_sf2_priv*, i32, i64) #1

declare dso_local i32 @bcm_sf2_cfp_rule_remove(%struct.bcm_sf2_priv*, i32, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.cfp_rule*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
