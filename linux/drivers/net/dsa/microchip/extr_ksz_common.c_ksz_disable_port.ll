; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_disable_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_disable_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksz_disable_port(%struct.dsa_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.dsa_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ksz_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %7 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %6, i32 0, i32 0
  %8 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  store %struct.ksz_device* %8, %struct.ksz_device** %5, align 8
  %9 = load %struct.dsa_switch*, %struct.dsa_switch** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @dsa_is_user_port(%struct.dsa_switch* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %29

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = shl i32 1, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %19 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 1, %22
  %24 = xor i32 %23, -1
  %25 = load %struct.ksz_device*, %struct.ksz_device** %5, align 8
  %26 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @dsa_is_user_port(%struct.dsa_switch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
