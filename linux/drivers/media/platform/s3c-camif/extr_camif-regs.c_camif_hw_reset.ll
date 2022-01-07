; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s3c-camif/extr_camif-regs.c_camif_hw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camif_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@S3C_CAMIF_REG_CISRCFMT = common dso_local global i32 0, align 4
@CISRCFMT_ITU601_8BIT = common dso_local global i32 0, align 4
@S3C_CAMIF_REG_CIGCTRL = common dso_local global i32 0, align 4
@CIGCTRL_SWRST = common dso_local global i32 0, align 4
@S3C6410_CAMIF_IP_REV = common dso_local global i64 0, align 8
@CIGCTRL_IRQ_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @camif_hw_reset(%struct.camif_dev* %0) #0 {
  %2 = alloca %struct.camif_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.camif_dev* %0, %struct.camif_dev** %2, align 8
  %4 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %5 = load i32, i32* @S3C_CAMIF_REG_CISRCFMT, align 4
  %6 = call i32 @camif_read(%struct.camif_dev* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @CISRCFMT_ITU601_8BIT, align 4
  %8 = load i32, i32* %3, align 4
  %9 = or i32 %8, %7
  store i32 %9, i32* %3, align 4
  %10 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %11 = load i32, i32* @S3C_CAMIF_REG_CISRCFMT, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @camif_write(%struct.camif_dev* %10, i32 %11, i32 %12)
  %14 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %15 = load i32, i32* @S3C_CAMIF_REG_CIGCTRL, align 4
  %16 = call i32 @camif_read(%struct.camif_dev* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* @CIGCTRL_SWRST, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  %20 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %21 = getelementptr inbounds %struct.camif_dev, %struct.camif_dev* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @S3C6410_CAMIF_IP_REV, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @CIGCTRL_IRQ_LEVEL, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %1
  %32 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %33 = load i32, i32* @S3C_CAMIF_REG_CIGCTRL, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @camif_write(%struct.camif_dev* %32, i32 %33, i32 %34)
  %36 = call i32 @udelay(i32 10)
  %37 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %38 = load i32, i32* @S3C_CAMIF_REG_CIGCTRL, align 4
  %39 = call i32 @camif_read(%struct.camif_dev* %37, i32 %38)
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* @CIGCTRL_SWRST, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load %struct.camif_dev*, %struct.camif_dev** %2, align 8
  %45 = load i32, i32* @S3C_CAMIF_REG_CIGCTRL, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @camif_write(%struct.camif_dev* %44, i32 %45, i32 %46)
  %48 = call i32 @udelay(i32 10)
  ret void
}

declare dso_local i32 @camif_read(%struct.camif_dev*, i32) #1

declare dso_local i32 @camif_write(%struct.camif_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
