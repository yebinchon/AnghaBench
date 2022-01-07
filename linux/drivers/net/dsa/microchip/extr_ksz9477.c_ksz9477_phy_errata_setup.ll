; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_phy_errata_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_phy_errata_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_device = type { i32 }

@GBIT_SUPPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ksz_device*, i32)* @ksz9477_phy_errata_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_phy_errata_setup(%struct.ksz_device* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ksz_device* %0, %struct.ksz_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %5, i32 %6, i32 1, i32 111, i32 56587)
  %8 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %8, i32 %9, i32 1, i32 143, i32 24626)
  %11 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %11, i32 %12, i32 1, i32 157, i32 9356)
  %14 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %14, i32 %15, i32 1, i32 117, i32 96)
  %17 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %17, i32 %18, i32 1, i32 211, i32 30583)
  %20 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %20, i32 %21, i32 28, i32 6, i32 12296)
  %23 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %23, i32 %24, i32 28, i32 8, i32 8193)
  %26 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %26, i32 %27, i32 28, i32 4, i32 208)
  %29 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %30 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @GBIT_SUPPORT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %2
  %36 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %36, i32 %37, i32 7, i32 60, i32 0)
  br label %39

39:                                               ; preds = %35, %2
  %40 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %40, i32 %41, i32 28, i32 19, i32 28415)
  %43 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %43, i32 %44, i32 28, i32 20, i32 59135)
  %46 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %46, i32 %47, i32 28, i32 21, i32 28415)
  %49 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %49, i32 %50, i32 28, i32 22, i32 59135)
  %52 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %52, i32 %53, i32 28, i32 23, i32 255)
  %55 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %55, i32 %56, i32 28, i32 24, i32 17407)
  %58 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %58, i32 %59, i32 28, i32 25, i32 50175)
  %61 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %61, i32 %62, i32 28, i32 26, i32 28671)
  %64 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %64, i32 %65, i32 28, i32 27, i32 2047)
  %67 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %67, i32 %68, i32 28, i32 28, i32 4095)
  %70 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %70, i32 %71, i32 28, i32 29, i32 59391)
  %73 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %73, i32 %74, i32 28, i32 30, i32 61439)
  %76 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ksz9477_port_mmd_write(%struct.ksz_device* %76, i32 %77, i32 28, i32 32, i32 61166)
  ret void
}

declare dso_local i32 @ksz9477_port_mmd_write(%struct.ksz_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
