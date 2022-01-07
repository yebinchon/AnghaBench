; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_setoptions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_setoptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.temac_option = type { i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.temac_local = type { i32, i32 }

@temac_options = common dso_local global %struct.temac_option* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @temac_setoptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_setoptions(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.temac_local*, align 8
  %6 = alloca %struct.temac_option*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.temac_local* @netdev_priv(%struct.net_device* %9)
  store %struct.temac_local* %10, %struct.temac_local** %5, align 8
  %11 = load %struct.temac_option*, %struct.temac_option** @temac_options, align 8
  %12 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %11, i64 0
  store %struct.temac_option* %12, %struct.temac_option** %6, align 8
  %13 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %14 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @spin_lock_irqsave(i32 %15, i64 %16)
  br label %18

18:                                               ; preds = %52, %2
  %19 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %20 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %55

23:                                               ; preds = %18
  %24 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %25 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %26 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @temac_indirect_in32_locked(%struct.temac_local* %24, i32 %27)
  %29 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %30 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %28, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %36 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %52

40:                                               ; preds = %23
  %41 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %42 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %7, align 4
  %46 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %47 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %48 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @temac_indirect_out32_locked(%struct.temac_local* %46, i32 %49, i32 %50)
  br label %52

52:                                               ; preds = %40, %23
  %53 = load %struct.temac_option*, %struct.temac_option** %6, align 8
  %54 = getelementptr inbounds %struct.temac_option, %struct.temac_option* %53, i32 1
  store %struct.temac_option* %54, %struct.temac_option** %6, align 8
  br label %18

55:                                               ; preds = %18
  %56 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %57 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32 %58, i64 %59)
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.temac_local*, %struct.temac_local** %5, align 8
  %63 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  ret i32 0
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @temac_indirect_in32_locked(%struct.temac_local*, i32) #1

declare dso_local i32 @temac_indirect_out32_locked(%struct.temac_local*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
