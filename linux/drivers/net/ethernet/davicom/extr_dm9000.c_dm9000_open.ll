; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.board_info = type { i32, i32, i64, i32 }

@.str = private unnamed_addr constant [13 x i8] c"enabling %s\0A\00", align 1
@IRQF_TRIGGER_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"WARNING: no IRQ resource flags set.\0A\00", align 1
@IRQF_SHARED = common dso_local global i32 0, align 4
@DM9000_GPR = common dso_local global i32 0, align 4
@dm9000_interrupt = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dm9000_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm9000_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.board_info*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.board_info* @netdev_priv(%struct.net_device* %6)
  store %struct.board_info* %7, %struct.board_info** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @irq_get_trigger_type(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.board_info*, %struct.board_info** %4, align 8
  %13 = call i64 @netif_msg_ifup(%struct.board_info* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %1
  %16 = load %struct.board_info*, %struct.board_info** %4, align 8
  %17 = getelementptr inbounds %struct.board_info, %struct.board_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @dev_dbg(i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %15, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @IRQF_TRIGGER_NONE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load %struct.board_info*, %struct.board_info** %4, align 8
  %29 = getelementptr inbounds %struct.board_info, %struct.board_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dev_warn(i32 %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %27, %23
  %33 = load i32, i32* @IRQF_SHARED, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load %struct.board_info*, %struct.board_info** %4, align 8
  %37 = load i32, i32* @DM9000_GPR, align 4
  %38 = call i32 @iow(%struct.board_info* %36, i32 %37, i32 0)
  %39 = call i32 @mdelay(i32 1)
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i32 @dm9000_init_dm9000(%struct.net_device* %40)
  %42 = load %struct.net_device*, %struct.net_device** %3, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @dm9000_interrupt, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.net_device*, %struct.net_device** %3, align 8
  %51 = call i64 @request_irq(i32 %44, i32 %45, i32 %46, i32 %49, %struct.net_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %32
  %54 = load i32, i32* @EAGAIN, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %71

56:                                               ; preds = %32
  %57 = load %struct.board_info*, %struct.board_info** %4, align 8
  %58 = call i32 @dm9000_unmask_interrupts(%struct.board_info* %57)
  %59 = load %struct.board_info*, %struct.board_info** %4, align 8
  %60 = getelementptr inbounds %struct.board_info, %struct.board_info* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load %struct.board_info*, %struct.board_info** %4, align 8
  %62 = getelementptr inbounds %struct.board_info, %struct.board_info* %61, i32 0, i32 1
  %63 = load %struct.board_info*, %struct.board_info** %4, align 8
  %64 = call i32 @netif_msg_link(%struct.board_info* %63)
  %65 = call i32 @mii_check_media(i32* %62, i32 %64, i32 1)
  %66 = load %struct.net_device*, %struct.net_device** %3, align 8
  %67 = call i32 @netif_start_queue(%struct.net_device* %66)
  %68 = load %struct.board_info*, %struct.board_info** %4, align 8
  %69 = getelementptr inbounds %struct.board_info, %struct.board_info* %68, i32 0, i32 0
  %70 = call i32 @schedule_delayed_work(i32* %69, i32 1)
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %56, %53
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @irq_get_trigger_type(i32) #1

declare dso_local i64 @netif_msg_ifup(%struct.board_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @iow(%struct.board_info*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @dm9000_init_dm9000(%struct.net_device*) #1

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dm9000_unmask_interrupts(%struct.board_info*) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @netif_msg_link(%struct.board_info*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
