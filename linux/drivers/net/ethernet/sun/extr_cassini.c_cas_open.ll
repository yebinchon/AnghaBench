; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@cas_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to request irq !\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @cas_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.cas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.cas* @netdev_priv(%struct.net_device* %8)
  store %struct.cas* %9, %struct.cas** %4, align 8
  %10 = load %struct.cas*, %struct.cas** %4, align 8
  %11 = getelementptr inbounds %struct.cas, %struct.cas* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.cas*, %struct.cas** %4, align 8
  %14 = getelementptr inbounds %struct.cas, %struct.cas* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.cas*, %struct.cas** %4, align 8
  %17 = getelementptr inbounds %struct.cas, %struct.cas* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %31, label %20

20:                                               ; preds = %1
  %21 = load %struct.cas*, %struct.cas** %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @cas_lock_all_save(%struct.cas* %21, i64 %22)
  %24 = load %struct.cas*, %struct.cas** %4, align 8
  %25 = call i32 @cas_reset(%struct.cas* %24, i32 0)
  %26 = load %struct.cas*, %struct.cas** %4, align 8
  %27 = getelementptr inbounds %struct.cas, %struct.cas* %26, i32 0, i32 0
  store i32 1, i32* %27, align 8
  %28 = load %struct.cas*, %struct.cas** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @cas_unlock_all_restore(%struct.cas* %28, i64 %29)
  br label %31

31:                                               ; preds = %20, %1
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.cas*, %struct.cas** %4, align 8
  %35 = call i64 @cas_tx_tiny_alloc(%struct.cas* %34)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %100

38:                                               ; preds = %31
  %39 = load %struct.cas*, %struct.cas** %4, align 8
  %40 = call i64 @cas_alloc_rxds(%struct.cas* %39)
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  br label %97

43:                                               ; preds = %38
  %44 = load %struct.cas*, %struct.cas** %4, align 8
  %45 = call i32 @cas_spare_init(%struct.cas* %44)
  %46 = load %struct.cas*, %struct.cas** %4, align 8
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i32 @cas_spare_recover(%struct.cas* %46, i32 %47)
  %49 = load %struct.cas*, %struct.cas** %4, align 8
  %50 = getelementptr inbounds %struct.cas, %struct.cas* %49, i32 0, i32 5
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @cas_interrupt, align 4
  %55 = load i32, i32* @IRQF_SHARED, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = bitcast %struct.net_device* %59 to i8*
  %61 = call i64 @request_irq(i32 %53, i32 %54, i32 %55, i32 %58, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %43
  %64 = load %struct.cas*, %struct.cas** %4, align 8
  %65 = getelementptr inbounds %struct.cas, %struct.cas* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @EAGAIN, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %92

70:                                               ; preds = %43
  %71 = load %struct.cas*, %struct.cas** %4, align 8
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @cas_lock_all_save(%struct.cas* %71, i64 %72)
  %74 = load %struct.cas*, %struct.cas** %4, align 8
  %75 = call i32 @cas_clean_rings(%struct.cas* %74)
  %76 = load %struct.cas*, %struct.cas** %4, align 8
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @cas_init_hw(%struct.cas* %76, i32 %80)
  %82 = load %struct.cas*, %struct.cas** %4, align 8
  %83 = getelementptr inbounds %struct.cas, %struct.cas* %82, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.cas*, %struct.cas** %4, align 8
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @cas_unlock_all_restore(%struct.cas* %84, i64 %85)
  %87 = load %struct.net_device*, %struct.net_device** %3, align 8
  %88 = call i32 @netif_start_queue(%struct.net_device* %87)
  %89 = load %struct.cas*, %struct.cas** %4, align 8
  %90 = getelementptr inbounds %struct.cas, %struct.cas* %89, i32 0, i32 2
  %91 = call i32 @mutex_unlock(i32* %90)
  store i32 0, i32* %2, align 4
  br label %105

92:                                               ; preds = %63
  %93 = load %struct.cas*, %struct.cas** %4, align 8
  %94 = call i32 @cas_spare_free(%struct.cas* %93)
  %95 = load %struct.cas*, %struct.cas** %4, align 8
  %96 = call i32 @cas_free_rxds(%struct.cas* %95)
  br label %97

97:                                               ; preds = %92, %42
  %98 = load %struct.cas*, %struct.cas** %4, align 8
  %99 = call i32 @cas_tx_tiny_free(%struct.cas* %98)
  br label %100

100:                                              ; preds = %97, %37
  %101 = load %struct.cas*, %struct.cas** %4, align 8
  %102 = getelementptr inbounds %struct.cas, %struct.cas* %101, i32 0, i32 2
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %2, align 4
  br label %105

105:                                              ; preds = %100, %70
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cas_lock_all_save(%struct.cas*, i64) #1

declare dso_local i32 @cas_reset(%struct.cas*, i32) #1

declare dso_local i32 @cas_unlock_all_restore(%struct.cas*, i64) #1

declare dso_local i64 @cas_tx_tiny_alloc(%struct.cas*) #1

declare dso_local i64 @cas_alloc_rxds(%struct.cas*) #1

declare dso_local i32 @cas_spare_init(%struct.cas*) #1

declare dso_local i32 @cas_spare_recover(%struct.cas*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @cas_clean_rings(%struct.cas*) #1

declare dso_local i32 @cas_init_hw(%struct.cas*, i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cas_spare_free(%struct.cas*) #1

declare dso_local i32 @cas_free_rxds(%struct.cas*) #1

declare dso_local i32 @cas_tx_tiny_free(%struct.cas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
