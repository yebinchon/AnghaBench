; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_isr_task.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_isr_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_6__*, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_4__ = type { %struct.xgbe_i2c_op_state }
%struct.xgbe_i2c_op_state = type { i32, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@IC_RAW_INTR_STAT = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"I2C interrupt received: status=%#010x\0A\00", align 1
@XGBE_INTR_TX_ABRT = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"I2C TX_ABRT received (%#010x) for target %#04x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STOP_DET = common dso_local global i32 0, align 4
@XP_INT_REISSUE_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @xgbe_i2c_isr_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_i2c_isr_task(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_i2c_op_state*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.xgbe_prv_data*
  store %struct.xgbe_prv_data* %7, %struct.xgbe_prv_data** %3, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store %struct.xgbe_i2c_op_state* %10, %struct.xgbe_i2c_op_state** %4, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = load i32, i32* @IC_RAW_INTR_STAT, align 4
  %13 = call i32 @XI2C_IOREAD(%struct.xgbe_prv_data* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %74

17:                                               ; preds = %1
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %19 = load i32, i32* @intr, align 4
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %18, i32 %19, i32 %22, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @xgbe_i2c_clear_isr_interrupts(%struct.xgbe_prv_data* %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @XGBE_INTR_TX_ABRT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %17
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %34 = load i32, i32* @link, align 4
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %4, align 8
  %39 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %4, align 8
  %42 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) @netif_dbg(%struct.xgbe_prv_data* %33, i32 %34, i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %45)
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %48 = call i32 @xgbe_i2c_disable_interrupts(%struct.xgbe_prv_data* %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  %51 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %4, align 8
  %52 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %58

53:                                               ; preds = %17
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %55 = call i32 @xgbe_i2c_read(%struct.xgbe_prv_data* %54)
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %57 = call i32 @xgbe_i2c_write(%struct.xgbe_prv_data* %56)
  br label %58

58:                                               ; preds = %53, %32
  %59 = load %struct.xgbe_i2c_op_state*, %struct.xgbe_i2c_op_state** %4, align 8
  %60 = getelementptr inbounds %struct.xgbe_i2c_op_state, %struct.xgbe_i2c_op_state* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %58
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IC_RAW_INTR_STAT, align 4
  %66 = load i32, i32* @STOP_DET, align 4
  %67 = call i64 @XI2C_GET_BITS(i32 %64, i32 %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63, %58
  %70 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %71 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %70, i32 0, i32 1
  %72 = call i32 @complete(i32* %71)
  br label %73

73:                                               ; preds = %69, %63
  br label %74

74:                                               ; preds = %73, %16
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %76 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %74
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %83 = load i32, i32* @XP_INT_REISSUE_EN, align 4
  %84 = call i32 @XP_IOWRITE(%struct.xgbe_prv_data* %82, i32 %83, i32 4)
  br label %85

85:                                               ; preds = %81, %74
  ret void
}

declare dso_local i32 @XI2C_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32, ...) #1

declare dso_local i32 @xgbe_i2c_clear_isr_interrupts(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_i2c_disable_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_i2c_read(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_i2c_write(%struct.xgbe_prv_data*) #1

declare dso_local i64 @XI2C_GET_BITS(i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @XP_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
