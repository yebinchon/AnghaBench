; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_priv_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_get_priv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_priv_flags = type { i32 }
%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.i40e_vsi* }
%struct.i40e_vsi = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@I40E_PRIV_FLAGS_STR_LEN = common dso_local global i64 0, align 8
@i40e_gstrings_priv_flags = common dso_local global %struct.i40e_priv_flags* null, align 8
@I40E_GL_PRIV_FLAGS_STR_LEN = common dso_local global i64 0, align 8
@i40e_gl_gstrings_priv_flags = common dso_local global %struct.i40e_priv_flags* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @i40e_get_priv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i40e_get_priv_flags(%struct.net_device* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.i40e_netdev_priv*, align 8
  %5 = alloca %struct.i40e_vsi*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i40e_priv_flags*, align 8
  %11 = alloca %struct.i40e_priv_flags*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.i40e_netdev_priv* %13, %struct.i40e_netdev_priv** %4, align 8
  %14 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %4, align 8
  %15 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.i40e_vsi*, %struct.i40e_vsi** %15, align 8
  store %struct.i40e_vsi* %16, %struct.i40e_vsi** %5, align 8
  %17 = load %struct.i40e_vsi*, %struct.i40e_vsi** %5, align 8
  %18 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %17, i32 0, i32 0
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %18, align 8
  store %struct.i40e_pf* %19, %struct.i40e_pf** %6, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %7, align 8
  br label %20

20:                                               ; preds = %42, %1
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @I40E_PRIV_FLAGS_STR_LEN, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %45

24:                                               ; preds = %20
  %25 = load %struct.i40e_priv_flags*, %struct.i40e_priv_flags** @i40e_gstrings_priv_flags, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds %struct.i40e_priv_flags, %struct.i40e_priv_flags* %25, i64 %26
  store %struct.i40e_priv_flags* %27, %struct.i40e_priv_flags** %10, align 8
  %28 = load %struct.i40e_priv_flags*, %struct.i40e_priv_flags** %10, align 8
  %29 = getelementptr inbounds %struct.i40e_priv_flags, %struct.i40e_priv_flags* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %32 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @BIT(i64 %37)
  %39 = load i64, i64* %9, align 8
  %40 = or i64 %39, %38
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %36, %24
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %7, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %7, align 8
  br label %20

45:                                               ; preds = %20
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %2, align 8
  br label %83

53:                                               ; preds = %45
  store i64 0, i64* %8, align 8
  br label %54

54:                                               ; preds = %78, %53
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @I40E_GL_PRIV_FLAGS_STR_LEN, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %54
  %59 = load %struct.i40e_priv_flags*, %struct.i40e_priv_flags** @i40e_gl_gstrings_priv_flags, align 8
  %60 = load i64, i64* %8, align 8
  %61 = getelementptr inbounds %struct.i40e_priv_flags, %struct.i40e_priv_flags* %59, i64 %60
  store %struct.i40e_priv_flags* %61, %struct.i40e_priv_flags** %11, align 8
  %62 = load %struct.i40e_priv_flags*, %struct.i40e_priv_flags** %11, align 8
  %63 = getelementptr inbounds %struct.i40e_priv_flags, %struct.i40e_priv_flags* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %58
  %71 = load i64, i64* %7, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add i64 %71, %72
  %74 = call i64 @BIT(i64 %73)
  %75 = load i64, i64* %9, align 8
  %76 = or i64 %75, %74
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %70, %58
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  br label %54

81:                                               ; preds = %54
  %82 = load i64, i64* %9, align 8
  store i64 %82, i64* %2, align 8
  br label %83

83:                                               ; preds = %81, %51
  %84 = load i64, i64* %2, align 8
  ret i64 %84
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
