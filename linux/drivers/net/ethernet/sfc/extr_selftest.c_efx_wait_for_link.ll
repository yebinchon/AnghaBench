; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_selftest.c_efx_wait_for_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_selftest.c_efx_wait_for_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__*, %struct.efx_link_state }
%struct.TYPE_2__ = type { {}*, {}* }
%struct.efx_link_state = type { i32 }

@HZ = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_wait_for_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_wait_for_link(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_link_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 2
  store %struct.efx_link_state* %9, %struct.efx_link_state** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %74, %1
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 40
  br i1 %12, label %13, label %77

13:                                               ; preds = %10
  %14 = load i32, i32* @HZ, align 4
  %15 = sdiv i32 %14, 10
  %16 = call i32 @schedule_timeout_uninterruptible(i32 %15)
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = bitcast {}** %20 to i32 (%struct.efx_nic*)**
  %22 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %21, align 8
  %23 = icmp ne i32 (%struct.efx_nic*)* %22, null
  br i1 %23, label %24, label %39

24:                                               ; preds = %13
  %25 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %26 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %29 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = bitcast {}** %31 to i32 (%struct.efx_nic*)**
  %33 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %32, align 8
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = call i32 %33(%struct.efx_nic* %34)
  %36 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  br label %39

39:                                               ; preds = %24, %13
  %40 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %41 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %40, i32 0, i32 0
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.efx_link_state*, %struct.efx_link_state** %4, align 8
  %44 = getelementptr inbounds %struct.efx_link_state, %struct.efx_link_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = bitcast {}** %52 to i32 (%struct.efx_nic*)**
  %54 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %53, align 8
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = call i32 %54(%struct.efx_nic* %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %48, %39
  %61 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %7, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  %69 = icmp eq i32 %68, 2
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %2, align 4
  br label %80

71:                                               ; preds = %66
  br label %73

72:                                               ; preds = %60
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %72, %71
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %10

77:                                               ; preds = %10
  %78 = load i32, i32* @ETIMEDOUT, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %77, %70
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
