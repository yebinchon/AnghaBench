; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_pm3393.c_pm3393_set_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_pm3393.c_pm3393_set_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ETH_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_MAX_FRAME_LENGTH = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i32)* @pm3393_set_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_set_mtu(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.cmac*, %struct.cmac** %3, align 8
  %7 = getelementptr inbounds %struct.cmac, %struct.cmac* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  %11 = load i64, i64* @ETH_HLEN, align 8
  %12 = load i64, i64* @ETH_FCS_LEN, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.cmac*, %struct.cmac** %3, align 8
  %22 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %23 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @pm3393_disable(%struct.cmac* %21, i32 %24)
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.cmac*, %struct.cmac** %3, align 8
  %28 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MAX_FRAME_LENGTH, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @pmwrite(%struct.cmac* %27, i32 %28, i32 %29)
  %31 = load %struct.cmac*, %struct.cmac** %3, align 8
  %32 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_MAX_FRAME_SIZE, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pmwrite(%struct.cmac* %31, i32 %32, i32 %33)
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = load %struct.cmac*, %struct.cmac** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @pm3393_enable(%struct.cmac* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %26
  ret i32 0
}

declare dso_local i32 @pm3393_disable(%struct.cmac*, i32) #1

declare dso_local i32 @pmwrite(%struct.cmac*, i32, i32) #1

declare dso_local i32 @pm3393_enable(%struct.cmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
