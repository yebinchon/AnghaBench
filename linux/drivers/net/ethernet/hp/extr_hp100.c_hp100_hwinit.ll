; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_hwinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_hwinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.hp100_private = type { i32, i64 }

@PERFORMANCE = common dso_local global i32 0, align 4
@IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_STATUS = common dso_local global i32 0, align 4
@HP100_INT_EN = common dso_local global i32 0, align 4
@HP100_RESET_LB = common dso_local global i32 0, align 4
@OPTION_LSW = common dso_local global i32 0, align 4
@HP100_TRI_INT = common dso_local global i32 0, align 4
@HP100_SET_HB = common dso_local global i32 0, align 4
@MAC_CTRL = common dso_local global i32 0, align 4
@HP100_RX_EN = common dso_local global i32 0, align 4
@HP100_TX_EN = common dso_local global i32 0, align 4
@MAC_CFG_1 = common dso_local global i32 0, align 4
@HP100_DEBUG_EN = common dso_local global i32 0, align 4
@HP100_RX_HDR = common dso_local global i32 0, align 4
@HP100_EE_EN = common dso_local global i32 0, align 4
@HP100_BM_WRITE = common dso_local global i32 0, align 4
@HP100_BM_READ = common dso_local global i32 0, align 4
@HP100_RESET_HB = common dso_local global i32 0, align 4
@HP100_FAKE_INT = common dso_local global i32 0, align 4
@HP100_MEM_EN = common dso_local global i32 0, align 4
@HP100_IO_EN = common dso_local global i32 0, align 4
@HP100_MMAP_DIS = common dso_local global i32 0, align 4
@HP100_PRIORITY_TX = common dso_local global i32 0, align 4
@HP100_ADV_NXT_PKT = common dso_local global i32 0, align 4
@HP100_TX_CMD = common dso_local global i32 0, align 4
@OPTION_MSW = common dso_local global i32 0, align 4
@HP100_LAN_100 = common dso_local global i64 0, align 8
@HP100_LAN_ERR = common dso_local global i64 0, align 8
@TRACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @hp100_hwinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hp100_hwinit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hp100_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %8)
  store %struct.hp100_private* %9, %struct.hp100_private** %4, align 8
  %10 = load i32, i32* @PERFORMANCE, align 4
  %11 = call i32 @hp100_page(i32 %10)
  %12 = load i32, i32* @IRQ_MASK, align 4
  %13 = call i32 @hp100_outw(i32 65278, i32 %12)
  %14 = load i32, i32* @IRQ_STATUS, align 4
  %15 = call i32 @hp100_outw(i32 65535, i32 %14)
  %16 = load i32, i32* @HP100_INT_EN, align 4
  %17 = load i32, i32* @HP100_RESET_LB, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OPTION_LSW, align 4
  %20 = call i32 @hp100_outw(i32 %18, i32 %19)
  %21 = load i32, i32* @HP100_TRI_INT, align 4
  %22 = load i32, i32* @HP100_SET_HB, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @OPTION_LSW, align 4
  %25 = call i32 @hp100_outw(i32 %23, i32 %24)
  %26 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %27 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = call i32 @hp100_BM_shutdown(%struct.net_device* %31)
  %33 = call i32 (...) @wait()
  br label %50

34:                                               ; preds = %1
  %35 = load i32, i32* @HP100_INT_EN, align 4
  %36 = load i32, i32* @HP100_RESET_LB, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @OPTION_LSW, align 4
  %39 = call i32 @hp100_outw(i32 %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @hp100_cascade_reset(%struct.net_device* %40, i32 1)
  %42 = load i32, i32* @MAC_CTRL, align 4
  %43 = call i32 @hp100_page(i32 %42)
  %44 = load i32, i32* @HP100_RX_EN, align 4
  %45 = load i32, i32* @HP100_TX_EN, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* @MAC_CFG_1, align 4
  %49 = call i32 @hp100_andb(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %34, %30
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @hp100_load_eeprom(%struct.net_device* %51, i32 0)
  %53 = call i32 (...) @wait()
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = call i32 @hp100_cascade_reset(%struct.net_device* %54, i32 1)
  %56 = load i32, i32* @HP100_DEBUG_EN, align 4
  %57 = load i32, i32* @HP100_RX_HDR, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @HP100_EE_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @HP100_BM_WRITE, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @HP100_BM_READ, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* @HP100_RESET_HB, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @HP100_FAKE_INT, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @HP100_INT_EN, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @HP100_MEM_EN, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @HP100_IO_EN, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* @HP100_RESET_LB, align 4
  %76 = or i32 %74, %75
  %77 = load i32, i32* @OPTION_LSW, align 4
  %78 = call i32 @hp100_outw(i32 %76, i32 %77)
  %79 = load i32, i32* @HP100_TRI_INT, align 4
  %80 = load i32, i32* @HP100_MMAP_DIS, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @HP100_SET_HB, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @OPTION_LSW, align 4
  %85 = call i32 @hp100_outw(i32 %83, i32 %84)
  %86 = load i32, i32* @HP100_PRIORITY_TX, align 4
  %87 = load i32, i32* @HP100_ADV_NXT_PKT, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @HP100_TX_CMD, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @HP100_RESET_LB, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @OPTION_MSW, align 4
  %94 = call i32 @hp100_outb(i32 %92, i32 %93)
  %95 = load %struct.net_device*, %struct.net_device** %2, align 8
  %96 = call i32 @hp100_mmuinit(%struct.net_device* %95)
  %97 = call i32 (...) @wait()
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = call i32 @hp100_cascade_reset(%struct.net_device* %98, i32 0)
  %100 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %101 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HP100_LAN_100, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %111, label %105

105:                                              ; preds = %50
  %106 = load %struct.hp100_private*, %struct.hp100_private** %4, align 8
  %107 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @HP100_LAN_ERR, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %105, %50
  %112 = load %struct.net_device*, %struct.net_device** %2, align 8
  %113 = call i32 @hp100_login_to_vg_hub(%struct.net_device* %112, i32 0)
  br label %114

114:                                              ; preds = %111, %105
  ret void
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hp100_page(i32) #1

declare dso_local i32 @hp100_outw(i32, i32) #1

declare dso_local i32 @hp100_BM_shutdown(%struct.net_device*) #1

declare dso_local i32 @wait(...) #1

declare dso_local i32 @hp100_cascade_reset(%struct.net_device*, i32) #1

declare dso_local i32 @hp100_andb(i32, i32) #1

declare dso_local i32 @hp100_load_eeprom(%struct.net_device*, i32) #1

declare dso_local i32 @hp100_outb(i32, i32) #1

declare dso_local i32 @hp100_mmuinit(%struct.net_device*) #1

declare dso_local i32 @hp100_login_to_vg_hub(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
