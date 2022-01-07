; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i64, i32, %struct.pcnet32_access* }
%struct.pcnet32_access = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@PCNET32_79C970A = common dso_local global i64 0, align 8
@CSR5 = common dso_local global i32 0, align 4
@CSR5_SUSPEND = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Error getting into suspend!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i32)* @pcnet32_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_suspend(%struct.net_device* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcnet32_private*, align 8
  %10 = alloca %struct.pcnet32_access*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %13)
  store %struct.pcnet32_private* %14, %struct.pcnet32_private** %9, align 8
  %15 = load %struct.pcnet32_private*, %struct.pcnet32_private** %9, align 8
  %16 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %15, i32 0, i32 2
  %17 = load %struct.pcnet32_access*, %struct.pcnet32_access** %16, align 8
  store %struct.pcnet32_access* %17, %struct.pcnet32_access** %10, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.pcnet32_private*, %struct.pcnet32_private** %9, align 8
  %22 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCNET32_79C970A, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %84

27:                                               ; preds = %3
  %28 = load %struct.pcnet32_access*, %struct.pcnet32_access** %10, align 8
  %29 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %28, i32 0, i32 0
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @CSR5, align 4
  %33 = call i32 %30(i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.pcnet32_access*, %struct.pcnet32_access** %10, align 8
  %35 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %34, i32 0, i32 1
  %36 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %35, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @CSR5, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @CSR5_SUSPEND, align 4
  %41 = or i32 %39, %40
  %42 = call i32 %36(i32 %37, i32 %38, i32 %41)
  store i32 0, i32* %12, align 4
  br label %43

43:                                               ; preds = %82, %27
  %44 = load %struct.pcnet32_access*, %struct.pcnet32_access** %10, align 8
  %45 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %44, i32 0, i32 0
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @CSR5, align 4
  %49 = call i32 %46(i32 %47, i32 %48)
  %50 = load i32, i32* @CSR5_SUSPEND, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  br i1 %53, label %54, label %83

54:                                               ; preds = %43
  %55 = load %struct.pcnet32_private*, %struct.pcnet32_private** %9, align 8
  %56 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %55, i32 0, i32 1
  %57 = load i64*, i64** %6, align 8
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %58)
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = call i32 @msleep(i32 1)
  br label %66

64:                                               ; preds = %54
  %65 = call i32 @mdelay(i32 1)
  br label %66

66:                                               ; preds = %64, %62
  %67 = load %struct.pcnet32_private*, %struct.pcnet32_private** %9, align 8
  %68 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %67, i32 0, i32 1
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @spin_lock_irqsave(i32* %68, i64 %70)
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp sgt i32 %74, 200
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load %struct.pcnet32_private*, %struct.pcnet32_private** %9, align 8
  %78 = load i32, i32* @hw, align 4
  %79 = load i32, i32* @KERN_DEBUG, align 4
  %80 = load %struct.net_device*, %struct.net_device** %5, align 8
  %81 = call i32 @netif_printk(%struct.pcnet32_private* %77, i32 %78, i32 %79, %struct.net_device* %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %84

82:                                               ; preds = %66
  br label %43

83:                                               ; preds = %43
  store i32 1, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %76, %26
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_printk(%struct.pcnet32_private*, i32, i32, %struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
