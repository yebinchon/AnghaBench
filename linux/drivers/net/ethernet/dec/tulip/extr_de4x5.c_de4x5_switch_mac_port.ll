; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_switch_mac_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_switch_mac_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@STOP_DE4X5 = common dso_local global i32 0, align 4
@DE4X5_OMR = common dso_local global i32 0, align 4
@OMR_PS = common dso_local global i32 0, align 4
@OMR_HBD = common dso_local global i32 0, align 4
@OMR_TTM = common dso_local global i32 0, align 4
@OMR_PCS = common dso_local global i32 0, align 4
@OMR_SCR = common dso_local global i32 0, align 4
@OMR_FDX = common dso_local global i32 0, align 4
@RESET_DE4X5 = common dso_local global i32 0, align 4
@DC21140 = common dso_local global i32 0, align 4
@DC2114x = common dso_local global i32 0, align 4
@DE4X5_MFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.net_device*)* @de4x5_switch_mac_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @de4x5_switch_mac_port(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.de4x5_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %6)
  store %struct.de4x5_private* %7, %struct.de4x5_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @STOP_DE4X5, align 4
  %12 = load i32, i32* @DE4X5_OMR, align 4
  %13 = call i32 @inl(i32 %12)
  %14 = load i32, i32* @OMR_PS, align 4
  %15 = load i32, i32* @OMR_HBD, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @OMR_TTM, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @OMR_PCS, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @OMR_SCR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @OMR_FDX, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = and i32 %13, %25
  store i32 %26, i32* %5, align 4
  %27 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %28 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @OMR_PS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @OMR_HBD, align 4
  %38 = load i32, i32* %5, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %36, %1
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* @DE4X5_OMR, align 4
  %43 = call i32 @outl(i32 %41, i32 %42)
  %44 = load i32, i32* @RESET_DE4X5, align 4
  %45 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %46 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @DC21140, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %40
  %51 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %52 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @gep_wr(i32 %54, %struct.net_device* %55)
  %57 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %58 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @gep_wr(i32 %60, %struct.net_device* %61)
  br label %86

63:                                               ; preds = %40
  %64 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %65 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -256
  %68 = load i32, i32* @DC2114x, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %85

70:                                               ; preds = %63
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %73 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %77 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.de4x5_private*, %struct.de4x5_private** %3, align 8
  %81 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @reset_init_sia(%struct.net_device* %71, i32 %75, i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %70, %63
  br label %86

86:                                               ; preds = %85, %50
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @DE4X5_OMR, align 4
  %89 = call i32 @outl(i32 %87, i32 %88)
  %90 = load i32, i32* @DE4X5_MFC, align 4
  %91 = call i32 @inl(i32 %90)
  %92 = load i32, i32* %5, align 4
  %93 = sext i32 %92 to i64
  ret i64 %93
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @gep_wr(i32, %struct.net_device*) #1

declare dso_local i32 @reset_init_sia(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
