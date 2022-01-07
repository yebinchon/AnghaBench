; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_adapter_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_adapter_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql3_adapter = type { %struct.TYPE_3__*, i32, i64, i32, i32, i32, %struct.net_device* }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@IRQF_SHARED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unable to  allocate buffers\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"User requested MSI, but MSI failed to initialize.  Continuing without MSI.\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"MSI Enabled...\0A\00", align 1
@QL_MSI_ENABLED = common dso_local global i32 0, align 4
@ql3xxx_isr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Failed to reserve interrupt %d - already in use\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Unable to initialize adapter\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Releasing driver lock\0A\00", align 1
@QL_DRVR_SEM_MASK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"Could not acquire driver lock\0A\00", align 1
@QL_ADAPTER_UP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"calling pci_disable_msi()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql3_adapter*)* @ql_adapter_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_adapter_up(%struct.ql3_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ql3_adapter* %0, %struct.ql3_adapter** %3, align 8
  %8 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %8, i32 0, i32 6
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %11, i64* %6, align 8
  %12 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %13 = call i64 @ql_alloc_mem_resources(%struct.ql3_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %159

20:                                               ; preds = %1
  %21 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %20
  %26 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = call i64 @pci_enable_msi(%struct.TYPE_3__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %32, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %34, i32 0, i32 2
  store i64 0, i64* %35, align 8
  br label %47

36:                                               ; preds = %25
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* @QL_MSI_ENABLED, align 4
  %40 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %41 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %40, i32 0, i32 1
  %42 = call i32 @set_bit(i32 %39, i32* %41)
  %43 = load i64, i64* @IRQF_SHARED, align 8
  %44 = xor i64 %43, -1
  %45 = load i64, i64* %6, align 8
  %46 = and i64 %45, %44
  store i64 %46, i64* %6, align 8
  br label %47

47:                                               ; preds = %36, %31
  br label %48

48:                                               ; preds = %47, %20
  %49 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %50 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @ql3xxx_isr, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.net_device*, %struct.net_device** %4, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.net_device*, %struct.net_device** %4, align 8
  %60 = call i32 @request_irq(i32 %53, i32 %54, i64 %55, i32 %58, %struct.net_device* %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %48
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %64, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i32 %69)
  br label %135

71:                                               ; preds = %48
  %72 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %73 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %72, i32 0, i32 3
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @spin_lock_irqsave(i32* %73, i64 %74)
  %76 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %77 = call i32 @ql_wait_for_drvr_lock(%struct.ql3_adapter* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %71
  %81 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %82 = call i32 @ql_adapter_initialize(%struct.ql3_adapter* %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %4, align 8
  %87 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %86, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %119

88:                                               ; preds = %80
  %89 = load %struct.net_device*, %struct.net_device** %4, align 8
  %90 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %89, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %91 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %92 = load i32, i32* @QL_DRVR_SEM_MASK, align 4
  %93 = call i32 @ql_sem_unlock(%struct.ql3_adapter* %91, i32 %92)
  br label %97

94:                                               ; preds = %71
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %123

97:                                               ; preds = %88
  %98 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %99 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %98, i32 0, i32 3
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32* %99, i64 %100)
  %102 = load i32, i32* @QL_ADAPTER_UP, align 4
  %103 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %104 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %103, i32 0, i32 1
  %105 = call i32 @set_bit(i32 %102, i32* %104)
  %106 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %107 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %106, i32 0, i32 5
  %108 = load i64, i64* @jiffies, align 8
  %109 = load i32, i32* @HZ, align 4
  %110 = mul nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = add nsw i64 %108, %111
  %113 = call i32 @mod_timer(i32* %107, i64 %112)
  %114 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %114, i32 0, i32 4
  %116 = call i32 @napi_enable(i32* %115)
  %117 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %118 = call i32 @ql_enable_interrupts(%struct.ql3_adapter* %117)
  store i32 0, i32* %2, align 4
  br label %159

119:                                              ; preds = %85
  %120 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %121 = load i32, i32* @QL_DRVR_SEM_MASK, align 4
  %122 = call i32 @ql_sem_unlock(%struct.ql3_adapter* %120, i32 %121)
  br label %123

123:                                              ; preds = %119, %94
  %124 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %124, i32 0, i32 3
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @spin_unlock_irqrestore(i32* %125, i64 %126)
  %128 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %129 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %128, i32 0, i32 0
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.net_device*, %struct.net_device** %4, align 8
  %134 = call i32 @free_irq(i32 %132, %struct.net_device* %133)
  br label %135

135:                                              ; preds = %123, %63
  %136 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %137 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %157

140:                                              ; preds = %135
  %141 = load i32, i32* @QL_MSI_ENABLED, align 4
  %142 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %142, i32 0, i32 1
  %144 = call i64 @test_bit(i32 %141, i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %140
  %147 = load %struct.net_device*, %struct.net_device** %4, align 8
  %148 = call i32 @netdev_info(%struct.net_device* %147, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %149 = load i32, i32* @QL_MSI_ENABLED, align 4
  %150 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %151 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %150, i32 0, i32 1
  %152 = call i32 @clear_bit(i32 %149, i32* %151)
  %153 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %153, i32 0, i32 0
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = call i32 @pci_disable_msi(%struct.TYPE_3__* %155)
  br label %157

157:                                              ; preds = %146, %140, %135
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %159

159:                                              ; preds = %157, %97, %15
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @ql_alloc_mem_resources(%struct.ql3_adapter*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i64 @pci_enable_msi(%struct.TYPE_3__*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ql_wait_for_drvr_lock(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_adapter_initialize(%struct.ql3_adapter*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql3_adapter*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @ql_enable_interrupts(%struct.ql3_adapter*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @pci_disable_msi(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
