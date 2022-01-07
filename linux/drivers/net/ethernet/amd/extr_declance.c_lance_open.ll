; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_declance.c_lance_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_declance.c_lance_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64, i32, i64 }
%struct.lance_private = type { i64, i32, %struct.lance_regs* }
%struct.lance_regs = type { i32, i32 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@mode = common dso_local global i32 0, align 4
@filter = common dso_local global i32* null, align 8
@lance_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"lance\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"%s: Can't get IRQ %d\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@lance_dma_merr_int = common dso_local global i32 0, align 4
@IRQF_ONESHOT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"lance error\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"%s: Can't get DMA IRQ %d\0A\00", align 1
@ioasic_ssr_lock = common dso_local global i32 0, align 4
@IO_REG_SSR = common dso_local global i32 0, align 4
@IO_SSR_LANCE_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @lance_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.lance_private*, align 8
  %6 = alloca %struct.lance_regs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.lance_private* @netdev_priv(%struct.net_device* %13)
  store %struct.lance_private* %14, %struct.lance_private** %5, align 8
  %15 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %16 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %15, i32 0, i32 2
  %17 = load %struct.lance_regs*, %struct.lance_regs** %16, align 8
  store %struct.lance_regs* %17, %struct.lance_regs** %6, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.lance_regs*, %struct.lance_regs** %6, align 8
  %19 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %18, i32 0, i32 1
  %20 = load i32, i32* @LE_CSR0, align 4
  %21 = call i32 @writereg(i32* %19, i32 %20)
  %22 = load %struct.lance_regs*, %struct.lance_regs** %6, align 8
  %23 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %22, i32 0, i32 0
  %24 = load i32, i32* @LE_C0_STOP, align 4
  %25 = call i32 @writereg(i32* %23, i32 %24)
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @mode, align 4
  %28 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %29 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i64* @lib_ptr(i32* %26, i32 %27, i32 %30)
  store i64 0, i64* %31, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = load i32*, i32** @filter, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %37 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i64* @lib_ptr(i32* %32, i32 %35, i32 %38)
  store i64 0, i64* %39, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = load i32*, i32** @filter, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %45 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64* @lib_ptr(i32* %40, i32 %43, i32 %46)
  store i64 0, i64* %47, align 8
  %48 = load i32*, i32** %4, align 8
  %49 = load i32*, i32** @filter, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %53 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i64* @lib_ptr(i32* %48, i32 %51, i32 %54)
  store i64 0, i64* %55, align 8
  %56 = load i32*, i32** %4, align 8
  %57 = load i32*, i32** @filter, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %61 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i64* @lib_ptr(i32* %56, i32 %59, i32 %62)
  store i64 0, i64* %63, align 8
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @lance_init_ring(%struct.net_device* %64)
  %66 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %67 = call i32 @load_csrs(%struct.lance_private* %66)
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i32 @netif_start_queue(%struct.net_device* %68)
  %70 = load %struct.net_device*, %struct.net_device** %3, align 8
  %71 = getelementptr inbounds %struct.net_device, %struct.net_device* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* @lance_interrupt, align 4
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = call i64 @request_irq(i64 %72, i32 %73, i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.net_device* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %1
  %78 = load %struct.net_device*, %struct.net_device** %3, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %80, i64 %83)
  %85 = load i32, i32* @EAGAIN, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %133

87:                                               ; preds = %1
  %88 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %89 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp sge i64 %90, 0
  br i1 %91, label %92, label %129

92:                                               ; preds = %87
  %93 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %94 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @lance_dma_merr_int, align 4
  %97 = load i32, i32* @IRQF_ONESHOT, align 4
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = call i64 @request_irq(i64 %95, i32 %96, i32 %97, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), %struct.net_device* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %92
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.net_device*, %struct.net_device** %3, align 8
  %106 = call i32 @free_irq(i64 %104, %struct.net_device* %105)
  %107 = load %struct.net_device*, %struct.net_device** %3, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %111 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %109, i64 %112)
  %114 = load i32, i32* @EAGAIN, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %133

116:                                              ; preds = %92
  %117 = load i64, i64* %8, align 8
  %118 = call i32 @spin_lock_irqsave(i32* @ioasic_ssr_lock, i64 %117)
  %119 = call i32 (...) @fast_mb()
  %120 = load i32, i32* @IO_REG_SSR, align 4
  %121 = load i32, i32* @IO_REG_SSR, align 4
  %122 = call i32 @ioasic_read(i32 %121)
  %123 = load i32, i32* @IO_SSR_LANCE_DMA_EN, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @ioasic_write(i32 %120, i32 %124)
  %126 = call i32 (...) @fast_mb()
  %127 = load i64, i64* %8, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* @ioasic_ssr_lock, i64 %127)
  br label %129

129:                                              ; preds = %116, %87
  %130 = load %struct.lance_private*, %struct.lance_private** %5, align 8
  %131 = call i32 @init_restart_lance(%struct.lance_private* %130)
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  store i32 %132, i32* %2, align 4
  br label %133

133:                                              ; preds = %129, %101, %77
  %134 = load i32, i32* %2, align 4
  ret i32 %134
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writereg(i32*, i32) #1

declare dso_local i64* @lib_ptr(i32*, i32, i32) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i64 @request_irq(i64, i32, i32, i8*, %struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @free_irq(i64, %struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @fast_mb(...) #1

declare dso_local i32 @ioasic_write(i32, i32) #1

declare dso_local i32 @ioasic_read(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
