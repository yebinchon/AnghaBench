; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_desc_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_desc_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { i64 }

@AVE_DESCC_TD = common dso_local global i32 0, align 4
@AVE_DESCC_RD0 = common dso_local global i32 0, align 4
@AVE_DESCC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"can't stop descriptor\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@AVE_DESCC_RDSTP = common dso_local global i32 0, align 4
@AVE_DESCC_STATUS_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"can't suspend descriptor\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ave_desc_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_desc_switch(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ave_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ave_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ave_private* %9, %struct.ave_private** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %107 [
    i32 129, label %11
    i32 128, label %21
    i32 130, label %46
    i32 131, label %85
  ]

11:                                               ; preds = %2
  %12 = load i32, i32* @AVE_DESCC_TD, align 4
  %13 = load i32, i32* @AVE_DESCC_RD0, align 4
  %14 = or i32 %12, %13
  %15 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %16 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @AVE_DESCC, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  br label %110

21:                                               ; preds = %2
  %22 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %23 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AVE_DESCC, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 0, i64 %26)
  %28 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %29 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @AVE_DESCC, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i32 @readl_poll_timeout(i64 %32, i32 %33, i32 %37, i32 150, i32 15000)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %21
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @netdev_err(%struct.net_device* %41, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %40, %21
  br label %110

46:                                               ; preds = %2
  %47 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %48 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @AVE_DESCC, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @readl(i64 %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* @AVE_DESCC_RDSTP, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @AVE_DESCC_STATUS_MASK, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %62 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @AVE_DESCC, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @writel(i32 %60, i64 %65)
  %67 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %68 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @AVE_DESCC, align 8
  %71 = add nsw i64 %69, %70
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @AVE_DESCC_RDSTP, align 4
  %75 = shl i32 %74, 16
  %76 = and i32 %73, %75
  %77 = call i32 @readl_poll_timeout(i64 %71, i32 %72, i32 %76, i32 150, i32 150000)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %46
  %80 = load %struct.net_device*, %struct.net_device** %3, align 8
  %81 = call i32 @netdev_err(%struct.net_device* %80, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i32, i32* @EBUSY, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %79, %46
  br label %110

85:                                               ; preds = %2
  %86 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %87 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AVE_DESCC, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @readl(i64 %90)
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* @AVE_DESCC_RDSTP, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* @AVE_DESCC_STATUS_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %102 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AVE_DESCC, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i32 @writel(i32 %100, i64 %105)
  br label %110

107:                                              ; preds = %2
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %107, %85, %84, %45, %11
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
