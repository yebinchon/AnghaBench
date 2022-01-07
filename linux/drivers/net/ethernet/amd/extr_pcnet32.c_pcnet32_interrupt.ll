; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pcnet32_private = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (i64, i32)*, i32 (i64, i32, i32)* }

@max_interrupt_work = common dso_local global i32 0, align 4
@CSR0 = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"interrupt  csr0=%#2.2x new csr=%#2.2x\0A\00", align 1
@drv = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Bus master arbitration failure, status %4.4x\0A\00", align 1
@CSR3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"exiting interrupt, csr0=%#4.4x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pcnet32_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.pcnet32_private*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load i32, i32* @max_interrupt_work, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %17)
  store %struct.pcnet32_private* %18, %struct.pcnet32_private** %6, align 8
  %19 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %20 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %23 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32 (i64, i32)*, i32 (i64, i32)** %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i32, i32* @CSR0, align 4
  %29 = call i32 %26(i64 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %126, %2
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 36608
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %9, align 4
  %37 = icmp sge i32 %36, 0
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i1 [ false, %30 ], [ %37, %34 ]
  br i1 %39, label %40, label %135

40:                                               ; preds = %38
  %41 = load i32, i32* %8, align 4
  %42 = icmp eq i32 %41, 65535
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %135

44:                                               ; preds = %40
  %45 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %46 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  %49 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i32, i32* @CSR0, align 4
  %52 = load i32, i32* %8, align 4
  %53 = and i32 %52, -80
  %54 = call i32 %49(i64 %50, i32 %51, i32 %53)
  %55 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %56 = load i32, i32* @intr, align 4
  %57 = load i32, i32* @KERN_DEBUG, align 4
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %61 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32 (i64, i32)*, i32 (i64, i32)** %63, align 8
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* @CSR0, align 4
  %67 = call i32 %64(i64 %65, i32 %66)
  %68 = call i32 (%struct.pcnet32_private*, i32, i32, %struct.net_device*, i8*, i32, ...) @netif_printk(%struct.pcnet32_private* %55, i32 %56, i32 %57, %struct.net_device* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %67)
  %69 = load i32, i32* %8, align 4
  %70 = and i32 %69, 16384
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %44
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %72, %44
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, 4096
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %78
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i32, i32* %8, align 4
  %90 = and i32 %89, 2048
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %94 = load i32, i32* @drv, align 4
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = load i32, i32* %8, align 4
  %97 = call i32 @netif_err(%struct.pcnet32_private* %93, i32 %94, %struct.net_device* %95, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %92, %88
  %99 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %100 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %99, i32 0, i32 2
  %101 = call i64 @napi_schedule_prep(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %98
  %104 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %105 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %104, i32 0, i32 1
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 0
  %108 = load i32 (i64, i32)*, i32 (i64, i32)** %107, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load i32, i32* @CSR3, align 4
  %111 = call i32 %108(i64 %109, i32 %110)
  store i32 %111, i32* %10, align 4
  %112 = load i32, i32* %10, align 4
  %113 = or i32 %112, 24320
  store i32 %113, i32* %10, align 4
  %114 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %115 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %114, i32 0, i32 1
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32 (i64, i32, i32)*, i32 (i64, i32, i32)** %117, align 8
  %119 = load i64, i64* %7, align 8
  %120 = load i32, i32* @CSR3, align 4
  %121 = load i32, i32* %10, align 4
  %122 = call i32 %118(i64 %119, i32 %120, i32 %121)
  %123 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %124 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %123, i32 0, i32 2
  %125 = call i32 @__napi_schedule(i32* %124)
  br label %135

126:                                              ; preds = %98
  %127 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %128 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32 (i64, i32)*, i32 (i64, i32)** %130, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load i32, i32* @CSR0, align 4
  %134 = call i32 %131(i64 %132, i32 %133)
  store i32 %134, i32* %8, align 4
  br label %30

135:                                              ; preds = %103, %43, %38
  %136 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %137 = load i32, i32* @intr, align 4
  %138 = load i32, i32* @KERN_DEBUG, align 4
  %139 = load %struct.net_device*, %struct.net_device** %5, align 8
  %140 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %141 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %140, i32 0, i32 1
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i32 (i64, i32)*, i32 (i64, i32)** %143, align 8
  %145 = load i64, i64* %7, align 8
  %146 = load i32, i32* @CSR0, align 4
  %147 = call i32 %144(i64 %145, i32 %146)
  %148 = call i32 (%struct.pcnet32_private*, i32, i32, %struct.net_device*, i8*, i32, ...) @netif_printk(%struct.pcnet32_private* %136, i32 %137, i32 %138, %struct.net_device* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %150 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %149, i32 0, i32 0
  %151 = call i32 @spin_unlock(i32* %150)
  %152 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %152
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @netif_printk(%struct.pcnet32_private*, i32, i32, %struct.net_device*, i8*, i32, ...) #1

declare dso_local i32 @netif_err(%struct.pcnet32_private*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
