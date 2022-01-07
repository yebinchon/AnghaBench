; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_set_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tehuti/extr_tehuti.c_bdx_set_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.bdx_priv = type { i8*, i8* }

@INT_COAL_MULT = common dso_local global i32 0, align 4
@PCK_TH_MULT = common dso_local global i32 0, align 4
@BDX_TXF_DESC_SZ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@regRDINTCM0 = common dso_local global i32 0, align 4
@regTDINTCM0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @bdx_set_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bdx_set_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bdx_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.bdx_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.bdx_priv* %14, %struct.bdx_priv** %8, align 8
  %15 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @INT_COAL_MULT, align 4
  %19 = sdiv i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @INT_COAL_MULT, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %11, align 4
  %28 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 4
  %34 = load i32, i32* @PCK_TH_MULT, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 %33, %35
  %37 = sub i64 %36, 1
  %38 = load i32, i32* @PCK_TH_MULT, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %37, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* @BDX_TXF_DESC_SZ, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* @PCK_TH_MULT, align 4
  %46 = add nsw i32 %44, %45
  %47 = sub nsw i32 %46, 1
  %48 = load i32, i32* @PCK_TH_MULT, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %50, 32767
  br i1 %51, label %61, label %52

52:                                               ; preds = %2
  %53 = load i32, i32* %10, align 4
  %54 = icmp sgt i32 %53, 32767
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %11, align 4
  %57 = icmp sgt i32 %56, 15
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %12, align 4
  %60 = icmp sgt i32 %59, 15
  br i1 %60, label %61, label %64

61:                                               ; preds = %58, %55, %52, %2
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %97

64:                                               ; preds = %58
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %67 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @GET_INT_COAL_RC(i8* %68)
  %70 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %71 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %70, i32 0, i32 1
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @GET_RXF_TH(i8* %72)
  %74 = load i32, i32* %11, align 4
  %75 = call i8* @INT_REG_VAL(i32 %65, i32 %69, i32 %73, i32 %74)
  store i8* %75, i8** %6, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %78 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  %80 = call i32 @GET_INT_COAL_RC(i8* %79)
  %81 = load i32, i32* %12, align 4
  %82 = call i8* @INT_REG_VAL(i32 %76, i32 %80, i32 0, i32 %81)
  store i8* %82, i8** %7, align 8
  %83 = load i8*, i8** %6, align 8
  %84 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %85 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %84, i32 0, i32 1
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %7, align 8
  %87 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %88 = getelementptr inbounds %struct.bdx_priv, %struct.bdx_priv* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  %89 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %90 = load i32, i32* @regRDINTCM0, align 4
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 @WRITE_REG(%struct.bdx_priv* %89, i32 %90, i8* %91)
  %93 = load %struct.bdx_priv*, %struct.bdx_priv** %8, align 8
  %94 = load i32, i32* @regTDINTCM0, align 4
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @WRITE_REG(%struct.bdx_priv* %93, i32 %94, i8* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %64, %61
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.bdx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @INT_REG_VAL(i32, i32, i32, i32) #1

declare dso_local i32 @GET_INT_COAL_RC(i8*) #1

declare dso_local i32 @GET_RXF_TH(i8*) #1

declare dso_local i32 @WRITE_REG(%struct.bdx_priv*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
