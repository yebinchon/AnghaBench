; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_stop_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ipsec.c_ixgbe_ipsec_stop_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32 }

@IXGBE_IPSTXIDX = common dso_local global i32 0, align 4
@IXGBE_IPSRXIDX = common dso_local global i32 0, align 4
@IXGBE_SECTXCTRL = common dso_local global i32 0, align 4
@IXGBE_SECTXCTRL_SECTX_DIS = common dso_local global i32 0, align 4
@IXGBE_SECTXCTRL_STORE_FORWARD = common dso_local global i32 0, align 4
@IXGBE_SECRXCTRL = common dso_local global i32 0, align 4
@IXGBE_SECRXCTRL_SECRX_DIS = common dso_local global i32 0, align 4
@IXGBE_SECTXBUFFAF = common dso_local global i32 0, align 4
@IXGBE_SECTXMINIFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_ipsec_stop_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_ipsec_stop_engine(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %5, i32 0, i32 0
  store %struct.ixgbe_hw* %6, %struct.ixgbe_hw** %3, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = call i32 @ixgbe_ipsec_stop_data(%struct.ixgbe_adapter* %7)
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %10 = load i32, i32* @IXGBE_IPSTXIDX, align 4
  %11 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %9, i32 %10, i32 0)
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = load i32, i32* @IXGBE_IPSRXIDX, align 4
  %14 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %12, i32 %13, i32 0)
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %16 = load i32, i32* @IXGBE_SECTXCTRL, align 4
  %17 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %15, i32 %16)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* @IXGBE_SECTXCTRL_SECTX_DIS, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* @IXGBE_SECTXCTRL_STORE_FORWARD, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %26 = load i32, i32* @IXGBE_SECTXCTRL, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %25, i32 %26, i32 %27)
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %30 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %31 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* @IXGBE_SECRXCTRL_SECRX_DIS, align 4
  %33 = load i32, i32* %4, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %35, i32 %36, i32 %37)
  %39 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %40 = load i32, i32* @IXGBE_SECTXBUFFAF, align 4
  %41 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %39, i32 %40, i32 592)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = load i32, i32* @IXGBE_SECTXMINIFG, align 4
  %44 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, -16
  %47 = or i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %49 = load i32, i32* @IXGBE_SECTXMINIFG, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %48, i32 %49, i32 %50)
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %53 = load i32, i32* @IXGBE_SECTXCTRL, align 4
  %54 = load i32, i32* @IXGBE_SECTXCTRL_SECTX_DIS, align 4
  %55 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %52, i32 %53, i32 %54)
  %56 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %57 = load i32, i32* @IXGBE_SECRXCTRL, align 4
  %58 = load i32, i32* @IXGBE_SECRXCTRL_SECRX_DIS, align 4
  %59 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %56, i32 %57, i32 %58)
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %61 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %60)
  ret void
}

declare dso_local i32 @ixgbe_ipsec_stop_data(%struct.ixgbe_adapter*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
