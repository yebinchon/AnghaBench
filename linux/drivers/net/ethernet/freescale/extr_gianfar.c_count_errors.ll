; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_count_errors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_gianfar.c_count_errors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32, i32 }
%struct.gfar_private = type { %struct.gfar_extra_stats }
%struct.gfar_extra_stats = type { i32, i32, i32, i32, i32, i32 }

@RXBD_TRUNCATED = common dso_local global i32 0, align 4
@RXBD_LARGE = common dso_local global i32 0, align 4
@RXBD_SHORT = common dso_local global i32 0, align 4
@RXBD_NONOCTET = common dso_local global i32 0, align 4
@RXBD_CRCERR = common dso_local global i32 0, align 4
@RXBD_OVERRUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.net_device*)* @count_errors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_errors(i32 %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.gfar_private*, align 8
  %6 = alloca %struct.net_device_stats*, align 8
  %7 = alloca %struct.gfar_extra_stats*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.gfar_private* @netdev_priv(%struct.net_device* %8)
  store %struct.gfar_private* %9, %struct.gfar_private** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  store %struct.net_device_stats* %11, %struct.net_device_stats** %6, align 8
  %12 = load %struct.gfar_private*, %struct.gfar_private** %5, align 8
  %13 = getelementptr inbounds %struct.gfar_private, %struct.gfar_private* %12, i32 0, i32 0
  store %struct.gfar_extra_stats* %13, %struct.gfar_extra_stats** %7, align 8
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @RXBD_TRUNCATED, align 4
  %16 = call i32 @BD_LFLAG(i32 %15)
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %21 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %25 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %24, i32 0, i32 5
  %26 = call i32 @atomic64_inc(i32* %25)
  br label %96

27:                                               ; preds = %2
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @RXBD_LARGE, align 4
  %30 = load i32, i32* @RXBD_SHORT, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @BD_LFLAG(i32 %31)
  %33 = and i32 %28, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %27
  %36 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %37 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @RXBD_LARGE, align 4
  %42 = call i32 @BD_LFLAG(i32 %41)
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %35
  %46 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %47 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %46, i32 0, i32 4
  %48 = call i32 @atomic64_inc(i32* %47)
  br label %53

49:                                               ; preds = %35
  %50 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %51 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %50, i32 0, i32 3
  %52 = call i32 @atomic64_inc(i32* %51)
  br label %53

53:                                               ; preds = %49, %45
  br label %54

54:                                               ; preds = %53, %27
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @RXBD_NONOCTET, align 4
  %57 = call i32 @BD_LFLAG(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %62 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %66 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %65, i32 0, i32 2
  %67 = call i32 @atomic64_inc(i32* %66)
  br label %68

68:                                               ; preds = %60, %54
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @RXBD_CRCERR, align 4
  %71 = call i32 @BD_LFLAG(i32 %70)
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %76 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %75, i32 0, i32 1
  %77 = call i32 @atomic64_inc(i32* %76)
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %74, %68
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @RXBD_OVERRUN, align 4
  %85 = call i32 @BD_LFLAG(i32 %84)
  %86 = and i32 %83, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %82
  %89 = load %struct.gfar_extra_stats*, %struct.gfar_extra_stats** %7, align 8
  %90 = getelementptr inbounds %struct.gfar_extra_stats, %struct.gfar_extra_stats* %89, i32 0, i32 0
  %91 = call i32 @atomic64_inc(i32* %90)
  %92 = load %struct.net_device_stats*, %struct.net_device_stats** %6, align 8
  %93 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %96

96:                                               ; preds = %19, %88, %82
  ret void
}

declare dso_local %struct.gfar_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @BD_LFLAG(i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
