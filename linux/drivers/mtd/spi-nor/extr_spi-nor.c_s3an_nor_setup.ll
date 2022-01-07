; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_s3an_nor_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_spi-nor.c_s3an_nor_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_nor = type { i32*, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.spi_nor_hwcaps = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"error %d reading XRDSR\0A\00", align 1
@SPINOR_OP_XSE = common dso_local global i32 0, align 4
@SPINOR_OP_XPP = common dso_local global i32 0, align 4
@SPINOR_OP_READ = common dso_local global i32 0, align 4
@SNOR_F_NO_OP_CHIP_ERASE = common dso_local global i32 0, align 4
@XSR_PAGESIZE = common dso_local global i32 0, align 4
@s3an_convert_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_nor*, %struct.spi_nor_hwcaps*)* @s3an_nor_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3an_nor_setup(%struct.spi_nor* %0, %struct.spi_nor_hwcaps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_nor*, align 8
  %5 = alloca %struct.spi_nor_hwcaps*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_nor* %0, %struct.spi_nor** %4, align 8
  store %struct.spi_nor_hwcaps* %1, %struct.spi_nor_hwcaps** %5, align 8
  %7 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %8 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %9 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = call i32 @spi_nor_xread_sr(%struct.spi_nor* %7, i32* %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %16 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %15, i32 0, i32 9
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %93

21:                                               ; preds = %2
  %22 = load i32, i32* @SPINOR_OP_XSE, align 4
  %23 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %24 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %23, i32 0, i32 8
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @SPINOR_OP_XPP, align 4
  %26 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %27 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @SPINOR_OP_READ, align 4
  %29 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %30 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* @SNOR_F_NO_OP_CHIP_ERASE, align 4
  %32 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %33 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %37 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @XSR_PAGESIZE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %21
  %45 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %46 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 264
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 256, i32 512
  %51 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %52 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %54 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %57 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %60 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = mul nsw i32 8, %61
  %63 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %64 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %63, i32 0, i32 2
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 %62, %67
  %69 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %70 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 1
  store i32 %68, i32* %71, align 4
  %72 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %73 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = mul nsw i32 8, %74
  %76 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %77 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %76, i32 0, i32 3
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i32 %75, i32* %78, align 8
  br label %92

79:                                               ; preds = %21
  %80 = load i32, i32* @s3an_convert_addr, align 4
  %81 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %82 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 %80, i32* %83, align 4
  %84 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %85 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %84, i32 0, i32 2
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.spi_nor*, %struct.spi_nor** %4, align 8
  %90 = getelementptr inbounds %struct.spi_nor, %struct.spi_nor* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 2
  store i32 %88, i32* %91, align 8
  br label %92

92:                                               ; preds = %79, %44
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %14
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @spi_nor_xread_sr(%struct.spi_nor*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
