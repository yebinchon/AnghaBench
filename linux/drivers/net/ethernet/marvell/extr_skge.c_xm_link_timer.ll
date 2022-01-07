; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_xm_link_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_xm_link_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_port = type { i32, i32, %struct.skge_hw*, %struct.net_device* }
%struct.skge_hw = type { i32 }
%struct.net_device = type { i32 }
%struct.timer_list = type { i32 }

@link_timer = common dso_local global i32 0, align 4
@XM_GP_PORT = common dso_local global i32 0, align 4
@XM_GP_INP_ASS = common dso_local global i32 0, align 4
@XM_IMSK = common dso_local global i32 0, align 4
@XM_IS_INP_ASS = common dso_local global i32 0, align 4
@XM_ISRC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@LINK_HZ = common dso_local global i64 0, align 8
@skge = common dso_local global %struct.skge_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @xm_link_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xm_link_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.skge_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %10 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %11 = ptrtoint %struct.skge_port* %10 to i32
  %12 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %13 = load i32, i32* @link_timer, align 4
  %14 = call %struct.skge_port* @from_timer(i32 %11, %struct.timer_list* %12, i32 %13)
  store %struct.skge_port* %14, %struct.skge_port** %3, align 8
  %15 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %16 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %15, i32 0, i32 3
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %4, align 8
  %18 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %19 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %18, i32 0, i32 2
  %20 = load %struct.skge_hw*, %struct.skge_hw** %19, align 8
  store %struct.skge_hw* %20, %struct.skge_hw** %5, align 8
  %21 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %22 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %6, align 4
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call i32 @netif_running(%struct.net_device* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %85

28:                                               ; preds = %1
  %29 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %30 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_lock_irqsave(i32* %30, i64 %31)
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %46, %28
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 3
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @XM_GP_PORT, align 4
  %40 = call i32 @xm_read16(%struct.skge_hw* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @XM_GP_INP_ASS, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %72

45:                                               ; preds = %36
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %33

49:                                               ; preds = %33
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i64 @xm_check_link(%struct.net_device* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @XM_IMSK, align 4
  %57 = call i32 @xm_read16(%struct.skge_hw* %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @XM_IS_INP_ASS, align 4
  %59 = xor i32 %58, -1
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* %9, align 4
  %62 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @XM_IMSK, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @xm_write16(%struct.skge_hw* %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @XM_ISRC, align 4
  %70 = call i32 @xm_read16(%struct.skge_hw* %67, i32 %68, i32 %69)
  br label %80

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %71, %44
  %73 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %74 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %73, i32 0, i32 1
  %75 = load i64, i64* @jiffies, align 8
  %76 = load i64, i64* @LINK_HZ, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @round_jiffies(i64 %77)
  %79 = call i32 @mod_timer(i32* %74, i32 %78)
  br label %80

80:                                               ; preds = %72, %53
  %81 = load %struct.skge_hw*, %struct.skge_hw** %5, align 8
  %82 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %81, i32 0, i32 0
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  br label %85

85:                                               ; preds = %80, %27
  ret void
}

declare dso_local %struct.skge_port* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @xm_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i64 @xm_check_link(%struct.net_device*) #1

declare dso_local i32 @xm_write16(%struct.skge_hw*, i32, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
