; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_channel_routing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_set_channel_routing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32 }

@VNMC_REG = common dso_local global i32 0, align 4
@VNMC_VUP = common dso_local global i32 0, align 4
@VNCSI_IFMD_DES1 = common dso_local global i32 0, align 4
@VNCSI_IFMD_DES0 = common dso_local global i32 0, align 4
@VNCSI_IFMD_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Set IFMD 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvin_set_channel_routing(%struct.rvin_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @pm_runtime_get_sync(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %49

17:                                               ; preds = %2
  %18 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %19 = load i32, i32* @VNMC_REG, align 4
  %20 = call i32 @rvin_read(%struct.rvin_dev* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @VNMC_VUP, align 4
  %24 = xor i32 %23, -1
  %25 = and i32 %22, %24
  %26 = load i32, i32* @VNMC_REG, align 4
  %27 = call i32 @rvin_write(%struct.rvin_dev* %21, i32 %25, i32 %26)
  %28 = load i32, i32* @VNCSI_IFMD_DES1, align 4
  %29 = load i32, i32* @VNCSI_IFMD_DES0, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VNCSI_IFMD_CSI_CHSEL(i32 %31)
  %33 = or i32 %30, %32
  store i32 %33, i32* %6, align 4
  %34 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @VNCSI_IFMD_REG, align 4
  %37 = call i32 @rvin_write(%struct.rvin_dev* %34, i32 %35, i32 %36)
  %38 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @vin_dbg(%struct.rvin_dev* %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @VNMC_REG, align 4
  %44 = call i32 @rvin_write(%struct.rvin_dev* %41, i32 %42, i32 %43)
  %45 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %46 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pm_runtime_put(i32 %47)
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %17, %15
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @rvin_read(%struct.rvin_dev*, i32) #1

declare dso_local i32 @rvin_write(%struct.rvin_dev*, i32, i32) #1

declare dso_local i32 @VNCSI_IFMD_CSI_CHSEL(i32) #1

declare dso_local i32 @vin_dbg(%struct.rvin_dev*, i8*, i32) #1

declare dso_local i32 @pm_runtime_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
