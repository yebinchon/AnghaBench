; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-velocity.c_velocity_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.velocity_info = type { i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@ISR_PRXI = common dso_local global i32 0, align 4
@ISR_PPRXI = common dso_local global i32 0, align 4
@ISR_PTXI = common dso_local global i32 0, align 4
@ISR_PPTXI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @velocity_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @velocity_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.velocity_info*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.velocity_info* @netdev_priv(%struct.net_device* %11)
  store %struct.velocity_info* %12, %struct.velocity_info** %7, align 8
  %13 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %14 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %17 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mac_read_isr(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %24 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %23, i32 0, i32 0
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load i32, i32* @IRQ_NONE, align 4
  store i32 %26, i32* %3, align 4
  br label %67

27:                                               ; preds = %2
  %28 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %29 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @mac_write_isr(i32 %30, i32 %31)
  %33 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %34 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %33, i32 0, i32 1
  %35 = call i32 @napi_schedule_prep(i32* %34)
  %36 = call i64 @likely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %27
  %39 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %40 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mac_disable_int(i32 %41)
  %43 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %44 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %43, i32 0, i32 1
  %45 = call i32 @__napi_schedule(i32* %44)
  br label %46

46:                                               ; preds = %38, %27
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @ISR_PRXI, align 4
  %49 = load i32, i32* @ISR_PPRXI, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @ISR_PTXI, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @ISR_PPTXI, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %47, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %46
  %59 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @velocity_error(%struct.velocity_info* %59, i32 %60)
  br label %62

62:                                               ; preds = %58, %46
  %63 = load %struct.velocity_info*, %struct.velocity_info** %7, align 8
  %64 = getelementptr inbounds %struct.velocity_info, %struct.velocity_info* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %62, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.velocity_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mac_read_isr(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mac_write_isr(i32, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @mac_disable_int(i32) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @velocity_error(%struct.velocity_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
