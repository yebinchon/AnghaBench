; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { i32, i32, i32, i32, %struct.ksz_port* }
%struct.ksz_port = type { i32 }
%struct.phy_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksz_adjust_link(%struct.dsa_switch* %0, i32 %1, %struct.phy_device* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.phy_device*, align 8
  %7 = alloca %struct.ksz_device*, align 8
  %8 = alloca %struct.ksz_port*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.phy_device* %2, %struct.phy_device** %6, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %10 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %9, i32 0, i32 0
  %11 = load %struct.ksz_device*, %struct.ksz_device** %10, align 8
  store %struct.ksz_device* %11, %struct.ksz_device** %7, align 8
  %12 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %13 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %12, i32 0, i32 4
  %14 = load %struct.ksz_port*, %struct.ksz_port** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %14, i64 %16
  store %struct.ksz_port* %17, %struct.ksz_port** %8, align 8
  %18 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.ksz_port*, %struct.ksz_port** %8, align 8
  %24 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %23, i32 0, i32 0
  store i32 1, i32* %24, align 4
  %25 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %26 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %25, i32 0, i32 3
  %27 = call i32 @schedule_work(i32* %26)
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %30 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %29, i32 0, i32 2
  %31 = call i32 @mutex_lock(i32* %30)
  %32 = load %struct.phy_device*, %struct.phy_device** %6, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = xor i32 %38, -1
  %40 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %41 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 8
  br label %55

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 1, %45
  %47 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %48 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %46, %49
  %51 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %52 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  br label %55

55:                                               ; preds = %44, %36
  %56 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %57 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %56, i32 0, i32 2
  %58 = call i32 @mutex_unlock(i32* %57)
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
