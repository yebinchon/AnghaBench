; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.b44 = type { i32, i32, i32 }

@B44_ISTAT = common dso_local global i32 0, align 4
@B44_IMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"late interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @b44_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.b44*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.b44* @netdev_priv(%struct.net_device* %12)
  store %struct.b44* %13, %struct.b44** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.b44*, %struct.b44** %6, align 8
  %15 = getelementptr inbounds %struct.b44, %struct.b44* %14, i32 0, i32 1
  %16 = call i32 @spin_lock(i32* %15)
  %17 = load %struct.b44*, %struct.b44** %6, align 8
  %18 = load i32, i32* @B44_ISTAT, align 4
  %19 = call i32 @br32(%struct.b44* %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.b44*, %struct.b44** %6, align 8
  %21 = load i32, i32* @B44_IMASK, align 4
  %22 = call i32 @br32(%struct.b44* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %7, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %62

28:                                               ; preds = %2
  store i32 1, i32* %9, align 4
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @netif_running(%struct.net_device* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %54

39:                                               ; preds = %28
  %40 = load %struct.b44*, %struct.b44** %6, align 8
  %41 = getelementptr inbounds %struct.b44, %struct.b44* %40, i32 0, i32 2
  %42 = call i64 @napi_schedule_prep(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.b44*, %struct.b44** %6, align 8
  %47 = getelementptr inbounds %struct.b44, %struct.b44* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.b44*, %struct.b44** %6, align 8
  %49 = call i32 @__b44_disable_ints(%struct.b44* %48)
  %50 = load %struct.b44*, %struct.b44** %6, align 8
  %51 = getelementptr inbounds %struct.b44, %struct.b44* %50, i32 0, i32 2
  %52 = call i32 @__napi_schedule(i32* %51)
  br label %53

53:                                               ; preds = %44, %39
  br label %54

54:                                               ; preds = %53, %36
  %55 = load %struct.b44*, %struct.b44** %6, align 8
  %56 = load i32, i32* @B44_ISTAT, align 4
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @bw32(%struct.b44* %55, i32 %56, i32 %57)
  %59 = load %struct.b44*, %struct.b44** %6, align 8
  %60 = load i32, i32* @B44_ISTAT, align 4
  %61 = call i32 @br32(%struct.b44* %59, i32 %60)
  br label %62

62:                                               ; preds = %54, %2
  %63 = load %struct.b44*, %struct.b44** %6, align 8
  %64 = getelementptr inbounds %struct.b44, %struct.b44* %63, i32 0, i32 1
  %65 = call i32 @spin_unlock(i32* %64)
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @IRQ_RETVAL(i32 %66)
  ret i32 %67
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @br32(%struct.b44*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__b44_disable_ints(%struct.b44*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @bw32(%struct.b44*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
