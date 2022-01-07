; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.de4x5_private = type { i32, i32, i32, i32, i32 }

@EAGAIN = common dso_local global i32 0, align 4
@WAKEUP = common dso_local global i32 0, align 4
@OPEN = common dso_local global i32 0, align 4
@de4x5_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"de4x5_open(): Requested IRQ%d is busy - attempting FAST/SHARE...\00", align 1
@.str.1 = private unnamed_addr constant [59 x i8] c"\0A              Cannot get IRQ- reconfigure your hardware.\0A\00", align 1
@SLEEP = common dso_local global i32 0, align 4
@CLOSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"\0A              Succeeded, but you should reconfigure your hardware to avoid this.\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"WARNING: there may be IRQ related problems in heavily loaded systems.\0A\00", align 1
@UNMASK_INTERRUPTS = common dso_local global i32 0, align 4
@START_DE4X5 = common dso_local global i32 0, align 4
@de4x5_debug = common dso_local global i32 0, align 4
@DEBUG_OPEN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"\09sts:  0x%08x\0A\00", align 1
@DE4X5_STS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"\09bmr:  0x%08x\0A\00", align 1
@DE4X5_BMR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"\09imr:  0x%08x\0A\00", align 1
@DE4X5_IMR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [15 x i8] c"\09omr:  0x%08x\0A\00", align 1
@DE4X5_OMR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"\09sisr: 0x%08x\0A\00", align 1
@DE4X5_SISR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"\09sicr: 0x%08x\0A\00", align 1
@DE4X5_SICR = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"\09strr: 0x%08x\0A\00", align 1
@DE4X5_STRR = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [15 x i8] c"\09sigr: 0x%08x\0A\00", align 1
@DE4X5_SIGR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @de4x5_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de4x5_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.de4x5_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %9)
  store %struct.de4x5_private* %10, %struct.de4x5_private** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %31, %1
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %17 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %14
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32* @de4x5_alloc_rx_buff(%struct.net_device* %21, i32 %22, i32 0)
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = call i32 @de4x5_free_rx_buffs(%struct.net_device* %26)
  %28 = load i32, i32* @EAGAIN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %135

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

34:                                               ; preds = %14
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load i32, i32* @WAKEUP, align 4
  %37 = call i32 @yawn(%struct.net_device* %35, i32 %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @de4x5_init(%struct.net_device* %38)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %41 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %40, i32 0, i32 4
  %42 = call i32 @spin_lock_init(i32* %41)
  %43 = load i32, i32* @OPEN, align 4
  %44 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %45 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @de4x5_dbg_open(%struct.net_device* %46)
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = getelementptr inbounds %struct.net_device, %struct.net_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @de4x5_interrupt, align 4
  %52 = load i32, i32* @IRQF_SHARED, align 4
  %53 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %54 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i64 @request_irq(i32 %50, i32 %51, i32 %52, i32 %55, %struct.net_device* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %95

59:                                               ; preds = %34
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = getelementptr inbounds %struct.net_device, %struct.net_device* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @de4x5_interrupt, align 4
  %68 = load i32, i32* @IRQF_SHARED, align 4
  %69 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %70 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = call i64 @request_irq(i32 %66, i32 %67, i32 %68, i32 %71, %struct.net_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %91

75:                                               ; preds = %59
  %76 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.net_device*, %struct.net_device** %3, align 8
  %78 = call i32 @disable_ast(%struct.net_device* %77)
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @de4x5_free_rx_buffs(%struct.net_device* %79)
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = call i32 @de4x5_free_tx_buffs(%struct.net_device* %81)
  %83 = load %struct.net_device*, %struct.net_device** %3, align 8
  %84 = load i32, i32* @SLEEP, align 4
  %85 = call i32 @yawn(%struct.net_device* %83, i32 %84)
  %86 = load i32, i32* @CLOSED, align 4
  %87 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %88 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @EAGAIN, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %2, align 4
  br label %135

91:                                               ; preds = %59
  %92 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %94, %34
  %96 = load i32, i32* @UNMASK_INTERRUPTS, align 4
  %97 = load %struct.de4x5_private*, %struct.de4x5_private** %4, align 8
  %98 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.net_device*, %struct.net_device** %3, align 8
  %100 = call i32 @netif_trans_update(%struct.net_device* %99)
  %101 = load i32, i32* @START_DE4X5, align 4
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = call i32 @de4x5_setup_intr(%struct.net_device* %102)
  %104 = load i32, i32* @de4x5_debug, align 4
  %105 = load i32, i32* @DEBUG_OPEN, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %133

108:                                              ; preds = %95
  %109 = load i32, i32* @DE4X5_STS, align 4
  %110 = call i32 @inl(i32 %109)
  %111 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @DE4X5_BMR, align 4
  %113 = call i32 @inl(i32 %112)
  %114 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %113)
  %115 = load i32, i32* @DE4X5_IMR, align 4
  %116 = call i32 @inl(i32 %115)
  %117 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* @DE4X5_OMR, align 4
  %119 = call i32 @inl(i32 %118)
  %120 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @DE4X5_SISR, align 4
  %122 = call i32 @inl(i32 %121)
  %123 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* @DE4X5_SICR, align 4
  %125 = call i32 @inl(i32 %124)
  %126 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32 %125)
  %127 = load i32, i32* @DE4X5_STRR, align 4
  %128 = call i32 @inl(i32 %127)
  %129 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i32 %128)
  %130 = load i32, i32* @DE4X5_SIGR, align 4
  %131 = call i32 @inl(i32 %130)
  %132 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %108, %95
  %134 = load i32, i32* %7, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %75, %25
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @de4x5_alloc_rx_buff(%struct.net_device*, i32, i32) #1

declare dso_local i32 @de4x5_free_rx_buffs(%struct.net_device*) #1

declare dso_local i32 @yawn(%struct.net_device*, i32) #1

declare dso_local i32 @de4x5_init(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @de4x5_dbg_open(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @disable_ast(%struct.net_device*) #1

declare dso_local i32 @de4x5_free_tx_buffs(%struct.net_device*) #1

declare dso_local i32 @netif_trans_update(%struct.net_device*) #1

declare dso_local i32 @de4x5_setup_intr(%struct.net_device*) #1

declare dso_local i32 @inl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
