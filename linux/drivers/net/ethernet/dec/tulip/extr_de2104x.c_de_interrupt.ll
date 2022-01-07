; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de2104x.c_de_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de_private = type { i32, i32, i32, i32, i32, i32 }

@MacStatus = common dso_local global i32 0, align 4
@IntrOK = common dso_local global i32 0, align 4
@IntrErr = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"intr, status %08x mode %08x desc %u/%u/%u\0A\00", align 1
@MacMode = common dso_local global i32 0, align 4
@RxIntr = common dso_local global i32 0, align 4
@RxEmpty = common dso_local global i32 0, align 4
@RxPoll = common dso_local global i32 0, align 4
@NormalRxPoll = common dso_local global i32 0, align 4
@TxIntr = common dso_local global i32 0, align 4
@TxEmpty = common dso_local global i32 0, align 4
@LinkPass = common dso_local global i32 0, align 4
@LinkFail = common dso_local global i32 0, align 4
@PciErr = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"PCI bus error, status=%08x, PCI status=%04x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @de_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @de_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.de_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.de_private* @netdev_priv(%struct.net_device* %12)
  store %struct.de_private* %13, %struct.de_private** %7, align 8
  %14 = load i32, i32* @MacStatus, align 4
  %15 = call i32 @dr32(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @IntrOK, align 4
  %18 = load i32, i32* @IntrErr, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 65535
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %2
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %117

27:                                               ; preds = %22
  %28 = load %struct.de_private*, %struct.de_private** %7, align 8
  %29 = load i32, i32* @intr, align 4
  %30 = load %struct.net_device*, %struct.net_device** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @MacMode, align 4
  %33 = call i32 @dr32(i32 %32)
  %34 = load %struct.de_private*, %struct.de_private** %7, align 8
  %35 = getelementptr inbounds %struct.de_private, %struct.de_private* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.de_private*, %struct.de_private** %7, align 8
  %38 = getelementptr inbounds %struct.de_private, %struct.de_private* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.de_private*, %struct.de_private** %7, align 8
  %41 = getelementptr inbounds %struct.de_private, %struct.de_private* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_dbg(%struct.de_private* %28, i32 %29, %struct.net_device* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %33, i32 %36, i32 %39, i32 %42)
  %44 = load i32, i32* @MacStatus, align 4
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @dw32(i32 %44, i32 %45)
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @RxIntr, align 4
  %49 = load i32, i32* @RxEmpty, align 4
  %50 = or i32 %48, %49
  %51 = and i32 %47, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %27
  %54 = load %struct.de_private*, %struct.de_private** %7, align 8
  %55 = call i32 @de_rx(%struct.de_private* %54)
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @RxEmpty, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @RxPoll, align 4
  %62 = load i32, i32* @NormalRxPoll, align 4
  %63 = call i32 @dw32(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %53
  br label %65

65:                                               ; preds = %64, %27
  %66 = load %struct.de_private*, %struct.de_private** %7, align 8
  %67 = getelementptr inbounds %struct.de_private, %struct.de_private* %66, i32 0, i32 2
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @TxIntr, align 4
  %71 = load i32, i32* @TxEmpty, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %65
  %76 = load %struct.de_private*, %struct.de_private** %7, align 8
  %77 = call i32 @de_tx(%struct.de_private* %76)
  br label %78

78:                                               ; preds = %75, %65
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @LinkPass, align 4
  %81 = load i32, i32* @LinkFail, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %78
  %86 = load %struct.de_private*, %struct.de_private** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @de_media_interrupt(%struct.de_private* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %78
  %90 = load %struct.de_private*, %struct.de_private** %7, align 8
  %91 = getelementptr inbounds %struct.de_private, %struct.de_private* %90, i32 0, i32 2
  %92 = call i32 @spin_unlock(i32* %91)
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @PciErr, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %89
  %98 = load %struct.de_private*, %struct.de_private** %7, align 8
  %99 = getelementptr inbounds %struct.de_private, %struct.de_private* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PCI_STATUS, align 4
  %102 = call i32 @pci_read_config_word(i32 %100, i32 %101, i32* %9)
  %103 = load %struct.de_private*, %struct.de_private** %7, align 8
  %104 = getelementptr inbounds %struct.de_private, %struct.de_private* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @PCI_STATUS, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @pci_write_config_word(i32 %105, i32 %106, i32 %107)
  %109 = load %struct.de_private*, %struct.de_private** %7, align 8
  %110 = getelementptr inbounds %struct.de_private, %struct.de_private* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @netdev_err(i32 %111, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %97, %89
  %116 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %116, i32* %3, align 4
  br label %117

117:                                              ; preds = %115, %25
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local %struct.de_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dr32(i32) #1

declare dso_local i32 @netif_dbg(%struct.de_private*, i32, %struct.net_device*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dw32(i32, i32) #1

declare dso_local i32 @de_rx(%struct.de_private*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @de_tx(%struct.de_private*) #1

declare dso_local i32 @de_media_interrupt(%struct.de_private*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
