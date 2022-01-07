; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_stk1135.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sd = type { i64 }

@STK1135_REG_GCTRL = common dso_local global i64 0, align 8
@STK1135_REG_CISPO = common dso_local global i64 0, align 8
@STK1135_REG_CIEPO = common dso_local global i64 0, align 8
@STK1135_REG_SCTRL = common dso_local global i64 0, align 8
@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"camera started alt: 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = load i64, i64* @STK1135_REG_GCTRL, align 8
  %10 = call i32 @reg_w(%struct.gspca_dev* %8, i64 %9, i32 32)
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = call i32 @stk1135_configure_clock(%struct.gspca_dev* %11)
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = load i64, i64* @STK1135_REG_CISPO, align 8
  %15 = add nsw i64 %14, 0
  %16 = call i32 @reg_w(%struct.gspca_dev* %13, i64 %15, i32 0)
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %18 = load i64, i64* @STK1135_REG_CISPO, align 8
  %19 = add nsw i64 %18, 1
  %20 = call i32 @reg_w(%struct.gspca_dev* %17, i64 %19, i32 0)
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %22 = load i64, i64* @STK1135_REG_CISPO, align 8
  %23 = add nsw i64 %22, 2
  %24 = call i32 @reg_w(%struct.gspca_dev* %21, i64 %23, i32 0)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = load i64, i64* @STK1135_REG_CISPO, align 8
  %27 = add nsw i64 %26, 3
  %28 = call i32 @reg_w(%struct.gspca_dev* %25, i64 %27, i32 0)
  %29 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %30 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %38 = load i64, i64* @STK1135_REG_CIEPO, align 8
  %39 = add nsw i64 %38, 0
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 255
  %42 = call i32 @reg_w(%struct.gspca_dev* %37, i64 %39, i32 %41)
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = load i64, i64* @STK1135_REG_CIEPO, align 8
  %45 = add nsw i64 %44, 1
  %46 = load i32, i32* %4, align 4
  %47 = ashr i32 %46, 8
  %48 = call i32 @reg_w(%struct.gspca_dev* %43, i64 %45, i32 %47)
  %49 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %50 = load i64, i64* @STK1135_REG_CIEPO, align 8
  %51 = add nsw i64 %50, 2
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 255
  %54 = call i32 @reg_w(%struct.gspca_dev* %49, i64 %51, i32 %53)
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i64, i64* @STK1135_REG_CIEPO, align 8
  %57 = add nsw i64 %56, 3
  %58 = load i32, i32* %5, align 4
  %59 = ashr i32 %58, 8
  %60 = call i32 @reg_w(%struct.gspca_dev* %55, i64 %57, i32 %59)
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %62 = load i64, i64* @STK1135_REG_SCTRL, align 8
  %63 = call i32 @reg_w(%struct.gspca_dev* %61, i64 %62, i32 32)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %65 = call i32 @stk1135_configure_mt9m112(%struct.gspca_dev* %64)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = load i64, i64* @STK1135_REG_SCTRL, align 8
  %68 = call i32 @reg_w_mask(%struct.gspca_dev* %66, i64 %67, i32 128, i32 128)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp sge i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %1
  %74 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %75 = load i32, i32* @D_STREAM, align 4
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %77 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @gspca_dbg(%struct.gspca_dev* %74, i32 %75, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %73, %1
  %81 = load %struct.sd*, %struct.sd** %3, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 0
  store i64 0, i64* %82, align 8
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %84 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  ret i32 %86
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i64, i32) #1

declare dso_local i32 @stk1135_configure_clock(%struct.gspca_dev*) #1

declare dso_local i32 @stk1135_configure_mt9m112(%struct.gspca_dev*) #1

declare dso_local i32 @reg_w_mask(%struct.gspca_dev*, i64, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
