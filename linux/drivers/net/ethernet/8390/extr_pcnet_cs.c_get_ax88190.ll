; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_get_ax88190.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_get_ax88190.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hw_info = type { i32 }
%struct.pcmcia_device = type { i32, %struct.net_device* }
%struct.net_device = type { i32, i32* }

@EN0_DCFG = common dso_local global i64 0, align 8
@EN0_RSARLO = common dso_local global i64 0, align 8
@EN0_RSARHI = common dso_local global i64 0, align 8
@E8390_RREAD = common dso_local global i32 0, align 4
@E8390_START = common dso_local global i32 0, align 4
@E8390_CMD = common dso_local global i64 0, align 8
@PCNET_DATAPORT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hw_info* (%struct.pcmcia_device*)* @get_ax88190 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hw_info* @get_ax88190(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.hw_info*, align 8
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
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %15 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 960
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store %struct.hw_info* null, %struct.hw_info** %2, align 8
  br label %73

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* @EN0_DCFG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outb_p(i32 1, i64 %23)
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @EN0_RSARLO, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @outb_p(i32 0, i64 %28)
  %30 = load i32, i32* %5, align 4
  %31 = zext i32 %30 to i64
  %32 = load i64, i64* @EN0_RSARHI, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @outb_p(i32 4, i64 %33)
  %35 = load i32, i32* @E8390_RREAD, align 4
  %36 = load i32, i32* @E8390_START, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %5, align 4
  %39 = zext i32 %38 to i64
  %40 = load i64, i64* @E8390_CMD, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outb_p(i32 %37, i64 %41)
  store i32 0, i32* %6, align 4
  br label %43

43:                                               ; preds = %69, %19
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 6
  br i1 %45, label %46, label %72

46:                                               ; preds = %43
  %47 = load i32, i32* %5, align 4
  %48 = zext i32 %47 to i64
  %49 = load i64, i64* @PCNET_DATAPORT, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @inw(i64 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 255
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = ashr i32 %60, 8
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %64, i64 %67
  store i32 %61, i32* %68, align 4
  br label %69

69:                                               ; preds = %46
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 2
  store i32 %71, i32* %6, align 4
  br label %43

72:                                               ; preds = %43
  store %struct.hw_info* null, %struct.hw_info** %2, align 8
  br label %73

73:                                               ; preds = %72, %18
  %74 = load %struct.hw_info*, %struct.hw_info** %2, align 8
  ret %struct.hw_info* %74
}

declare dso_local i32 @outb_p(i32, i64) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
