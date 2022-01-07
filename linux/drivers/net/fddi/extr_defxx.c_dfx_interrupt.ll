; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/fddi/extr_defxx.c_dfx_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.TYPE_7__ = type { i64 }

@PFI_K_REG_STATUS = common dso_local global i32 0, align 4
@PFI_STATUS_M_PDQ_INT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@PFI_K_REG_MODE_CTRL = common dso_local global i32 0, align 4
@PFI_MODE_M_DMA_ENB = common dso_local global i32 0, align 4
@PFI_MODE_M_PDQ_INT_ENB = common dso_local global i32 0, align 4
@PI_ESIC_K_IO_CONFIG_STAT_0 = common dso_local global i64 0, align 8
@PI_CONFIG_STAT_0_M_PEND = common dso_local global i32 0, align 4
@PI_CONFIG_STAT_0_M_INT_ENB = common dso_local global i32 0, align 4
@PI_PDQ_K_REG_PORT_STATUS = common dso_local global i32 0, align 4
@PI_PSTATUS_M_RCV_DATA_PENDING = common dso_local global i32 0, align 4
@PI_PSTATUS_M_XMT_DATA_PENDING = common dso_local global i32 0, align 4
@PI_PSTATUS_M_SMT_HOST_PENDING = common dso_local global i32 0, align 4
@PI_PSTATUS_M_UNSOL_PENDING = common dso_local global i32 0, align 4
@PI_PSTATUS_M_CMD_RSP_PENDING = common dso_local global i32 0, align 4
@PI_PSTATUS_M_CMD_REQ_PENDING = common dso_local global i32 0, align 4
@PI_PSTATUS_M_TYPE_0_PENDING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dfx_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dfx_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.net_device*
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = call %struct.TYPE_6__* @netdev_priv(%struct.net_device* %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.device*, %struct.device** %21, align 8
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = call i32 @dev_is_pci(%struct.device* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.device*, %struct.device** %8, align 8
  %26 = call i32 @DFX_BUS_EISA(%struct.device* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = call i32 @DFX_BUS_TC(%struct.device* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %64

31:                                               ; preds = %2
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %33 = load i32, i32* @PFI_K_REG_STATUS, align 4
  %34 = call i32 @dfx_port_read_long(%struct.TYPE_6__* %32, i32 %33, i32* %12)
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* @PFI_STATUS_M_PDQ_INT, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %31
  %40 = load i32, i32* @IRQ_NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %148

41:                                               ; preds = %31
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %46 = load i32, i32* @PFI_K_REG_MODE_CTRL, align 4
  %47 = load i32, i32* @PFI_MODE_M_DMA_ENB, align 4
  %48 = call i32 @dfx_port_write_long(%struct.TYPE_6__* %45, i32 %46, i32 %47)
  %49 = load %struct.net_device*, %struct.net_device** %6, align 8
  %50 = call i32 @dfx_int_common(%struct.net_device* %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = load i32, i32* @PFI_K_REG_STATUS, align 4
  %53 = load i32, i32* @PFI_STATUS_M_PDQ_INT, align 4
  %54 = call i32 @dfx_port_write_long(%struct.TYPE_6__* %51, i32 %52, i32 %53)
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = load i32, i32* @PFI_K_REG_MODE_CTRL, align 4
  %57 = load i32, i32* @PFI_MODE_M_PDQ_INT_ENB, align 4
  %58 = load i32, i32* @PFI_MODE_M_DMA_ENB, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @dfx_port_write_long(%struct.TYPE_6__* %55, i32 %56, i32 %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  br label %64

64:                                               ; preds = %41, %2
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %112

67:                                               ; preds = %64
  %68 = load %struct.device*, %struct.device** %8, align 8
  %69 = call %struct.TYPE_7__* @to_eisa_device(%struct.device* %68)
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %74 = add i64 %72, %73
  %75 = call i32 @inb(i64 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* @PI_CONFIG_STAT_0_M_PEND, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %67
  %81 = load i32, i32* @IRQ_NONE, align 4
  store i32 %81, i32* %3, align 4
  br label %148

82:                                               ; preds = %67
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load i32, i32* @PI_CONFIG_STAT_0_M_INT_ENB, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %14, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %14, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %93 = add i64 %91, %92
  %94 = call i32 @outb(i32 %90, i64 %93)
  %95 = load %struct.net_device*, %struct.net_device** %6, align 8
  %96 = call i32 @dfx_int_common(%struct.net_device* %95)
  %97 = load i64, i64* %13, align 8
  %98 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %99 = add i64 %97, %98
  %100 = call i32 @inb(i64 %99)
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* @PI_CONFIG_STAT_0_M_INT_ENB, align 4
  %102 = load i32, i32* %14, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %14, align 4
  %104 = load i32, i32* %14, align 4
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* @PI_ESIC_K_IO_CONFIG_STAT_0, align 8
  %107 = add i64 %105, %106
  %108 = call i32 @outb(i32 %104, i64 %107)
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = call i32 @spin_unlock(i32* %110)
  br label %112

112:                                              ; preds = %82, %64
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %146

115:                                              ; preds = %112
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %117 = load i32, i32* @PI_PDQ_K_REG_PORT_STATUS, align 4
  %118 = call i32 @dfx_port_read_long(%struct.TYPE_6__* %116, i32 %117, i32* %15)
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @PI_PSTATUS_M_RCV_DATA_PENDING, align 4
  %121 = load i32, i32* @PI_PSTATUS_M_XMT_DATA_PENDING, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @PI_PSTATUS_M_SMT_HOST_PENDING, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @PI_PSTATUS_M_UNSOL_PENDING, align 4
  %126 = or i32 %124, %125
  %127 = load i32, i32* @PI_PSTATUS_M_CMD_RSP_PENDING, align 4
  %128 = or i32 %126, %127
  %129 = load i32, i32* @PI_PSTATUS_M_CMD_REQ_PENDING, align 4
  %130 = or i32 %128, %129
  %131 = load i32, i32* @PI_PSTATUS_M_TYPE_0_PENDING, align 4
  %132 = or i32 %130, %131
  %133 = and i32 %119, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %137, label %135

135:                                              ; preds = %115
  %136 = load i32, i32* @IRQ_NONE, align 4
  store i32 %136, i32* %3, align 4
  br label %148

137:                                              ; preds = %115
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = call i32 @spin_lock(i32* %139)
  %141 = load %struct.net_device*, %struct.net_device** %6, align 8
  %142 = call i32 @dfx_int_common(%struct.net_device* %141)
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  %145 = call i32 @spin_unlock(i32* %144)
  br label %146

146:                                              ; preds = %137, %112
  %147 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %146, %135, %80, %39
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.TYPE_6__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_is_pci(%struct.device*) #1

declare dso_local i32 @DFX_BUS_EISA(%struct.device*) #1

declare dso_local i32 @DFX_BUS_TC(%struct.device*) #1

declare dso_local i32 @dfx_port_read_long(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dfx_port_write_long(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @dfx_int_common(%struct.net_device*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.TYPE_7__* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
