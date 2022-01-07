; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_sni_82596.c_mpu_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/i825xx/extr_sni_82596.c_mpu_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i596_private = type { i32, i32 }

@OPT_MPU_16BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i64)* @mpu_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpu_port(%struct.net_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.i596_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.i596_private* @netdev_priv(%struct.net_device* %9)
  store %struct.i596_private* %10, %struct.i596_private** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i64, i64* %6, align 8
  %13 = trunc i64 %12 to i32
  %14 = or i32 %11, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.i596_private*, %struct.i596_private** %7, align 8
  %16 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @OPT_MPU_16BIT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, 65535
  %24 = load %struct.i596_private*, %struct.i596_private** %7, align 8
  %25 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writew(i32 %23, i32 %26)
  %28 = call i32 (...) @wmb()
  %29 = call i32 @udelay(i32 1)
  %30 = load i32, i32* %8, align 4
  %31 = ashr i32 %30, 16
  %32 = load %struct.i596_private*, %struct.i596_private** %7, align 8
  %33 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @writew(i32 %31, i32 %34)
  br label %49

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.i596_private*, %struct.i596_private** %7, align 8
  %39 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @writel(i32 %37, i32 %40)
  %42 = call i32 (...) @wmb()
  %43 = call i32 @udelay(i32 1)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.i596_private*, %struct.i596_private** %7, align 8
  %46 = getelementptr inbounds %struct.i596_private, %struct.i596_private* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @writel(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %36, %21
  ret void
}

declare dso_local %struct.i596_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
