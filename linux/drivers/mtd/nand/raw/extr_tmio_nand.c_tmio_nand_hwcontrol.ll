; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_nand_hwcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tmio_nand.c_tmio_nand_hwcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.tmio_nand = type { i64, i64 }

@NAND_CTRL_CHANGE = common dso_local global i32 0, align 4
@NAND_NCE = common dso_local global i32 0, align 4
@FCR_MODE_DATA = common dso_local global i32 0, align 4
@NAND_CLE = common dso_local global i32 0, align 4
@FCR_MODE_CLE = common dso_local global i32 0, align 4
@NAND_ALE = common dso_local global i32 0, align 4
@FCR_MODE_ALE = common dso_local global i32 0, align 4
@FCR_MODE_STANDBY = common dso_local global i32 0, align 4
@FCR_MODE = common dso_local global i64 0, align 8
@NAND_CMD_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32, i32)* @tmio_nand_hwcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_nand_hwcontrol(%struct.nand_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tmio_nand*, align 8
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = call i32 @nand_to_mtd(%struct.nand_chip* %9)
  %11 = call %struct.tmio_nand* @mtd_to_tmio(i32 %10)
  store %struct.tmio_nand* %11, %struct.tmio_nand** %7, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @NAND_CTRL_CHANGE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %63

16:                                               ; preds = %3
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @NAND_NCE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = load i32, i32* @FCR_MODE_DATA, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @NAND_CLE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* @FCR_MODE_CLE, align 4
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %36

31:                                               ; preds = %21
  %32 = load i32, i32* @FCR_MODE_CLE, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NAND_ALE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @FCR_MODE_ALE, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %50

45:                                               ; preds = %36
  %46 = load i32, i32* @FCR_MODE_ALE, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %8, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %45, %41
  br label %53

51:                                               ; preds = %16
  %52 = load i32, i32* @FCR_MODE_STANDBY, align 4
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %51, %50
  %54 = load i32, i32* %8, align 4
  %55 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %56 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @FCR_MODE, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @tmio_iowrite8(i32 %54, i64 %59)
  %61 = load %struct.tmio_nand*, %struct.tmio_nand** %7, align 8
  %62 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  br label %63

63:                                               ; preds = %53, %3
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @NAND_CMD_NONE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @tmio_iowrite8(i32 %68, i64 %72)
  br label %74

74:                                               ; preds = %67, %63
  ret void
}

declare dso_local %struct.tmio_nand* @mtd_to_tmio(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @tmio_iowrite8(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
