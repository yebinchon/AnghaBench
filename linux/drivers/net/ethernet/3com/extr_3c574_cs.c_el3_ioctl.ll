; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_el3_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c574_cs.c_el3_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ifreq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.el3_private = type { i32, i32 }
%struct.mii_ioctl_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [53 x i8] c"%s: In ioct(%-.6s, %#4.4x) %4.4x %4.4x %4.4x %4.4x.\0A\00", align 1
@EL3_CMD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ifreq*, i32)* @el3_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @el3_ioctl(%struct.net_device* %0, %struct.ifreq* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ifreq*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.el3_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mii_ioctl_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ifreq* %1, %struct.ifreq** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.el3_private* @netdev_priv(%struct.net_device* %16)
  store %struct.el3_private* %17, %struct.el3_private** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %9, align 4
  %21 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %22 = call %struct.mii_ioctl_data* @if_mii(%struct.ifreq* %21)
  store %struct.mii_ioctl_data* %22, %struct.mii_ioctl_data** %10, align 8
  %23 = load %struct.el3_private*, %struct.el3_private** %8, align 8
  %24 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 31
  store i32 %26, i32* %11, align 4
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ifreq*, %struct.ifreq** %6, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %36 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %39 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %42 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %45 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pr_debug(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %33, i32 %34, i32 %37, i32 %40, i32 %43, i32 %46)
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %112 [
    i32 130, label %49
    i32 129, label %53
    i32 128, label %82
  ]

49:                                               ; preds = %3
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %52 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %3, %49
  %54 = load %struct.el3_private*, %struct.el3_private** %8, align 8
  %55 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %54, i32 0, i32 1
  %56 = load i64, i64* %13, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @EL3_CMD, align 4
  %60 = add i32 %58, %59
  %61 = call i32 @inw(i32 %60)
  %62 = ashr i32 %61, 13
  store i32 %62, i32* %12, align 4
  %63 = call i32 @EL3WINDOW(i32 4)
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %66 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 31
  %69 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %70 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 31
  %73 = call i32 @mdio_read(i32 %64, i32 %68, i32 %72)
  %74 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %75 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %74, i32 0, i32 3
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @EL3WINDOW(i32 %76)
  %78 = load %struct.el3_private*, %struct.el3_private** %8, align 8
  %79 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %78, i32 0, i32 1
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @spin_unlock_irqrestore(i32* %79, i64 %80)
  store i32 0, i32* %4, align 4
  br label %115

82:                                               ; preds = %3
  %83 = load %struct.el3_private*, %struct.el3_private** %8, align 8
  %84 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %83, i32 0, i32 1
  %85 = load i64, i64* %15, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @EL3_CMD, align 4
  %89 = add i32 %87, %88
  %90 = call i32 @inw(i32 %89)
  %91 = ashr i32 %90, 13
  store i32 %91, i32* %14, align 4
  %92 = call i32 @EL3WINDOW(i32 4)
  %93 = load i32, i32* %9, align 4
  %94 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %95 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 31
  %98 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %99 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, 31
  %102 = load %struct.mii_ioctl_data*, %struct.mii_ioctl_data** %10, align 8
  %103 = getelementptr inbounds %struct.mii_ioctl_data, %struct.mii_ioctl_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mdio_write(i32 %93, i32 %97, i32 %101, i32 %104)
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @EL3WINDOW(i32 %106)
  %108 = load %struct.el3_private*, %struct.el3_private** %8, align 8
  %109 = getelementptr inbounds %struct.el3_private, %struct.el3_private* %108, i32 0, i32 1
  %110 = load i64, i64* %15, align 8
  %111 = call i32 @spin_unlock_irqrestore(i32* %109, i64 %110)
  store i32 0, i32* %4, align 4
  br label %115

112:                                              ; preds = %3
  %113 = load i32, i32* @EOPNOTSUPP, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %4, align 4
  br label %115

115:                                              ; preds = %112, %82, %53
  %116 = load i32, i32* %4, align 4
  ret i32 %116
}

declare dso_local %struct.el3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mii_ioctl_data* @if_mii(%struct.ifreq*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inw(i32) #1

declare dso_local i32 @EL3WINDOW(i32) #1

declare dso_local i32 @mdio_read(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mdio_write(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
