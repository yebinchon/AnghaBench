; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_set_tx_carrier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_set_tx_carrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.nvt_dev* }
%struct.nvt_dev = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CIR_CP = common dso_local global i32 0, align 4
@CIR_CC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cp: 0x%x cc: 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, i64)* @nvt_set_tx_carrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_set_tx_carrier(%struct.rc_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.nvt_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %8, i32 0, i32 0
  %10 = load %struct.nvt_dev*, %struct.nvt_dev** %9, align 8
  store %struct.nvt_dev* %10, %struct.nvt_dev** %6, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %18 = load i32, i32* @CIR_CP, align 4
  %19 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %17, i32 1, i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = sdiv i64 3000000, %20
  %22 = sub nsw i64 %21, 1
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %7, align 4
  %24 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, 255
  %27 = load i32, i32* @CIR_CC, align 4
  %28 = call i32 @nvt_cir_reg_write(%struct.nvt_dev* %24, i32 %26, i32 %27)
  %29 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %30 = load i32, i32* @CIR_CP, align 4
  %31 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %29, i32 %30)
  %32 = load %struct.nvt_dev*, %struct.nvt_dev** %6, align 8
  %33 = load i32, i32* @CIR_CC, align 4
  %34 = call i32 @nvt_cir_reg_read(%struct.nvt_dev* %32, i32 %33)
  %35 = call i32 @nvt_dbg(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %16, %13
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @nvt_cir_reg_write(%struct.nvt_dev*, i32, i32) #1

declare dso_local i32 @nvt_dbg(i8*, i32, i32) #1

declare dso_local i32 @nvt_cir_reg_read(%struct.nvt_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
