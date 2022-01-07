; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_sdla.c_sdla_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8, i64 }
%struct.frad_local = type { i64, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"irq %d for uninitialized device\0A\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@SDLA_S508 = common dso_local global i64 0, align 8
@SDLA_508_IRQ_INTERFACE = common dso_local global i32 0, align 4
@SDLA_502_IRQ_INTERFACE = common dso_local global i32 0, align 4
@SDLA_READ_DLC_STATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"invalid irq flag 0x%02X\0A\00", align 1
@SDLA_S502E = common dso_local global i64 0, align 8
@SDLA_S502E_INTACK = common dso_local global i32 0, align 4
@SDLA_REG_CONTROL = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sdla_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdla_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.frad_local*, align 8
  %8 = alloca i8, align 1
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.frad_local* @netdev_priv(%struct.net_device* %11)
  store %struct.frad_local* %12, %struct.frad_local** %7, align 8
  %13 = load %struct.frad_local*, %struct.frad_local** %7, align 8
  %14 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = load %struct.net_device*, %struct.net_device** %6, align 8
  %19 = load %struct.net_device*, %struct.net_device** %6, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 8
  %22 = call i32 @netdev_warn(%struct.net_device* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8 signext %21)
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %102

24:                                               ; preds = %2
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load %struct.frad_local*, %struct.frad_local** %7, align 8
  %27 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @SDLA_S508, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @SDLA_508_IRQ_INTERFACE, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @SDLA_502_IRQ_INTERFACE, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = call signext i8 @sdla_byte(%struct.net_device* %25, i32 %36)
  store i8 %37, i8* %8, align 1
  %38 = load i8, i8* %8, align 1
  %39 = sext i8 %38 to i32
  switch i32 %39, label %51 [
    i32 131, label %40
    i32 132, label %43
    i32 130, label %43
    i32 128, label %47
    i32 133, label %47
    i32 129, label %47
  ]

40:                                               ; preds = %35
  %41 = load %struct.net_device*, %struct.net_device** %6, align 8
  %42 = call i32 @sdla_receive(%struct.net_device* %41)
  br label %51

43:                                               ; preds = %35, %35
  %44 = load %struct.net_device*, %struct.net_device** %6, align 8
  %45 = load i32, i32* @SDLA_READ_DLC_STATUS, align 4
  %46 = call i32 @sdla_cmd(%struct.net_device* %44, i32 %45, i32 0, i32 0, i32* null, i32 0, i32* null, i32* null)
  br label %51

47:                                               ; preds = %35, %35, %35
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = load i8, i8* %8, align 1
  %50 = call i32 @netdev_warn(%struct.net_device* %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8 signext %49)
  br label %51

51:                                               ; preds = %35, %47, %43, %40
  %52 = load %struct.frad_local*, %struct.frad_local** %7, align 8
  %53 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SDLA_S502E, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %87

57:                                               ; preds = %51
  %58 = load i32, i32* @SDLA_S502E_INTACK, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.frad_local*, %struct.frad_local** %7, align 8
  %61 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load %struct.frad_local*, %struct.frad_local** %7, align 8
  %65 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.net_device*, %struct.net_device** %6, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outb(i32 %66, i64 %71)
  %73 = load i32, i32* @SDLA_S502E_INTACK, align 4
  %74 = load %struct.frad_local*, %struct.frad_local** %7, align 8
  %75 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load %struct.frad_local*, %struct.frad_local** %7, align 8
  %79 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.net_device*, %struct.net_device** %6, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SDLA_REG_CONTROL, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outb(i32 %80, i64 %85)
  br label %87

87:                                               ; preds = %57, %51
  store i8 0, i8* %8, align 1
  %88 = load %struct.net_device*, %struct.net_device** %6, align 8
  %89 = load %struct.frad_local*, %struct.frad_local** %7, align 8
  %90 = getelementptr inbounds %struct.frad_local, %struct.frad_local* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @SDLA_S508, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @SDLA_508_IRQ_INTERFACE, align 4
  br label %98

96:                                               ; preds = %87
  %97 = load i32, i32* @SDLA_502_IRQ_INTERFACE, align 4
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi i32 [ %95, %94 ], [ %97, %96 ]
  %100 = call i32 @sdla_write(%struct.net_device* %88, i32 %99, i8* %8, i32 1)
  %101 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %17
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.frad_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i8 signext) #1

declare dso_local signext i8 @sdla_byte(%struct.net_device*, i32) #1

declare dso_local i32 @sdla_receive(%struct.net_device*) #1

declare dso_local i32 @sdla_cmd(%struct.net_device*, i32, i32, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @sdla_write(%struct.net_device*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
