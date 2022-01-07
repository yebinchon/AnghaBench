; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_scratch.c_mv88e6xxx_g2_scratch_gpio_set_smi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global2_scratch.c_mv88e6xxx_g2_scratch_gpio_set_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }

@MV88E6352_G2_SCRATCH_MISC_CFG = common dso_local global i32 0, align 4
@MV88E6352_G2_SCRATCH_CONFIG_DATA1 = common dso_local global i32 0, align 4
@MV88E6352_G2_SCRATCH_CONFIG_DATA2 = common dso_local global i32 0, align 4
@MV88E6352_G2_SCRATCH_CONFIG_DATA2_P0_MODE_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@MV88E6352_G2_SCRATCH_CONFIG_DATA1_NO_CPU = common dso_local global i32 0, align 4
@MV88E6352_G2_SCRATCH_MISC_CFG_NORMALSMI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g2_scratch_gpio_set_smi(%struct.mv88e6xxx_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MV88E6352_G2_SCRATCH_MISC_CFG, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @MV88E6352_G2_SCRATCH_CONFIG_DATA1, align 4
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @MV88E6352_G2_SCRATCH_CONFIG_DATA2, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @mv88e6xxx_g2_scratch_read(%struct.mv88e6xxx_chip* %16, i32 %17, i32* %12)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %3, align 4
  br label %83

23:                                               ; preds = %2
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @MV88E6352_G2_SCRATCH_CONFIG_DATA2_P0_MODE_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %29, %23
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %83

35:                                               ; preds = %29
  %36 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @mv88e6xxx_g2_scratch_read(%struct.mv88e6xxx_chip* %36, i32 %37, i32* %12)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %3, align 4
  br label %83

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MV88E6352_G2_SCRATCH_CONFIG_DATA1_NO_CPU, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @mv88e6xxx_g2_scratch_read(%struct.mv88e6xxx_chip* %51, i32 %52, i32* %12)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %3, align 4
  br label %83

58:                                               ; preds = %43
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %61, %58
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @MV88E6352_G2_SCRATCH_MISC_CFG_NORMALSMI, align 4
  %71 = load i32, i32* %12, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %12, align 4
  br label %78

73:                                               ; preds = %66
  %74 = load i32, i32* @MV88E6352_G2_SCRATCH_MISC_CFG_NORMALSMI, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %12, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %12, align 4
  br label %78

78:                                               ; preds = %73, %69
  %79 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @mv88e6xxx_g2_scratch_write(%struct.mv88e6xxx_chip* %79, i32 %80, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %78, %56, %41, %32, %21
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @mv88e6xxx_g2_scratch_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_g2_scratch_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
