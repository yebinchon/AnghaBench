; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/davicom/extr_dm9000.c_dm9000_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.board_info = type { i32, i32, i32, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@WCR_MAGICEN = common dso_local global i32 0, align 4
@DM9000_WCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_wolinfo*)* @dm9000_set_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm9000_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.board_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.board_info* @to_dm9000_board(%struct.net_device* %10)
  store %struct.board_info* %11, %struct.board_info** %6, align 8
  %12 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %13 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %15 = load %struct.board_info*, %struct.board_info** %6, align 8
  %16 = getelementptr inbounds %struct.board_info, %struct.board_info* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %93

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @WAKE_MAGIC, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %93

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @WAKE_MAGIC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @WCR_MAGICEN, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.board_info*, %struct.board_info** %6, align 8
  %42 = getelementptr inbounds %struct.board_info, %struct.board_info* %41, i32 0, i32 2
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.board_info*, %struct.board_info** %6, align 8
  %45 = getelementptr inbounds %struct.board_info, %struct.board_info* %44, i32 0, i32 3
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @spin_lock_irqsave(i32* %45, i64 %46)
  %48 = load %struct.board_info*, %struct.board_info** %6, align 8
  %49 = load i32, i32* @DM9000_WCR, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @iow(%struct.board_info* %48, i32 %49, i32 %50)
  %52 = load %struct.board_info*, %struct.board_info** %6, align 8
  %53 = getelementptr inbounds %struct.board_info, %struct.board_info* %52, i32 0, i32 3
  %54 = load i64, i64* %7, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.board_info*, %struct.board_info** %6, align 8
  %57 = getelementptr inbounds %struct.board_info, %struct.board_info* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load %struct.board_info*, %struct.board_info** %6, align 8
  %60 = getelementptr inbounds %struct.board_info, %struct.board_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %40
  %65 = load %struct.board_info*, %struct.board_info** %6, align 8
  %66 = getelementptr inbounds %struct.board_info, %struct.board_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load %struct.board_info*, %struct.board_info** %6, align 8
  %71 = getelementptr inbounds %struct.board_info, %struct.board_info* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @irq_set_irq_wake(i32 %72, i32 1)
  br label %88

74:                                               ; preds = %64
  %75 = load %struct.board_info*, %struct.board_info** %6, align 8
  %76 = getelementptr inbounds %struct.board_info, %struct.board_info* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load %struct.board_info*, %struct.board_info** %6, align 8
  %84 = getelementptr inbounds %struct.board_info, %struct.board_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @irq_set_irq_wake(i32 %85, i32 0)
  br label %87

87:                                               ; preds = %82, %79, %74
  br label %88

88:                                               ; preds = %87, %69
  br label %89

89:                                               ; preds = %88, %40
  %90 = load i32, i32* %8, align 4
  %91 = load %struct.board_info*, %struct.board_info** %6, align 8
  %92 = getelementptr inbounds %struct.board_info, %struct.board_info* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %89, %28, %19
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.board_info* @to_dm9000_board(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @iow(%struct.board_info*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @irq_set_irq_wake(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
