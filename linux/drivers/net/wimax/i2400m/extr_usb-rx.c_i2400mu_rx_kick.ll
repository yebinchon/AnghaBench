; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rx_kick.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wimax/i2400m/extr_usb-rx.c_i2400mu_rx_kick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2400mu = type { i32, i32, %struct.TYPE_2__*, %struct.i2400m }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }
%struct.i2400m = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"(i2400mu %p)\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"(i2400m %p) = void\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i2400mu_rx_kick(%struct.i2400mu* %0) #0 {
  %2 = alloca %struct.i2400mu*, align 8
  %3 = alloca %struct.i2400m*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.i2400mu* %0, %struct.i2400mu** %2, align 8
  %5 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %6 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %5, i32 0, i32 3
  store %struct.i2400m* %6, %struct.i2400m** %3, align 8
  %7 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %8 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %13 = call i32 @d_fnstart(i32 3, %struct.device* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.i2400m* %12)
  %14 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %15 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %14, i32 0, i32 1
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = load %struct.i2400mu*, %struct.i2400mu** %2, align 8
  %18 = getelementptr inbounds %struct.i2400mu, %struct.i2400mu* %17, i32 0, i32 0
  %19 = call i32 @wake_up_all(i32* %18)
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = load %struct.i2400m*, %struct.i2400m** %3, align 8
  %22 = call i32 @d_fnend(i32 3, %struct.device* %20, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.i2400m* %21)
  ret void
}

declare dso_local i32 @d_fnstart(i32, %struct.device*, i8*, %struct.i2400m*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @d_fnend(i32, %struct.device*, i8*, %struct.i2400m*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
