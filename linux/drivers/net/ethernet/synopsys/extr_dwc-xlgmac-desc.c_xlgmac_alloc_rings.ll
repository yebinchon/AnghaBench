; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_alloc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-desc.c_xlgmac_alloc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, i32, i32, %struct.xlgmac_channel* }
%struct.xlgmac_channel = type { i32, i32, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s - Tx ring:\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"error initializing Tx ring\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s - Rx ring:\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"error initializing Rx ring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_alloc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_alloc_rings(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca %struct.xlgmac_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  %7 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %8 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %7, i32 0, i32 4
  %9 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %8, align 8
  store %struct.xlgmac_channel* %9, %struct.xlgmac_channel** %4, align 8
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %67, %1
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %13 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %72

16:                                               ; preds = %10
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %18 = load i32, i32* @drv, align 4
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %20 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %23 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @netif_dbg(%struct.xlgmac_pdata* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %27 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %28 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @xlgmac_init_ring(%struct.xlgmac_pdata* %26, i32 %29, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %16
  %37 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %38 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netdev_alert(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %73

41:                                               ; preds = %16
  %42 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %43 = load i32, i32* @drv, align 4
  %44 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %45 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %48 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netif_dbg(%struct.xlgmac_pdata* %42, i32 %43, i32 %46, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  %51 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %52 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %53 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %56 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @xlgmac_init_ring(%struct.xlgmac_pdata* %51, i32 %54, i32 %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %41
  %62 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %63 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @netdev_alert(i32 %64, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %73

66:                                               ; preds = %41
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %5, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %5, align 4
  %70 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %71 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %70, i32 1
  store %struct.xlgmac_channel* %71, %struct.xlgmac_channel** %4, align 8
  br label %10

72:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %77

73:                                               ; preds = %61, %36
  %74 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %75 = call i32 @xlgmac_free_rings(%struct.xlgmac_pdata* %74)
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %72
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @netif_dbg(%struct.xlgmac_pdata*, i32, i32, i8*, i32) #1

declare dso_local i32 @xlgmac_init_ring(%struct.xlgmac_pdata*, i32, i32) #1

declare dso_local i32 @netdev_alert(i32, i8*) #1

declare dso_local i32 @xlgmac_free_rings(%struct.xlgmac_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
