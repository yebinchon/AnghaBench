; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_release_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_common.c_ixgbe_release_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.ixgbe_hw.0*, i32)* }
%struct.ixgbe_hw.0 = type opaque

@IXGBE_EEC_CS = common dso_local global i32 0, align 4
@IXGBE_EEC_SK = common dso_local global i32 0, align 4
@IXGBE_EEC_REQ = common dso_local global i32 0, align 4
@IXGBE_GSSR_EEP_SM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_hw*)* @ixgbe_release_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_release_eeprom(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %6 = call i32 @IXGBE_EEC(%struct.ixgbe_hw* %5)
  %7 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %4, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @IXGBE_EEC_CS, align 4
  %9 = load i32, i32* %3, align 4
  %10 = or i32 %9, %8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* @IXGBE_EEC_SK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %3, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %16 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %17 = call i32 @IXGBE_EEC(%struct.ixgbe_hw* %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %15, i32 %17, i32 %18)
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %21 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %20)
  %22 = call i32 @udelay(i32 1)
  %23 = load i32, i32* @IXGBE_EEC_REQ, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %29 = call i32 @IXGBE_EEC(%struct.ixgbe_hw* %28)
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %27, i32 %29, i32 %30)
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %35, align 8
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %38 = bitcast %struct.ixgbe_hw* %37 to %struct.ixgbe_hw.0*
  %39 = load i32, i32* @IXGBE_GSSR_EEP_SM, align 4
  %40 = call i32 %36(%struct.ixgbe_hw.0* %38, i32 %39)
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %42 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = mul nsw i32 %44, 1000
  %46 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %47 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = mul nsw i32 %49, 2000
  %51 = call i32 @usleep_range(i32 %45, i32 %50)
  ret void
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_EEC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
