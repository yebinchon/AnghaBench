; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_get_xmii.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_get_xmii.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@NEW_XMII = common dso_local global i32 0, align 4
@PORT_MII_SEL_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_device*, i32)* @ksz9477_get_xmii to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_get_xmii(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %7 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @NEW_XMII, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @PORT_MII_SEL_M, align 4
  %15 = and i32 %13, %14
  switch i32 %15, label %19 [
    i32 131, label %16
    i32 129, label %17
    i32 133, label %18
  ]

16:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %20

17:                                               ; preds = %12
  store i32 1, i32* %5, align 4
  br label %20

18:                                               ; preds = %12
  store i32 2, i32* %5, align 4
  br label %20

19:                                               ; preds = %12
  store i32 3, i32* %5, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PORT_MII_SEL_M, align 4
  %24 = and i32 %22, %23
  switch i32 %24, label %28 [
    i32 130, label %25
    i32 128, label %26
    i32 132, label %27
  ]

25:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %29

26:                                               ; preds = %21
  store i32 1, i32* %5, align 4
  br label %29

27:                                               ; preds = %21
  store i32 2, i32* %5, align 4
  br label %29

28:                                               ; preds = %21
  store i32 3, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %27, %26, %25
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
