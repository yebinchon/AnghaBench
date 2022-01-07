; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_init_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_init_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ksz_port_mib }
%struct.ksz_port_mib = type { i32, i64, i32 }

@REG_PORT_MIB_CTRL_STAT__4 = common dso_local global i32 0, align 4
@MIB_COUNTER_FLUSH_FREEZE = common dso_local global i32 0, align 4
@REG_SW_MAC_CTRL_6 = common dso_local global i32 0, align 4
@SW_MIB_COUNTER_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32)* @ksz9477_port_init_cnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_port_init_cnt(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_port_mib*, align 8
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %7 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.ksz_port_mib* %12, %struct.ksz_port_mib** %5, align 8
  %13 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %14 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %13, i32 0, i32 2
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @REG_PORT_MIB_CTRL_STAT__4, align 4
  %19 = load i32, i32* @MIB_COUNTER_FLUSH_FREEZE, align 4
  %20 = call i32 @ksz_pwrite32(%struct.ksz_device* %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %22 = load i32, i32* @REG_SW_MAC_CTRL_6, align 4
  %23 = load i32, i32* @SW_MIB_COUNTER_FLUSH, align 4
  %24 = call i32 @ksz_write8(%struct.ksz_device* %21, i32 %22, i32 %23)
  %25 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @REG_PORT_MIB_CTRL_STAT__4, align 4
  %28 = call i32 @ksz_pwrite32(%struct.ksz_device* %25, i32 %26, i32 %27, i32 0)
  %29 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %30 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %29, i32 0, i32 2
  %31 = call i32 @mutex_unlock(i32* %30)
  %32 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %33 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.ksz_port_mib*, %struct.ksz_port_mib** %5, align 8
  %35 = getelementptr inbounds %struct.ksz_port_mib, %struct.ksz_port_mib* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %38 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memset(i32 %36, i32 0, i32 %42)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ksz_pwrite32(%struct.ksz_device*, i32, i32, i32) #1

declare dso_local i32 @ksz_write8(%struct.ksz_device*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
