; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_setup_memory_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_nxp-spifi.c_nxp_spifi_setup_memory_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_spifi = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@SPIFI_CMD_FIELDFORM_ALL_SERIAL = common dso_local global i32 0, align 4
@SPIFI_CMD_FIELDFORM_QUAD_DUAL_DATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"unsupported SPI read mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxp_spifi*)* @nxp_spifi_setup_memory_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_spifi_setup_memory_cmd(%struct.nxp_spifi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nxp_spifi*, align 8
  store %struct.nxp_spifi* %0, %struct.nxp_spifi** %3, align 8
  %4 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %5 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %16 [
    i32 130, label %8
    i32 129, label %12
    i32 128, label %12
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @SPIFI_CMD_FIELDFORM_ALL_SERIAL, align 4
  %10 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %11 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  br label %23

12:                                               ; preds = %1, %1
  %13 = load i32, i32* @SPIFI_CMD_FIELDFORM_QUAD_DUAL_DATA, align 4
  %14 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %15 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %18 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %12, %8
  %24 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %25 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %31 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp sgt i32 %33, 4
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %23
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %62

38:                                               ; preds = %29
  %39 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %40 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SPIFI_CMD_OPCODE(i32 %42)
  %44 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %45 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = sdiv i32 %47, 8
  %49 = call i32 @SPIFI_CMD_INTLEN(i32 %48)
  %50 = or i32 %43, %49
  %51 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %52 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i32 @SPIFI_CMD_FRAMEFORM(i32 %55)
  %57 = or i32 %50, %56
  %58 = load %struct.nxp_spifi*, %struct.nxp_spifi** %3, align 8
  %59 = getelementptr inbounds %struct.nxp_spifi, %struct.nxp_spifi* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %38, %35, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @SPIFI_CMD_OPCODE(i32) #1

declare dso_local i32 @SPIFI_CMD_INTLEN(i32) #1

declare dso_local i32 @SPIFI_CMD_FRAMEFORM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
