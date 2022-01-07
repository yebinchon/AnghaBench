; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_reg3_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/extr_xilinx_sdfec.c_xsdfec_reg3_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xsdfec_dev = type { i32 }

@XSDFEC_REG3_QC_OFF_LSB = common dso_local global i32 0, align 4
@XSDFEC_REG3_LA_OFF_LSB = common dso_local global i32 0, align 4
@XSDFEC_LDPC_CODE_REG3_ADDR_BASE = common dso_local global i64 0, align 8
@XSDFEC_LDPC_REG_JUMP = common dso_local global i32 0, align 4
@XSDFEC_LDPC_CODE_REG3_ADDR_HIGH = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Writing outside of LDPC reg3 space 0x%x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xsdfec_dev*, i32, i32, i32, i32)* @xsdfec_reg3_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xsdfec_reg3_write(%struct.xsdfec_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xsdfec_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xsdfec_dev* %0, %struct.xsdfec_dev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %10, align 4
  %14 = load i32, i32* @XSDFEC_REG3_QC_OFF_LSB, align 4
  %15 = shl i32 %13, %14
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @XSDFEC_REG3_LA_OFF_LSB, align 4
  %18 = shl i32 %16, %17
  %19 = or i32 %15, %18
  %20 = load i32, i32* %8, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %12, align 4
  %22 = load i64, i64* @XSDFEC_LDPC_CODE_REG3_ADDR_BASE, align 8
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = load i64, i64* @XSDFEC_LDPC_CODE_REG3_ADDR_HIGH, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %5
  %31 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %32 = getelementptr inbounds %struct.xsdfec_dev, %struct.xsdfec_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i64, i64* @XSDFEC_LDPC_CODE_REG3_ADDR_BASE, align 8
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %37 = mul nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %34, %38
  %40 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %6, align 4
  br label %53

43:                                               ; preds = %5
  %44 = load %struct.xsdfec_dev*, %struct.xsdfec_dev** %7, align 8
  %45 = load i64, i64* @XSDFEC_LDPC_CODE_REG3_ADDR_BASE, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @XSDFEC_LDPC_REG_JUMP, align 4
  %48 = mul nsw i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %45, %49
  %51 = load i32, i32* %12, align 4
  %52 = call i32 @xsdfec_regwrite(%struct.xsdfec_dev* %44, i64 %50, i32 %51)
  store i32 0, i32* %6, align 4
  br label %53

53:                                               ; preds = %43, %30
  %54 = load i32, i32* %6, align 4
  ret i32 %54
}

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @xsdfec_regwrite(%struct.xsdfec_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
