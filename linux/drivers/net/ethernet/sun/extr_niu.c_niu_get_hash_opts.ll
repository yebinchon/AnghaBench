; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_hash_opts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_get_hash_opts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i32* }
%struct.ethtool_rxnfc = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@CLASS_CODE_USER_PROG1 = common dso_local global i64 0, align 8
@TCAM_KEY_DISC = common dso_local global i32 0, align 4
@RXH_DISCARD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.ethtool_rxnfc*)* @niu_get_hash_opts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_hash_opts(%struct.niu* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i64, align 8
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  %7 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @niu_ethflow_to_class(i32 %11, i64* %6)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %50

17:                                               ; preds = %2
  %18 = load %struct.niu*, %struct.niu** %4, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %25 = sub i64 %23, %24
  %26 = getelementptr inbounds i32, i32* %22, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @TCAM_KEY_DISC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %17
  %32 = load i64, i64* @RXH_DISCARD, align 8
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  br label %49

35:                                               ; preds = %17
  %36 = load %struct.niu*, %struct.niu** %4, align 8
  %37 = getelementptr inbounds %struct.niu, %struct.niu* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i64, i64* @CLASS_CODE_USER_PROG1, align 8
  %43 = sub i64 %41, %42
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @niu_flowkey_to_ethflow(i32 %45)
  %47 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %48 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %47, i32 0, i32 0
  store i64 %46, i64* %48, align 8
  br label %49

49:                                               ; preds = %35, %31
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %14
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @niu_ethflow_to_class(i32, i64*) #1

declare dso_local i64 @niu_flowkey_to_ethflow(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
