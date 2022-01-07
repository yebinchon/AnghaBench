; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp21_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp21_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@MVPP2_GMAC_CTRL_1_REG = common dso_local global i64 0, align 8
@MVPP2_SRC_ADDR_MIDDLE = common dso_local global i64 0, align 8
@MVPP2_SRC_ADDR_HIGH = common dso_local global i64 0, align 8
@MVPP2_GMAC_SA_LOW_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*, i8*)* @mvpp21_get_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp21_get_mac_address(%struct.mvpp2_port* %0, i8* %1) #0 {
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @MVPP2_GMAC_CTRL_1_REG, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MVPP2_SRC_ADDR_MIDDLE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %6, align 4
  %22 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %23 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @MVPP2_SRC_ADDR_HIGH, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @readl(i64 %28)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 24
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = load i8*, i8** %4, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  store i8 %33, i8* %35, align 1
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 16
  %38 = and i32 %37, 255
  %39 = trunc i32 %38 to i8
  %40 = load i8*, i8** %4, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 1
  store i8 %39, i8* %41, align 1
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = trunc i32 %44 to i8
  %46 = load i8*, i8** %4, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 2
  store i8 %45, i8* %47, align 1
  %48 = load i32, i32* %7, align 4
  %49 = and i32 %48, 255
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %4, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 3
  store i8 %50, i8* %52, align 1
  %53 = load i32, i32* %6, align 4
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  store i8 %55, i8* %57, align 1
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @MVPP2_GMAC_SA_LOW_OFFS, align 4
  %60 = ashr i32 %58, %59
  %61 = and i32 %60, 255
  %62 = trunc i32 %61 to i8
  %63 = load i8*, i8** %4, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 5
  store i8 %62, i8* %64, align 1
  ret void
}

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
