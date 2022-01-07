; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_switch_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_switch_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i8*, %struct.dsa_switch*, %struct.device* }
%struct.dsa_switch = type { %struct.ksz_device* }
%struct.device = type { i32 }

@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ksz_device* @ksz_switch_alloc(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca %struct.ksz_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = load i32, i32* @DSA_MAX_PORTS, align 4
  %10 = call %struct.dsa_switch* @dsa_switch_alloc(%struct.device* %8, i32 %9)
  store %struct.dsa_switch* %10, %struct.dsa_switch** %6, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %12 = icmp ne %struct.dsa_switch* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.ksz_device* null, %struct.ksz_device** %3, align 8
  br label %35

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.ksz_device* @devm_kzalloc(%struct.device* %15, i32 24, i32 %16)
  store %struct.ksz_device* %17, %struct.ksz_device** %7, align 8
  %18 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %19 = icmp ne %struct.ksz_device* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  store %struct.ksz_device* null, %struct.ksz_device** %3, align 8
  br label %35

21:                                               ; preds = %14
  %22 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %23 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %24 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %23, i32 0, i32 0
  store %struct.ksz_device* %22, %struct.ksz_device** %24, align 8
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %27 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %26, i32 0, i32 2
  store %struct.device* %25, %struct.device** %27, align 8
  %28 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %29 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %30 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %29, i32 0, i32 1
  store %struct.dsa_switch* %28, %struct.dsa_switch** %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %33 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  store %struct.ksz_device* %34, %struct.ksz_device** %3, align 8
  br label %35

35:                                               ; preds = %21, %20, %13
  %36 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  ret %struct.ksz_device* %36
}

declare dso_local %struct.dsa_switch* @dsa_switch_alloc(%struct.device*, i32) #1

declare dso_local %struct.ksz_device* @devm_kzalloc(%struct.device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
