; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_smi_phy_read_c45.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_smi_phy_read_c45.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32, i32, i32*)* @mv88e6xxx_g2_smi_phy_read_c45 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g2_smi_phy_read_c45(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv88e6xxx_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %15 = load i32, i32* %10, align 4
  %16 = ashr i32 %15, 16
  %17 = and i32 %16, 31
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %18, 65535
  store i32 %19, i32* %13, align 4
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* %13, align 4
  %25 = call i32 @mv88e6xxx_g2_smi_phy_write_addr_c45(%struct.mv88e6xxx_chip* %20, i32 %21, i32 %22, i32 %23, i32 %24)
  store i32 %25, i32* %14, align 4
  %26 = load i32, i32* %14, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %6, align 4
  br label %37

30:                                               ; preds = %5
  %31 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = call i32 @mv88e6xxx_g2_smi_phy_read_data_c45(%struct.mv88e6xxx_chip* %31, i32 %32, i32 %33, i32 %34, i32* %35)
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %30, %28
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @mv88e6xxx_g2_smi_phy_write_addr_c45(%struct.mv88e6xxx_chip*, i32, i32, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g2_smi_phy_read_data_c45(%struct.mv88e6xxx_chip*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
