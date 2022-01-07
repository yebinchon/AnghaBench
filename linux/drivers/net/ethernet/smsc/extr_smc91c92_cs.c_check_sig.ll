; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_check_sig.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_check_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__**, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@BANK_SELECT = common dso_local global i64 0, align 8
@CONTROL = common dso_local global i64 0, align 8
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i64 0, align 8
@CONFIG = common dso_local global i64 0, align 8
@CFG_16BIT = common dso_local global i32 0, align 4
@BASE_ADDR = common dso_local global i64 0, align 8
@REVISION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"using 8-bit IO window\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @check_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_sig(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %8 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %9 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %8, i32 0, i32 1
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = call i32 @SMC_SELECT_BANK(i32 1)
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* @BANK_SELECT, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @inw(i64 %18)
  %20 = ashr i32 %19, 8
  %21 = icmp ne i32 %20, 51
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @CONTROL, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @outw(i32 0, i64 %26)
  %28 = call i32 @mdelay(i32 55)
  br label %29

29:                                               ; preds = %22, %1
  %30 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %31 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @IO_DATA_PATH_WIDTH_AUTO, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %5, align 4
  %41 = zext i32 %40 to i64
  %42 = load i64, i64* @CONFIG, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @inb(i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %29
  %48 = load i32, i32* @CFG_16BIT, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %56

51:                                               ; preds = %29
  %52 = load i32, i32* @CFG_16BIT, align 4
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %5, align 4
  %59 = zext i32 %58 to i64
  %60 = load i64, i64* @CONFIG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 %57, i64 %61)
  %63 = load i32, i32* %5, align 4
  %64 = zext i32 %63 to i64
  %65 = load i64, i64* @BASE_ADDR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @inw(i64 %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = load i64, i64* @BANK_SELECT, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @inw(i64 %71)
  %73 = ashr i32 %72, 8
  %74 = icmp eq i32 %73, 51
  br i1 %74, label %75, label %90

75:                                               ; preds = %56
  %76 = load i32, i32* %7, align 4
  %77 = ashr i32 %76, 8
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, 255
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %75
  %82 = call i32 @SMC_SELECT_BANK(i32 3)
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = load i64, i64* @REVISION, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @inw(i64 %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = and i32 %88, 255
  store i32 %89, i32* %2, align 4
  br label %107

90:                                               ; preds = %75, %56
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %90
  %94 = load %struct.net_device*, %struct.net_device** %4, align 8
  %95 = call i32 @netdev_info(%struct.net_device* %94, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %96 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %97 = call i32 @smc91c92_suspend(%struct.pcmcia_device* %96)
  %98 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %99 = call i32 @pcmcia_fixup_iowidth(%struct.pcmcia_device* %98)
  %100 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %101 = call i32 @smc91c92_resume(%struct.pcmcia_device* %100)
  %102 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %103 = call i32 @check_sig(%struct.pcmcia_device* %102)
  store i32 %103, i32* %2, align 4
  br label %107

104:                                              ; preds = %90
  %105 = load i32, i32* @ENODEV, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %104, %93, %81
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @smc91c92_suspend(%struct.pcmcia_device*) #1

declare dso_local i32 @pcmcia_fixup_iowidth(%struct.pcmcia_device*) #1

declare dso_local i32 @smc91c92_resume(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
