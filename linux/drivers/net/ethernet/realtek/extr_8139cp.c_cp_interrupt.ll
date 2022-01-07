; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/realtek/extr_8139cp.c_cp_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cp_private = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@IntrStatus = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"intr, status %04x cmd %02x cpcmd %04x\0A\00", align 1
@Cmd = common dso_local global i32 0, align 4
@CpCmd = common dso_local global i32 0, align 4
@cp_rx_intr_mask = common dso_local global i32 0, align 4
@RxOK = common dso_local global i32 0, align 4
@RxErr = common dso_local global i32 0, align 4
@RxEmpty = common dso_local global i32 0, align 4
@RxFIFOOvr = common dso_local global i32 0, align 4
@cp_norx_intr_mask = common dso_local global i32 0, align 4
@TxOK = common dso_local global i32 0, align 4
@TxErr = common dso_local global i32 0, align 4
@TxEmpty = common dso_local global i32 0, align 4
@SWInt = common dso_local global i32 0, align 4
@LinkChg = common dso_local global i32 0, align 4
@PciErr = common dso_local global i32 0, align 4
@PCI_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"PCI bus error, status=%04x, PCI status=%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cp_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cp_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.net_device*
  store %struct.net_device* %13, %struct.net_device** %6, align 8
  store i32 0, i32* %8, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = icmp eq %struct.net_device* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i64 @unlikely(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %144

21:                                               ; preds = %2
  %22 = load %struct.net_device*, %struct.net_device** %6, align 8
  %23 = call %struct.cp_private* @netdev_priv(%struct.net_device* %22)
  store %struct.cp_private* %23, %struct.cp_private** %7, align 8
  %24 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %25 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %24, i32 0, i32 0
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load i32, i32* @IntrMask, align 4
  %28 = call i32 @cpr16(i32 %27)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %21
  br label %138

32:                                               ; preds = %21
  %33 = load i32, i32* @IntrStatus, align 4
  %34 = call i32 @cpr16(i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 65535
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %32
  br label %138

41:                                               ; preds = %37
  store i32 1, i32* %8, align 4
  %42 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %43 = load i32, i32* @intr, align 4
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @Cmd, align 4
  %47 = call i32 @cpr8(i32 %46)
  %48 = load i32, i32* @CpCmd, align 4
  %49 = call i32 @cpr16(i32 %48)
  %50 = call i32 @netif_dbg(%struct.cp_private* %42, i32 %43, %struct.net_device* %44, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %47, i32 %49)
  %51 = load i32, i32* @IntrStatus, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @cp_rx_intr_mask, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = call i32 @cpw16(i32 %51, i32 %55)
  %57 = load %struct.net_device*, %struct.net_device** %6, align 8
  %58 = call i32 @netif_running(%struct.net_device* %57)
  %59 = icmp ne i32 %58, 0
  %60 = xor i1 %59, true
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %41
  %65 = load i32, i32* @IntrMask, align 4
  %66 = call i32 @cpw16(i32 %65, i32 0)
  br label %138

67:                                               ; preds = %41
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @RxOK, align 4
  %70 = load i32, i32* @RxErr, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @RxEmpty, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @RxFIFOOvr, align 4
  %75 = or i32 %73, %74
  %76 = and i32 %68, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %91

78:                                               ; preds = %67
  %79 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %80 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %79, i32 0, i32 3
  %81 = call i64 @napi_schedule_prep(i32* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load i32, i32* @IntrMask, align 4
  %85 = load i32, i32* @cp_norx_intr_mask, align 4
  %86 = call i32 @cpw16_f(i32 %84, i32 %85)
  %87 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %88 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %87, i32 0, i32 3
  %89 = call i32 @__napi_schedule(i32* %88)
  br label %90

90:                                               ; preds = %83, %78
  br label %91

91:                                               ; preds = %90, %67
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @TxOK, align 4
  %94 = load i32, i32* @TxErr, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @TxEmpty, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @SWInt, align 4
  %99 = or i32 %97, %98
  %100 = and i32 %92, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %91
  %103 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %104 = call i32 @cp_tx(%struct.cp_private* %103)
  br label %105

105:                                              ; preds = %102, %91
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @LinkChg, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %112 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %111, i32 0, i32 2
  %113 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %114 = call i32 @netif_msg_link(%struct.cp_private* %113)
  %115 = call i32 @mii_check_media(i32* %112, i32 %114, i32 0)
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @PciErr, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %116
  %122 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %123 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @PCI_STATUS, align 4
  %126 = call i32 @pci_read_config_word(i32 %124, i32 %125, i32* %11)
  %127 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %128 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PCI_STATUS, align 4
  %131 = load i32, i32* %11, align 4
  %132 = call i32 @pci_write_config_word(i32 %129, i32 %130, i32 %131)
  %133 = load %struct.net_device*, %struct.net_device** %6, align 8
  %134 = load i32, i32* %9, align 4
  %135 = load i32, i32* %11, align 4
  %136 = call i32 @netdev_err(%struct.net_device* %133, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %121, %116
  br label %138

138:                                              ; preds = %137, %64, %40, %31
  %139 = load %struct.cp_private*, %struct.cp_private** %7, align 8
  %140 = getelementptr inbounds %struct.cp_private, %struct.cp_private* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock(i32* %140)
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @IRQ_RETVAL(i32 %142)
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %138, %19
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.cp_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpr16(i32) #1

declare dso_local i32 @netif_dbg(%struct.cp_private*, i32, %struct.net_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @cpr8(i32) #1

declare dso_local i32 @cpw16(i32, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @cpw16_f(i32, i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @cp_tx(%struct.cp_private*) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @netif_msg_link(%struct.cp_private*) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_word(i32, i32, i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
