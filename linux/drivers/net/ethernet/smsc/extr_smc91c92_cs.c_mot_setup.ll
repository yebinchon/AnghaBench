; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mot_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_mot_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.net_device* }
%struct.net_device = type { i32, i32* }

@MOT_EEPROM = common dso_local global i32 0, align 4
@POINTER = common dso_local global i64 0, align 8
@CTL_RELOAD = common dso_local global i32 0, align 4
@CTL_EE_SELECT = common dso_local global i32 0, align 4
@CONTROL = common dso_local global i64 0, align 8
@CTL_STORE = common dso_local global i32 0, align 4
@GENERAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @mot_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mot_setup(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %89, %1
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 3
  br i1 %18, label %19, label %92

19:                                               ; preds = %16
  %20 = call i32 @SMC_SELECT_BANK(i32 2)
  %21 = load i32, i32* @MOT_EEPROM, align 4
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = load i64, i64* @POINTER, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outw(i32 %23, i64 %27)
  %29 = call i32 @SMC_SELECT_BANK(i32 1)
  %30 = load i32, i32* @CTL_RELOAD, align 4
  %31 = load i32, i32* @CTL_EE_SELECT, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = load i64, i64* @CONTROL, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @outw(i32 %32, i64 %36)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %56, %19
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 200
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  %42 = call i32 @udelay(i32 10)
  %43 = load i32, i32* @CTL_RELOAD, align 4
  %44 = load i32, i32* @CTL_STORE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = load i64, i64* @CONTROL, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @inw(i64 %49)
  %51 = and i32 %45, %50
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %59

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %38

59:                                               ; preds = %54, %38
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 -1, i32* %2, align 4
  br label %93

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = zext i32 %64 to i64
  %66 = load i64, i64* @GENERAL, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @inw(i64 %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, 255
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = mul nsw i32 2, %74
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 %70, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = ashr i32 %78, 8
  %80 = and i32 %79, 255
  %81 = load %struct.net_device*, %struct.net_device** %4, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = mul nsw i32 2, %84
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32 %80, i32* %88, align 4
  br label %89

89:                                               ; preds = %63
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %16

92:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %62
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
