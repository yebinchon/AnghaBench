; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_bridge_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sq930x.c_bridge_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucbus_write_cmd = type { i32, i32 }
%struct.sd = type { i32 }

@bridge_init.clkfreq_cmd = internal constant %struct.ucbus_write_cmd { i32 61489, i32 0 }, align 4
@SQ930_GPIO_POWER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @bridge_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_init(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  store %struct.sd* %0, %struct.sd** %2, align 8
  %3 = load %struct.sd*, %struct.sd** %2, align 8
  %4 = getelementptr inbounds %struct.sd, %struct.sd* %3, i32 0, i32 0
  %5 = call i32 @ucbus_write(i32* %4, %struct.ucbus_write_cmd* @bridge_init.clkfreq_cmd, i32 1, i32 1)
  %6 = load %struct.sd*, %struct.sd** %2, align 8
  %7 = load i32, i32* @SQ930_GPIO_POWER, align 4
  %8 = call i32 @gpio_set(%struct.sd* %6, i32 %7, i32 65280)
  ret void
}

declare dso_local i32 @ucbus_write(i32*, %struct.ucbus_write_cmd*, i32, i32) #1

declare dso_local i32 @gpio_set(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
