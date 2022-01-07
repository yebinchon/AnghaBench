; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_am79c961a.c_am79c961_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_am79c961a.c_am79c961_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.dev_priv = type { i32 }

@CSR0 = common dso_local global i32 0, align 4
@CSR0_IENA = common dso_local global i32 0, align 4
@CSR0_TINT = common dso_local global i32 0, align 4
@CSR0_RINT = common dso_local global i32 0, align 4
@CSR0_MERR = common dso_local global i32 0, align 4
@CSR0_MISS = common dso_local global i32 0, align 4
@CSR0_CERR = common dso_local global i32 0, align 4
@CSR0_BABL = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @am79c961_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am79c961_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dev_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.dev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.dev_priv* %13, %struct.dev_priv** %6, align 8
  store i32 100, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %90, %2
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CSR0, align 4
  %19 = call i32 @read_rreg(i32 %17, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CSR0, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CSR0_IENA, align 4
  %26 = load i32, i32* @CSR0_TINT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @CSR0_RINT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CSR0_MERR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @CSR0_MISS, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @CSR0_CERR, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @CSR0_BABL, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %24, %37
  %39 = call i32 @write_rreg(i32 %22, i32 %23, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @CSR0_RINT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %14
  store i32 1, i32* %9, align 4
  %45 = load %struct.net_device*, %struct.net_device** %5, align 8
  %46 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %47 = call i32 @am79c961_rx(%struct.net_device* %45, %struct.dev_priv* %46)
  br label %48

48:                                               ; preds = %44, %14
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @CSR0_TINT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  store i32 1, i32* %9, align 4
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %56 = call i32 @am79c961_tx(%struct.net_device* %54, %struct.dev_priv* %55)
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @CSR0_MISS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  store i32 1, i32* %9, align 4
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @CSR0_CERR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  store i32 1, i32* %9, align 4
  %74 = load %struct.dev_priv*, %struct.dev_priv** %6, align 8
  %75 = getelementptr inbounds %struct.dev_priv, %struct.dev_priv* %74, i32 0, i32 0
  %76 = load i32, i32* @jiffies, align 4
  %77 = call i32 @mod_timer(i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @CSR0_RINT, align 4
  %86 = load i32, i32* @CSR0_TINT, align 4
  %87 = or i32 %85, %86
  %88 = and i32 %84, %87
  %89 = icmp ne i32 %88, 0
  br label %90

90:                                               ; preds = %83, %79
  %91 = phi i1 [ false, %79 ], [ %89, %83 ]
  br i1 %91, label %14, label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @IRQ_RETVAL(i32 %93)
  ret i32 %94
}

declare dso_local %struct.dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @read_rreg(i32, i32) #1

declare dso_local i32 @write_rreg(i32, i32, i32) #1

declare dso_local i32 @am79c961_rx(%struct.net_device*, %struct.dev_priv*) #1

declare dso_local i32 @am79c961_tx(%struct.net_device*, %struct.dev_priv*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
