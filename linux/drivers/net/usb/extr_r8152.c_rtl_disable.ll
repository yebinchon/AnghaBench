; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_rtl_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_RCR = common dso_local global i32 0, align 4
@RCR_ACPT_ALL = common dso_local global i32 0, align 4
@RTL8152_MAX_TX = common dso_local global i32 0, align 4
@PLA_OOB_CTRL = common dso_local global i32 0, align 4
@FIFO_EMPTY = common dso_local global i32 0, align 4
@PLA_TCR0 = common dso_local global i32 0, align 4
@TCR0_TX_EMPTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @rtl_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_disable(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %5 = load i32, i32* @RTL8152_UNPLUG, align 4
  %6 = load %struct.r8152*, %struct.r8152** %2, align 8
  %7 = getelementptr inbounds %struct.r8152, %struct.r8152* %6, i32 0, i32 1
  %8 = call i64 @test_bit(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.r8152*, %struct.r8152** %2, align 8
  %12 = call i32 @rtl_drop_queued_tx(%struct.r8152* %11)
  br label %91

13:                                               ; preds = %1
  %14 = load %struct.r8152*, %struct.r8152** %2, align 8
  %15 = load i32, i32* @MCU_TYPE_PLA, align 4
  %16 = load i32, i32* @PLA_RCR, align 4
  %17 = call i32 @ocp_read_dword(%struct.r8152* %14, i32 %15, i32 %16)
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @RCR_ACPT_ALL, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %3, align 4
  %22 = load %struct.r8152*, %struct.r8152** %2, align 8
  %23 = load i32, i32* @MCU_TYPE_PLA, align 4
  %24 = load i32, i32* @PLA_RCR, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @ocp_write_dword(%struct.r8152* %22, i32 %23, i32 %24, i32 %25)
  %27 = load %struct.r8152*, %struct.r8152** %2, align 8
  %28 = call i32 @rtl_drop_queued_tx(%struct.r8152* %27)
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %43, %13
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @RTL8152_MAX_TX, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.r8152*, %struct.r8152** %2, align 8
  %35 = getelementptr inbounds %struct.r8152, %struct.r8152* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_kill_urb(i32 %41)
  br label %43

43:                                               ; preds = %33
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %29

46:                                               ; preds = %29
  %47 = load %struct.r8152*, %struct.r8152** %2, align 8
  %48 = call i32 @rxdy_gated_en(%struct.r8152* %47, i32 1)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %65, %46
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 1000
  br i1 %51, label %52, label %68

52:                                               ; preds = %49
  %53 = load %struct.r8152*, %struct.r8152** %2, align 8
  %54 = load i32, i32* @MCU_TYPE_PLA, align 4
  %55 = load i32, i32* @PLA_OOB_CTRL, align 4
  %56 = call i32 @ocp_read_byte(%struct.r8152* %53, i32 %54, i32 %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @FIFO_EMPTY, align 4
  %59 = and i32 %57, %58
  %60 = load i32, i32* @FIFO_EMPTY, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %68

63:                                               ; preds = %52
  %64 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %49

68:                                               ; preds = %62, %49
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %83, %68
  %70 = load i32, i32* %4, align 4
  %71 = icmp slt i32 %70, 1000
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load %struct.r8152*, %struct.r8152** %2, align 8
  %74 = load i32, i32* @MCU_TYPE_PLA, align 4
  %75 = load i32, i32* @PLA_TCR0, align 4
  %76 = call i32 @ocp_read_word(%struct.r8152* %73, i32 %74, i32 %75)
  %77 = load i32, i32* @TCR0_TX_EMPTY, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %86

81:                                               ; preds = %72
  %82 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %69

86:                                               ; preds = %80, %69
  %87 = load %struct.r8152*, %struct.r8152** %2, align 8
  %88 = call i32 @rtl_stop_rx(%struct.r8152* %87)
  %89 = load %struct.r8152*, %struct.r8152** %2, align 8
  %90 = call i32 @rtl8152_nic_reset(%struct.r8152* %89)
  br label %91

91:                                               ; preds = %86, %10
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @rtl_drop_queued_tx(%struct.r8152*) #1

declare dso_local i32 @ocp_read_dword(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_dword(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @rxdy_gated_en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_byte(%struct.r8152*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @rtl_stop_rx(%struct.r8152*) #1

declare dso_local i32 @rtl8152_nic_reset(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
