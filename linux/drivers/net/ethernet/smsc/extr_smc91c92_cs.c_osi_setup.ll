; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_osi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_osi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.TYPE_2__**, i32, %struct.net_device* }
%struct.TYPE_2__ = type { i64 }
%struct.net_device = type { i32 }

@pcmcia_osi_mac = common dso_local global i32 0, align 4
@MANFID_OSITECH = common dso_local global i64 0, align 8
@PRODID_OSITECH_SEVEN = common dso_local global i64 0, align 8
@MANFID_PSION = common dso_local global i64 0, align 8
@PRODID_PSION_NET100 = common dso_local global i64 0, align 8
@OSITECH_AUI_PWR = common dso_local global i64 0, align 8
@OSITECH_RESET_ISR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"AUI/PWR: %4.4x RESET/ISR: %4.4x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, i64, i64)* @osi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @osi_setup(%struct.pcmcia_device* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %8, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %14 = load i32, i32* @pcmcia_osi_mac, align 4
  %15 = load %struct.net_device*, %struct.net_device** %8, align 8
  %16 = call i64 @pcmcia_loop_tuple(%struct.pcmcia_device* %13, i32 144, i32 %14, %struct.net_device* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %93

19:                                               ; preds = %3
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* @MANFID_OSITECH, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* @PRODID_OSITECH_SEVEN, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23, %19
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @MANFID_PSION, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @PRODID_PSION_NET100, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %31, %23
  %36 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %37 = call i32 @osi_load_firmware(%struct.pcmcia_device* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %4, align 4
  br label %93

42:                                               ; preds = %35
  br label %92

43:                                               ; preds = %31, %27
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @MANFID_OSITECH, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %91

47:                                               ; preds = %43
  %48 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %49 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %50, i64 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @set_bits(i32 768, i64 %56)
  %58 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %59 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %60, i64 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @OSITECH_RESET_ISR, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @set_bits(i32 768, i64 %66)
  %68 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %69 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %68, i32 0, i32 1
  %70 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %71 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %72, i64 0
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @OSITECH_AUI_PWR, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i32 @inw(i64 %78)
  %80 = load %struct.pcmcia_device*, %struct.pcmcia_device** %5, align 8
  %81 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %82, i64 0
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @OSITECH_RESET_ISR, align 8
  %88 = add nsw i64 %86, %87
  %89 = call i32 @inw(i64 %88)
  %90 = call i32 @dev_dbg(i32* %69, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %89)
  br label %91

91:                                               ; preds = %47, %43
  br label %92

92:                                               ; preds = %91, %42
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %40, %18
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i64 @pcmcia_loop_tuple(%struct.pcmcia_device*, i32, i32, %struct.net_device*) #1

declare dso_local i32 @osi_load_firmware(%struct.pcmcia_device*) #1

declare dso_local i32 @set_bits(i32, i64) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
