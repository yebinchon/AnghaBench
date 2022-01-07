; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_unregister_ext_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_unregister_ext_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ca8210_priv = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"External clock unregistered\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @ca8210_unregister_ext_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca8210_unregister_ext_clock(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ca8210_priv*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.ca8210_priv* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.ca8210_priv* %5, %struct.ca8210_priv** %3, align 8
  %6 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %12 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  call void @of_clk_del_provider(i32 %14)
  br label %23

15:                                               ; preds = %1
  %16 = load %struct.ca8210_priv*, %struct.ca8210_priv** %3, align 8
  %17 = getelementptr inbounds %struct.ca8210_priv, %struct.ca8210_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @clk_unregister(i32 %18)
  %20 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %21 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %20, i32 0, i32 0
  %22 = call i32 @dev_info(%struct.TYPE_2__* %21, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %15, %10
  ret void
}

declare dso_local %struct.ca8210_priv* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local void @of_clk_del_provider(i32) #1

declare dso_local i32 @clk_unregister(i32) #1

declare dso_local i32 @dev_info(%struct.TYPE_2__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
