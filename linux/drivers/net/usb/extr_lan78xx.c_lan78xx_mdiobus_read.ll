; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_mdiobus_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lan78xx.c_lan78xx_mdiobus_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.lan78xx_net* }
%struct.lan78xx_net = type { i32, i32 }

@MII_READ = common dso_local global i32 0, align 4
@MII_ACC = common dso_local global i32 0, align 4
@MII_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @lan78xx_mdiobus_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan78xx_mdiobus_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.lan78xx_net*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load %struct.lan78xx_net*, %struct.lan78xx_net** %13, align 8
  store %struct.lan78xx_net* %14, %struct.lan78xx_net** %8, align 8
  %15 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %16 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @usb_autopm_get_interface(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %4, align 4
  br label %61

23:                                               ; preds = %3
  %24 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %25 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %24, i32 0, i32 1
  %26 = call i32 @mutex_lock(i32* %25)
  %27 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %28 = call i32 @lan78xx_phy_wait_not_busy(%struct.lan78xx_net* %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %52

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MII_READ, align 4
  %36 = call i32 @mii_access(i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %38 = load i32, i32* @MII_ACC, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @lan78xx_write_reg(%struct.lan78xx_net* %37, i32 %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %42 = call i32 @lan78xx_phy_wait_not_busy(%struct.lan78xx_net* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %52

46:                                               ; preds = %32
  %47 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %48 = load i32, i32* @MII_DATA, align 4
  %49 = call i32 @lan78xx_read_reg(%struct.lan78xx_net* %47, i32 %48, i32* %9)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %9, align 4
  %51 = and i32 %50, 65535
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %46, %45, %31
  %53 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %54 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.lan78xx_net*, %struct.lan78xx_net** %8, align 8
  %57 = getelementptr inbounds %struct.lan78xx_net, %struct.lan78xx_net* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @usb_autopm_put_interface(i32 %58)
  %60 = load i32, i32* %11, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %52, %21
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @lan78xx_phy_wait_not_busy(%struct.lan78xx_net*) #1

declare dso_local i32 @mii_access(i32, i32, i32) #1

declare dso_local i32 @lan78xx_write_reg(%struct.lan78xx_net*, i32, i32) #1

declare dso_local i32 @lan78xx_read_reg(%struct.lan78xx_net*, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
