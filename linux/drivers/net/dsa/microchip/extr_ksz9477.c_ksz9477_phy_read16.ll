; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_phy_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_phy_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { i32, %struct.ksz_port* }
%struct.ksz_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SPEED_1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32)* @ksz9477_phy_read16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_phy_read16(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ksz_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ksz_port*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %11 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %10, i32 0, i32 0
  %12 = load %struct.ksz_device*, %struct.ksz_device** %11, align 8
  store %struct.ksz_device* %12, %struct.ksz_device** %7, align 8
  store i32 65535, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %15 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp sge i32 %13, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %3
  %19 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %20 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %19, i32 0, i32 1
  %21 = load %struct.ksz_port*, %struct.ksz_port** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %21, i64 %23
  store %struct.ksz_port* %24, %struct.ksz_port** %9, align 8
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %43 [
    i32 134, label %26
    i32 133, label %27
    i32 130, label %28
    i32 129, label %29
    i32 135, label %30
    i32 131, label %31
    i32 132, label %32
    i32 128, label %33
  ]

26:                                               ; preds = %18
  store i32 4416, i32* %8, align 4
  br label %43

27:                                               ; preds = %18
  store i32 31085, i32* %8, align 4
  br label %43

28:                                               ; preds = %18
  store i32 34, i32* %8, align 4
  br label %43

29:                                               ; preds = %18
  store i32 5681, i32* %8, align 4
  br label %43

30:                                               ; preds = %18
  store i32 1505, i32* %8, align 4
  br label %43

31:                                               ; preds = %18
  store i32 50657, i32* %8, align 4
  br label %43

32:                                               ; preds = %18
  store i32 1792, i32* %8, align 4
  br label %43

33:                                               ; preds = %18
  %34 = load %struct.ksz_port*, %struct.ksz_port** %9, align 8
  %35 = getelementptr inbounds %struct.ksz_port, %struct.ksz_port* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SPEED_1000, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 14336, i32* %8, align 4
  br label %42

41:                                               ; preds = %33
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %41, %40
  br label %43

43:                                               ; preds = %18, %42, %32, %31, %30, %29, %28, %27, %26
  br label %51

44:                                               ; preds = %3
  %45 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = shl i32 %47, 1
  %49 = add nsw i32 256, %48
  %50 = call i32 @ksz_pread16(%struct.ksz_device* %45, i32 %46, i32 %49, i32* %8)
  br label %51

51:                                               ; preds = %44, %43
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @ksz_pread16(%struct.ksz_device*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
