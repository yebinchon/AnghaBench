; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_reset_hw_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pf.c_fm10k_reset_hw_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@FM10K_EIMR = common dso_local global i32 0, align 4
@ALL = common dso_local global i32 0, align 4
@FM10K_INT_CTRL = common dso_local global i32 0, align 4
@FM10K_TQMAP_TABLE_SIZE = common dso_local global i64 0, align 8
@FM10K_MAX_QUEUES = common dso_local global i32 0, align 4
@FM10K_ERR_REQUESTS_PENDING = common dso_local global i64 0, align 8
@FM10K_DMA_CTRL = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL_TX_ACTIVE = common dso_local global i32 0, align 4
@FM10K_DMA_CTRL_RX_ACTIVE = common dso_local global i32 0, align 4
@FM10K_ERR_DMA_PENDING = common dso_local global i64 0, align 8
@FM10K_DMA_CTRL_DATAPATH_RESET = common dso_local global i32 0, align 4
@FM10K_RESET_TIMEOUT = common dso_local global i32 0, align 4
@FM10K_IP = common dso_local global i32 0, align 4
@FM10K_IP_NOTINRESET = common dso_local global i32 0, align 4
@FM10K_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.fm10k_hw*)* @fm10k_reset_hw_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fm10k_reset_hw_pf(%struct.fm10k_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.fm10k_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.fm10k_hw* %0, %struct.fm10k_hw** %3, align 8
  %7 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %8 = load i32, i32* @FM10K_EIMR, align 4
  %9 = load i32, i32* @ALL, align 4
  %10 = call i32 @FM10K_EIMR_DISABLE(i32 %9)
  %11 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %7, i32 %8, i32 %10)
  %12 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %13 = call i32 @FM10K_ITR2(i32 0)
  %14 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %12, i32 %13, i32 0)
  %15 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %16 = load i32, i32* @FM10K_INT_CTRL, align 4
  %17 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %15, i32 %16, i32 0)
  store i64 0, i64* %6, align 8
  br label %18

18:                                               ; preds = %31, %1
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @FM10K_TQMAP_TABLE_SIZE, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @FM10K_TQMAP(i64 %24)
  %26 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %23, i32 %25, i32 0)
  %27 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @FM10K_RQMAP(i64 %28)
  %30 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %27, i32 %29, i32 0)
  br label %31

31:                                               ; preds = %22
  %32 = load i64, i64* %6, align 8
  %33 = add nsw i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %36 = load i32, i32* @FM10K_MAX_QUEUES, align 4
  %37 = call i64 @fm10k_disable_queues_generic(%struct.fm10k_hw* %35, i32 %36)
  store i64 %37, i64* %4, align 8
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* @FM10K_ERR_REQUESTS_PENDING, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %43 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %66

47:                                               ; preds = %34
  %48 = load i64, i64* %4, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i64, i64* %4, align 8
  store i64 %51, i64* %2, align 8
  br label %86

52:                                               ; preds = %47
  br label %53

53:                                               ; preds = %52
  %54 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %55 = load i32, i32* @FM10K_DMA_CTRL, align 4
  %56 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @FM10K_DMA_CTRL_TX_ACTIVE, align 4
  %59 = load i32, i32* @FM10K_DMA_CTRL_RX_ACTIVE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i64, i64* @FM10K_ERR_DMA_PENDING, align 8
  store i64 %64, i64* %2, align 8
  br label %86

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65, %41
  %67 = load i32, i32* @FM10K_DMA_CTRL_DATAPATH_RESET, align 4
  store i32 %67, i32* %5, align 4
  %68 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %69 = load i32, i32* @FM10K_DMA_CTRL, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @fm10k_write_reg(%struct.fm10k_hw* %68, i32 %69, i32 %70)
  %72 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %73 = call i32 @fm10k_write_flush(%struct.fm10k_hw* %72)
  %74 = load i32, i32* @FM10K_RESET_TIMEOUT, align 4
  %75 = call i32 @udelay(i32 %74)
  %76 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %77 = load i32, i32* @FM10K_IP, align 4
  %78 = call i32 @fm10k_read_reg(%struct.fm10k_hw* %76, i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @FM10K_IP_NOTINRESET, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %85, label %83

83:                                               ; preds = %66
  %84 = load i64, i64* @FM10K_ERR_RESET_FAILED, align 8
  store i64 %84, i64* %2, align 8
  br label %86

85:                                               ; preds = %66
  store i64 0, i64* %2, align 8
  br label %86

86:                                               ; preds = %85, %83, %63, %50
  %87 = load i64, i64* %2, align 8
  ret i64 %87
}

declare dso_local i32 @fm10k_write_reg(%struct.fm10k_hw*, i32, i32) #1

declare dso_local i32 @FM10K_EIMR_DISABLE(i32) #1

declare dso_local i32 @FM10K_ITR2(i32) #1

declare dso_local i32 @FM10K_TQMAP(i64) #1

declare dso_local i32 @FM10K_RQMAP(i64) #1

declare dso_local i64 @fm10k_disable_queues_generic(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @fm10k_read_reg(%struct.fm10k_hw*, i32) #1

declare dso_local i32 @fm10k_write_flush(%struct.fm10k_hw*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
