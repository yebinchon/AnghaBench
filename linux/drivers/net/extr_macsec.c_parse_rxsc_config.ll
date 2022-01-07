; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_parse_rxsc_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_parse_rxsc_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }

@MACSEC_ATTR_RXSC_CONFIG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@MACSEC_RXSC_ATTR_MAX = common dso_local global i32 0, align 4
@macsec_genl_rxsc_policy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr**, %struct.nlattr**)* @parse_rxsc_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_rxsc_config(%struct.nlattr** %0, %struct.nlattr** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr**, align 8
  %5 = alloca %struct.nlattr**, align 8
  store %struct.nlattr** %0, %struct.nlattr*** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %6 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %7 = load i64, i64* @MACSEC_ATTR_RXSC_CONFIG, align 8
  %8 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %6, i64 %7
  %9 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %28

14:                                               ; preds = %2
  %15 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %16 = load i32, i32* @MACSEC_RXSC_ATTR_MAX, align 4
  %17 = load %struct.nlattr**, %struct.nlattr*** %4, align 8
  %18 = load i64, i64* @MACSEC_ATTR_RXSC_CONFIG, align 8
  %19 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %17, i64 %18
  %20 = load %struct.nlattr*, %struct.nlattr** %19, align 8
  %21 = load i32, i32* @macsec_genl_rxsc_policy, align 4
  %22 = call i64 @nla_parse_nested_deprecated(%struct.nlattr** %15, i32 %16, %struct.nlattr* %20, i32 %21, i32* null)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %28

27:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %24, %11
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @nla_parse_nested_deprecated(%struct.nlattr**, i32, %struct.nlattr*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
