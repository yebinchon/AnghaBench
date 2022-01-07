; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6185_g1_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1.c_mv88e6185_g1_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6XXX_G1_CTL1 = common dso_local global i32 0, align 4
@MV88E6XXX_G1_CTL1_SW_RESET = common dso_local global i32 0, align 4
@MV88E6XXX_G1_CTL1_PPU_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6185_g1_reset(%struct.mv88e6xxx_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  %6 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %7 = load i32, i32* @MV88E6XXX_G1_CTL1, align 4
  %8 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %6, i32 %7, i32* %4)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %38

13:                                               ; preds = %1
  %14 = load i32, i32* @MV88E6XXX_G1_CTL1_SW_RESET, align 4
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @MV88E6XXX_G1_CTL1_PPU_ENABLE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %21 = load i32, i32* @MV88E6XXX_G1_CTL1, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %20, i32 %21, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %38

28:                                               ; preds = %13
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %30 = call i32 @mv88e6xxx_g1_wait_init_ready(%struct.mv88e6xxx_chip* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %37 = call i32 @mv88e6185_g1_wait_ppu_polling(%struct.mv88e6xxx_chip* %36)
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %35, %33, %26, %11
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g1_wait_init_ready(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6185_g1_wait_ppu_polling(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
