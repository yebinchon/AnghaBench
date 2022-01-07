; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_main.c_ixgb_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_adapter = type { i32, i64, %struct.ixgb_hw, %struct.TYPE_2__ }
%struct.ixgb_hw = type { i32 }
%struct.TYPE_2__ = type { i32, i32 }

@RCTL = common dso_local global i32 0, align 4
@IXGB_RCTL_RXEN = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@RDBAL = common dso_local global i32 0, align 4
@RDBAH = common dso_local global i32 0, align 4
@RDLEN = common dso_local global i32 0, align 4
@RDH = common dso_local global i32 0, align 4
@RDT = common dso_local global i32 0, align 4
@RXDCTL = common dso_local global i32 0, align 4
@RXCSUM = common dso_local global i32 0, align 4
@IXGB_RXCSUM_TUOFL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_adapter*)* @ixgb_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_configure_rx(%struct.ixgb_adapter* %0) #0 {
  %2 = alloca %struct.ixgb_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgb_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgb_adapter* %0, %struct.ixgb_adapter** %2, align 8
  %8 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %19, i32 0, i32 2
  store %struct.ixgb_hw* %20, %struct.ixgb_hw** %5, align 8
  %21 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %22 = load i32, i32* @RCTL, align 4
  %23 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %25 = load i32, i32* @RCTL, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IXGB_RCTL_RXEN, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %24, i32 %25, i32 %29)
  %31 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %32 = load i32, i32* @RDTR, align 4
  %33 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %34 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %31, i32 %32, i32 %35)
  %37 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %38 = load i32, i32* @RDBAL, align 4
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = and i64 %40, 4294967295
  %42 = trunc i64 %41 to i32
  %43 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %37, i32 %38, i32 %42)
  %44 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %45 = load i32, i32* @RDBAH, align 4
  %46 = load i32, i32* %3, align 4
  %47 = ashr i32 %46, 32
  %48 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %44, i32 %45, i32 %47)
  %49 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %50 = load i32, i32* @RDLEN, align 4
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %49, i32 %50, i32 %51)
  %53 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %54 = load i32, i32* @RDH, align 4
  %55 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %53, i32 %54, i32 0)
  %56 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %57 = load i32, i32* @RDT, align 4
  %58 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %56, i32 %57, i32 0)
  %59 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %60 = load i32, i32* @RXDCTL, align 4
  %61 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %59, i32 %60, i32 0)
  %62 = load %struct.ixgb_adapter*, %struct.ixgb_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgb_adapter, %struct.ixgb_adapter* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %1
  %67 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %68 = load i32, i32* @RXCSUM, align 4
  %69 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %67, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* @IXGB_RXCSUM_TUOFL, align 4
  %71 = load i32, i32* %7, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %74 = load i32, i32* @RXCSUM, align 4
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %66, %1
  %78 = load %struct.ixgb_hw*, %struct.ixgb_hw** %5, align 8
  %79 = load i32, i32* @RCTL, align 4
  %80 = load i32, i32* %6, align 4
  %81 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %78, i32 %79, i32 %80)
  ret void
}

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
