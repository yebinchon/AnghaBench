; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_port = type { i64, i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@rxqaddr = common dso_local global i32* null, align 8
@RB_CTRL = common dso_local global i32 0, align 4
@RB_DIS_OP_MD = common dso_local global i32 0, align 4
@Q_RSL = common dso_local global i32 0, align 4
@Q_RL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"receiver stop failed\0A\00", align 1
@Q_CSR = common dso_local global i32 0, align 4
@BMU_RST_SET = common dso_local global i32 0, align 4
@BMU_FIFO_RST = common dso_local global i32 0, align 4
@PREF_UNIT_CTRL = common dso_local global i32 0, align 4
@PREF_UNIT_RST_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*)* @sky2_rx_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_rx_stop(%struct.sky2_port* %0) #0 {
  %2 = alloca %struct.sky2_port*, align 8
  %3 = alloca %struct.sky2_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %2, align 8
  %6 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %7 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %6, i32 0, i32 2
  %8 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  store %struct.sky2_hw* %8, %struct.sky2_hw** %3, align 8
  %9 = load i32*, i32** @rxqaddr, align 8
  %10 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %11 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds i32, i32* %9, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  %15 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RB_CTRL, align 4
  %18 = call i32 @RB_ADDR(i32 %16, i32 %17)
  %19 = load i32, i32* @RB_DIS_OP_MD, align 4
  %20 = call i32 @sky2_write8(%struct.sky2_hw* %15, i32 %18, i32 %19)
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %38, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp slt i32 %22, 65535
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @Q_RSL, align 4
  %28 = call i32 @RB_ADDR(i32 %26, i32 %27)
  %29 = call i64 @sky2_read8(%struct.sky2_hw* %25, i32 %28)
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @Q_RL, align 4
  %33 = call i32 @RB_ADDR(i32 %31, i32 %32)
  %34 = call i64 @sky2_read8(%struct.sky2_hw* %30, i32 %33)
  %35 = icmp eq i64 %29, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  br label %46

37:                                               ; preds = %24
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.sky2_port*, %struct.sky2_port** %2, align 8
  %43 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @netdev_warn(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %36
  %47 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @Q_CSR, align 4
  %50 = call i32 @Q_ADDR(i32 %48, i32 %49)
  %51 = load i32, i32* @BMU_RST_SET, align 4
  %52 = load i32, i32* @BMU_FIFO_RST, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @sky2_write32(%struct.sky2_hw* %47, i32 %50, i32 %53)
  %55 = load %struct.sky2_hw*, %struct.sky2_hw** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = load i32, i32* @PREF_UNIT_CTRL, align 4
  %58 = call i32 @Y2_QADDR(i32 %56, i32 %57)
  %59 = load i32, i32* @PREF_UNIT_RST_SET, align 4
  %60 = call i32 @sky2_write32(%struct.sky2_hw* %55, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @sky2_write8(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @RB_ADDR(i32, i32) #1

declare dso_local i64 @sky2_read8(%struct.sky2_hw*, i32) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @sky2_write32(%struct.sky2_hw*, i32, i32) #1

declare dso_local i32 @Q_ADDR(i32, i32) #1

declare dso_local i32 @Y2_QADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
