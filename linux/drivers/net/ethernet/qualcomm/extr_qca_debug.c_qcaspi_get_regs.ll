; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_debug.c_qcaspi_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_debug.c_qcaspi_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.qcaspi = type { i32 }

@QCASPI_MAX_REGS = common dso_local global i32 0, align 4
@qcaspi_spi_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @qcaspi_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcaspi_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qcaspi*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.qcaspi* @netdev_priv(%struct.net_device* %12)
  store %struct.qcaspi* %13, %struct.qcaspi** %7, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to i64*
  store i64* %15, i64** %8, align 8
  %16 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %16, i32 0, i32 0
  store i32 1, i32* %17, align 4
  %18 = load i64*, i64** %8, align 8
  %19 = load i32, i32* @QCASPI_MAX_REGS, align 4
  %20 = sext i32 %19 to i64
  %21 = mul i64 8, %20
  %22 = trunc i64 %21 to i32
  %23 = call i32 @memset(i64* %18, i32 0, i32 %22)
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %48, %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** @qcaspi_spi_regs, align 8
  %27 = call i32 @ARRAY_SIZE(i32* %26)
  %28 = icmp ult i32 %25, %27
  br i1 %28, label %29, label %51

29:                                               ; preds = %24
  %30 = load %struct.qcaspi*, %struct.qcaspi** %7, align 8
  %31 = load i32*, i32** @qcaspi_spi_regs, align 8
  %32 = load i32, i32* %9, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @qcaspi_read_register(%struct.qcaspi* %30, i32 %35, i64* %11)
  %37 = load i32*, i32** @qcaspi_spi_regs, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 8
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %10, align 8
  %44 = load i64, i64* %11, align 8
  %45 = load i64*, i64** %8, align 8
  %46 = load i64, i64* %10, align 8
  %47 = getelementptr inbounds i64, i64* %45, i64 %46
  store i64 %44, i64* %47, align 8
  br label %48

48:                                               ; preds = %29
  %49 = load i32, i32* %9, align 4
  %50 = add i32 %49, 1
  store i32 %50, i32* %9, align 4
  br label %24

51:                                               ; preds = %24
  ret void
}

declare dso_local %struct.qcaspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @qcaspi_read_register(%struct.qcaspi*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
