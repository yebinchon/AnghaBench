; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_com20020_cs.c_com20020_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i64, %struct.com20020_dev* }
%struct.com20020_dev = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32 }

@COM20020_REG_W_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @com20020_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @com20020_resume(%struct.pcmcia_device* %0) #0 {
  %2 = alloca %struct.pcmcia_device*, align 8
  %3 = alloca %struct.com20020_dev*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.arcnet_local*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %2, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 1
  %9 = load %struct.com20020_dev*, %struct.com20020_dev** %8, align 8
  store %struct.com20020_dev* %9, %struct.com20020_dev** %3, align 8
  %10 = load %struct.com20020_dev*, %struct.com20020_dev** %3, align 8
  %11 = getelementptr inbounds %struct.com20020_dev, %struct.com20020_dev* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %2, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %21)
  store %struct.arcnet_local* %22, %struct.arcnet_local** %6, align 8
  %23 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %24 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, 128
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @COM20020_REG_W_CONFIG, align 4
  %29 = call i32 @arcnet_outb(i32 %26, i32 %27, i32 %28)
  %30 = call i32 @udelay(i32 5)
  %31 = load %struct.arcnet_local*, %struct.arcnet_local** %6, align 8
  %32 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @COM20020_REG_W_CONFIG, align 4
  %36 = call i32 @arcnet_outb(i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %17, %1
  ret i32 0
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arcnet_outb(i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
