; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_lance_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_a2065.c_lance_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.lance_private = type { %struct.lance_regs* }
%struct.lance_regs = type { i32, i8* }

@LE_CSR0 = common dso_local global i8* null, align 8
@LE_C0_INTR = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@LE_C0_INEA = common dso_local global i32 0, align 4
@LE_C0_TDMD = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i32 0, align 4
@LE_C0_STRT = common dso_local global i32 0, align 4
@LE_C0_INIT = common dso_local global i32 0, align 4
@LE_C0_ERR = common dso_local global i32 0, align 4
@LE_C0_BABL = common dso_local global i32 0, align 4
@LE_C0_MISS = common dso_local global i32 0, align 4
@LE_C0_RINT = common dso_local global i32 0, align 4
@LE_C0_TINT = common dso_local global i32 0, align 4
@LE_C0_MERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Bus master arbitration failure, status %04x\0A\00", align 1
@LE_C0_CERR = common dso_local global i32 0, align 4
@LE_C0_IDON = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @lance_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lance_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.lance_private*, align 8
  %8 = alloca %struct.lance_regs*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.lance_private* @netdev_priv(%struct.net_device* %12)
  store %struct.lance_private* %13, %struct.lance_private** %7, align 8
  %14 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %15 = getelementptr inbounds %struct.lance_private, %struct.lance_private* %14, i32 0, i32 0
  %16 = load %struct.lance_regs*, %struct.lance_regs** %15, align 8
  store %struct.lance_regs* %16, %struct.lance_regs** %8, align 8
  %17 = load i8*, i8** @LE_CSR0, align 8
  %18 = load %struct.lance_regs*, %struct.lance_regs** %8, align 8
  %19 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %18, i32 0, i32 1
  store volatile i8* %17, i8** %19, align 8
  %20 = load %struct.lance_regs*, %struct.lance_regs** %8, align 8
  %21 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %20, i32 0, i32 0
  %22 = load volatile i32, i32* %21, align 8
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @LE_C0_INTR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %137

29:                                               ; preds = %2
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @LE_C0_INEA, align 4
  %32 = load i32, i32* @LE_C0_TDMD, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @LE_C0_STOP, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @LE_C0_STRT, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @LE_C0_INIT, align 4
  %39 = or i32 %37, %38
  %40 = xor i32 %39, -1
  %41 = and i32 %30, %40
  %42 = load %struct.lance_regs*, %struct.lance_regs** %8, align 8
  %43 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %42, i32 0, i32 0
  store volatile i32 %41, i32* %43, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @LE_C0_ERR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %29
  %49 = load i32, i32* @LE_C0_BABL, align 4
  %50 = load i32, i32* @LE_C0_ERR, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @LE_C0_MISS, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @LE_C0_INEA, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.lance_regs*, %struct.lance_regs** %8, align 8
  %57 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %56, i32 0, i32 0
  store volatile i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %48, %29
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @LE_C0_RINT, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.net_device*, %struct.net_device** %6, align 8
  %65 = call i32 @lance_rx(%struct.net_device* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @LE_C0_TINT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.net_device*, %struct.net_device** %6, align 8
  %73 = call i32 @lance_tx(%struct.net_device* %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @LE_C0_BABL, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %74
  %80 = load %struct.net_device*, %struct.net_device** %6, align 8
  %81 = getelementptr inbounds %struct.net_device, %struct.net_device* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @LE_C0_MISS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %6, align 8
  %92 = getelementptr inbounds %struct.net_device, %struct.net_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %9, align 4
  %98 = load i32, i32* @LE_C0_MERR, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %96
  %102 = load %struct.net_device*, %struct.net_device** %6, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @netdev_err(%struct.net_device* %102, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @LE_C0_STRT, align 4
  %106 = load %struct.lance_regs*, %struct.lance_regs** %8, align 8
  %107 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %106, i32 0, i32 0
  store volatile i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %101, %96
  %109 = load %struct.net_device*, %struct.net_device** %6, align 8
  %110 = call i64 @netif_queue_stopped(%struct.net_device* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %108
  %113 = load %struct.lance_private*, %struct.lance_private** %7, align 8
  %114 = call i64 @lance_tx_buffs_avail(%struct.lance_private* %113)
  %115 = icmp sgt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load %struct.net_device*, %struct.net_device** %6, align 8
  %118 = call i32 @netif_wake_queue(%struct.net_device* %117)
  br label %119

119:                                              ; preds = %116, %112, %108
  %120 = load i8*, i8** @LE_CSR0, align 8
  %121 = load %struct.lance_regs*, %struct.lance_regs** %8, align 8
  %122 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %121, i32 0, i32 1
  store volatile i8* %120, i8** %122, align 8
  %123 = load i32, i32* @LE_C0_BABL, align 4
  %124 = load i32, i32* @LE_C0_CERR, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @LE_C0_MISS, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @LE_C0_MERR, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @LE_C0_IDON, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @LE_C0_INEA, align 4
  %133 = or i32 %131, %132
  %134 = load %struct.lance_regs*, %struct.lance_regs** %8, align 8
  %135 = getelementptr inbounds %struct.lance_regs, %struct.lance_regs* %134, i32 0, i32 0
  store volatile i32 %133, i32* %135, align 8
  %136 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %136, i32* %3, align 4
  br label %137

137:                                              ; preds = %119, %27
  %138 = load i32, i32* %3, align 4
  ret i32 %138
}

declare dso_local %struct.lance_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @lance_rx(%struct.net_device*) #1

declare dso_local i32 @lance_tx(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i64 @lance_tx_buffs_avail(%struct.lance_private*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
