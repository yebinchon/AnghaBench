; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_ungermann_try_io_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_ungermann_try_io_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @ungermann_try_io_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ungermann_try_io_port(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  store i32 768, i32* %5, align 4
  br label %6

6:                                                ; preds = %36, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp ult i32 %7, 992
  br i1 %8, label %9, label %39

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %12 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %13, i64 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 %10, i32* %16, align 4
  %17 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %18 = call i32 @pcmcia_request_io(%struct.pcmcia_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %9
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 240
  %30 = lshr i32 %29, 3
  %31 = or i32 %30, 34
  %32 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %33 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %41

35:                                               ; preds = %9
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %5, align 4
  %38 = add i32 %37, 32
  store i32 %38, i32* %5, align 4
  br label %6

39:                                               ; preds = %6
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %39, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @pcmcia_request_io(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
