; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_declance.c_lance_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_declance.c_lance_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lance_private = type { %struct.lance_regs* }
%struct.lance_regs = type { i32, i32 }

@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_INTR = common dso_local global i32 0, align 4
@LE_C0_TINT = common dso_local global i32 0, align 4
@LE_C0_RINT = common dso_local global i32 0, align 4
@LE_C0_ERR = common dso_local global i32 0, align 4
@LE_C0_BABL = common dso_local global i32 0, align 4
@LE_C0_MISS = common dso_local global i32 0, align 4
@LE_C0_CERR = common dso_local global i32 0, align 4
@LE_C0_MERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Memory error, status %04x\0A\00", align 1
@LE_C0_STOP = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lance_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.lance_private*, align 8
  %7 = alloca %struct.lance_regs*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.lance_private* @netdev_priv(%struct.net_device* %11)
  store %struct.lance_private* %12, %struct.lance_private** %6, align 8
  %13 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %14 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %13, i32 0, i32 0
  %15 = load %struct.lance_regs*, %struct.lance_regs** %14, align 8
  store %struct.lance_regs* %15, %struct.lance_regs** %7, align 8
  %16 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  %17 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %16, i32 0, i32 0
  %18 = load i32, i32* @LE_CSR0, align 4
  %19 = call i32 @writereg(i32* %17, i32 %18)
  %20 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  %21 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %20, i32 0, i32 1
  %22 = load volatile i32, i32* %21, align 4
  store i32 %22, i32* %8, align 4
  %23 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  %24 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %23, i32 0, i32 1
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @LE_C0_INTR, align 4
  %27 = load i32, i32* @LE_C0_TINT, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @LE_C0_RINT, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = call i32 @writereg(i32* %24, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @LE_C0_ERR, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %2
  %38 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  %39 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %38, i32 0, i32 1
  %40 = load i32, i32* @LE_C0_BABL, align 4
  %41 = load i32, i32* @LE_C0_ERR, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @LE_C0_MISS, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @LE_C0_CERR, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @LE_C0_MERR, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @writereg(i32* %39, i32 %48)
  br label %50

50:                                               ; preds = %37, %2
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @LE_C0_RINT, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.net_device*, %struct.net_device** %5, align 8
  %57 = call i32 @lance_rx(%struct.net_device* %56)
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @LE_C0_TINT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %5, align 8
  %65 = call i32 @lance_tx(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @LE_C0_BABL, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.net_device*, %struct.net_device** %5, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %71, %66
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @LE_C0_MISS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load %struct.net_device*, %struct.net_device** %5, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %77
  %89 = load i32, i32* %8, align 4
  %90 = load i32, i32* @LE_C0_MERR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %88
  %94 = load %struct.net_device*, %struct.net_device** %5, align 8
  %95 = getelementptr inbounds %struct.net_device, %struct.net_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @printk(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  %100 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %99, i32 0, i32 1
  %101 = load i32, i32* @LE_C0_STOP, align 4
  %102 = call i32 @writereg(i32* %100, i32 %101)
  %103 = load %struct.net_device*, %struct.net_device** %5, align 8
  %104 = call i32 @lance_init_ring(%struct.net_device* %103)
  %105 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %106 = call i32 @load_csrs(%struct.lance_private* %105)
  %107 = load %struct.lance_private*, %struct.lance_private** %6, align 8
  %108 = call i32 @init_restart_lance(%struct.lance_private* %107)
  %109 = load %struct.net_device*, %struct.net_device** %5, align 8
  %110 = call i32 @netif_wake_queue(%struct.net_device* %109)
  br label %111

111:                                              ; preds = %93, %88
  %112 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  %113 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %112, i32 0, i32 1
  %114 = load i32, i32* @LE_C0_INEA, align 4
  %115 = call i32 @writereg(i32* %113, i32 %114)
  %116 = load %struct.lance_regs*, %struct.lance_regs** %7, align 8
  %117 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %116, i32 0, i32 1
  %118 = load i32, i32* @LE_C0_INEA, align 4
  %119 = call i32 @writereg(i32* %117, i32 %118)
  %120 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %120
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writereg(i32*, i32) #1

declare dso_local i32 @lance_rx(%struct.net_device*) #1

declare dso_local i32 @lance_tx(%struct.net_device*) #1

declare dso_local i32 @printk(i8*, i32, i32) #1

declare dso_local i32 @lance_init_ring(%struct.net_device*) #1

declare dso_local i32 @load_csrs(%struct.lance_private*) #1

declare dso_local i32 @init_restart_lance(%struct.lance_private*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
