; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_trunk_mapping_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2.c_mv88e6xxx_g2_trunk_mapping_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_G2_TRUNK_MAPPING = common dso_local global i32 0, align 4
@MV88E6XXX_G2_TRUNK_MAPPING_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32)* @mv88e6xxx_g2_trunk_mapping_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g2_trunk_mapping_write(%struct.mv88e6xxx_chip* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %10 = call i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip* %9)
  %11 = call i32 @BIT(i32 %10)
  %12 = sub nsw i32 %11, 1
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 %13, 11
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = and i32 %15, %16
  %18 = or i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %20 = load i32, i32* @MV88E6XXX_G2_TRUNK_MAPPING, align 4
  %21 = load i32, i32* @MV88E6XXX_G2_TRUNK_MAPPING_UPDATE, align 4
  %22 = load i32, i32* %8, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip* %19, i32 %20, i32 %23)
  ret i32 %24
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g2_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
