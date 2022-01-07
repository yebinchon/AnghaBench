; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_w25q_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_w25q_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SPINOR_OP_RDCR = common dso_local global i32 0, align 4
@W25Q_STATUS_QE = common dso_local global i32 0, align 4
@SPINOR_OP_RDSR = common dso_local global i32 0, align 4
@SPINOR_OP_WRSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*)* @stfsm_w25q_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_w25q_config(%struct.stfsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %11 = call i32 @stfsm_prepare_rwe_seqs_default(%struct.stfsm* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %9, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %2, align 4
  br label %66

16:                                               ; preds = %1
  %17 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %18 = load i32, i32* @SPINOR_OP_RDCR, align 4
  %19 = call i32 @stfsm_read_status(%struct.stfsm* %17, i32 %18, i32* %6, i32 1)
  %20 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %21 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = ashr i32 %23, 16
  %25 = and i32 %24, 3
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp eq i32 %27, 4
  br i1 %28, label %29, label %39

29:                                               ; preds = %16
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @W25Q_STATUS_QE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @W25Q_STATUS_QE, align 4
  %36 = load i32, i32* %6, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %38

38:                                               ; preds = %34, %29
  br label %50

39:                                               ; preds = %16
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @W25Q_STATUS_QE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load i32, i32* @W25Q_STATUS_QE, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %49

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %50
  %54 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %55 = load i32, i32* @SPINOR_OP_RDSR, align 4
  %56 = call i32 @stfsm_read_status(%struct.stfsm* %54, i32 %55, i32* %5, i32 1)
  %57 = load i32, i32* %6, align 4
  %58 = shl i32 %57, 8
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %62 = load i32, i32* @SPINOR_OP_WRSR, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @stfsm_write_status(%struct.stfsm* %61, i32 %62, i32 %63, i32 2, i32 1)
  br label %65

65:                                               ; preds = %53, %50
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %14
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @stfsm_prepare_rwe_seqs_default(%struct.stfsm*) #1

declare dso_local i32 @stfsm_read_status(%struct.stfsm*, i32, i32*, i32) #1

declare dso_local i32 @stfsm_write_status(%struct.stfsm*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
