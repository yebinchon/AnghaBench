; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_netup-init.c_netup_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_netup-init.c_netup_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { %struct.cx23885_i2c* }
%struct.cx23885_i2c = type { %struct.i2c_adapter }
%struct.i2c_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netup_initialize(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca %struct.cx23885_i2c*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %5 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %5, i32 0, i32 0
  %7 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %6, align 8
  %8 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %7, i64 2
  store %struct.cx23885_i2c* %8, %struct.cx23885_i2c** %3, align 8
  %9 = load %struct.cx23885_i2c*, %struct.cx23885_i2c** %3, align 8
  %10 = getelementptr inbounds %struct.cx23885_i2c, %struct.cx23885_i2c* %9, i32 0, i32 0
  store %struct.i2c_adapter* %10, %struct.i2c_adapter** %4, align 8
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = call i32 @i2c_av_and_or(%struct.i2c_adapter* %11, i32 2051, i32 -17, i32 0)
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %14 = call i32 @i2c_av_write4(%struct.i2c_adapter* %13, i32 276, i32 15339187)
  %15 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %16 = call i32 @i2c_av_write4(%struct.i2c_adapter* %15, i32 272, i32 590617)
  %17 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %18 = call i32 @i2c_av_and_or(%struct.i2c_adapter* %17, i32 2051, i32 -17, i32 16)
  ret void
}

declare dso_local i32 @i2c_av_and_or(%struct.i2c_adapter*, i32, i32, i32) #1

declare dso_local i32 @i2c_av_write4(%struct.i2c_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
