; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_ramset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_ramset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32 }

@RB_CTRL = common dso_local global i32 0, align 4
@RB_RST_CLR = common dso_local global i32 0, align 4
@RB_START = common dso_local global i32 0, align 4
@RB_WP = common dso_local global i32 0, align 4
@RB_RP = common dso_local global i32 0, align 4
@RB_END = common dso_local global i32 0, align 4
@Q_R1 = common dso_local global i64 0, align 8
@Q_R2 = common dso_local global i64 0, align 8
@RB_RX_UTPP = common dso_local global i32 0, align 4
@RB_RX_LTPP = common dso_local global i32 0, align 4
@RB_ENA_STFWD = common dso_local global i32 0, align 4
@RB_ENA_OP_MD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i64, i32, i64)* @skge_ramset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_ramset(%struct.skge_hw* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32, i32* %7, align 4
  %11 = sdiv i32 %10, 8
  store i32 %11, i32* %7, align 4
  %12 = load i64, i64* %8, align 8
  %13 = udiv i64 %12, 8
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %15, %16
  %18 = sub i64 %17, 1
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i32, i32* @RB_CTRL, align 4
  %23 = call i32 @RB_ADDR(i64 %21, i32 %22)
  %24 = load i32, i32* @RB_RST_CLR, align 4
  %25 = call i32 @skge_write8(%struct.skge_hw* %20, i32 %23, i32 %24)
  %26 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* @RB_START, align 4
  %29 = call i32 @RB_ADDR(i64 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @skge_write32(%struct.skge_hw* %26, i32 %29, i32 %30)
  %32 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @RB_WP, align 4
  %35 = call i32 @RB_ADDR(i64 %33, i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @skge_write32(%struct.skge_hw* %32, i32 %35, i32 %36)
  %38 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %39 = load i64, i64* %6, align 8
  %40 = load i32, i32* @RB_RP, align 4
  %41 = call i32 @RB_ADDR(i64 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @skge_write32(%struct.skge_hw* %38, i32 %41, i32 %42)
  %44 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @RB_END, align 4
  %47 = call i32 @RB_ADDR(i64 %45, i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @skge_write32(%struct.skge_hw* %44, i32 %47, i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @Q_R1, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %4
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @Q_R2, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %81

57:                                               ; preds = %53, %4
  %58 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i32, i32* @RB_RX_UTPP, align 4
  %61 = call i32 @RB_ADDR(i64 %59, i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = load i64, i64* %8, align 8
  %65 = mul i64 2, %64
  %66 = udiv i64 %65, 3
  %67 = add i64 %63, %66
  %68 = trunc i64 %67 to i32
  %69 = call i32 @skge_write32(%struct.skge_hw* %58, i32 %61, i32 %68)
  %70 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* @RB_RX_LTPP, align 4
  %73 = call i32 @RB_ADDR(i64 %71, i32 %72)
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %8, align 8
  %77 = udiv i64 %76, 3
  %78 = add i64 %75, %77
  %79 = trunc i64 %78 to i32
  %80 = call i32 @skge_write32(%struct.skge_hw* %70, i32 %73, i32 %79)
  br label %88

81:                                               ; preds = %53
  %82 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i32, i32* @RB_CTRL, align 4
  %85 = call i32 @RB_ADDR(i64 %83, i32 %84)
  %86 = load i32, i32* @RB_ENA_STFWD, align 4
  %87 = call i32 @skge_write8(%struct.skge_hw* %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %81, %57
  %89 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i32, i32* @RB_CTRL, align 4
  %92 = call i32 @RB_ADDR(i64 %90, i32 %91)
  %93 = load i32, i32* @RB_ENA_OP_MD, align 4
  %94 = call i32 @skge_write8(%struct.skge_hw* %89, i32 %92, i32 %93)
  ret void
}

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @RB_ADDR(i64, i32) #1

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
