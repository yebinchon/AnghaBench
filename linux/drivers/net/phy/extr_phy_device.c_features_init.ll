; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_features_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_features_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@phy_basic_ports_array = common dso_local global i32 0, align 4
@phy_basic_features = common dso_local global i32 0, align 4
@phy_10_100_features_array = common dso_local global i32 0, align 4
@phy_basic_t1_features_array = common dso_local global i32 0, align 4
@phy_basic_t1_features = common dso_local global i32 0, align 4
@phy_gbit_features = common dso_local global i32 0, align 4
@phy_gbit_features_array = common dso_local global i32 0, align 4
@phy_gbit_fibre_features = common dso_local global i32 0, align 4
@phy_fibre_port_array = common dso_local global i32 0, align 4
@phy_all_ports_features_array = common dso_local global i32 0, align 4
@phy_gbit_all_ports_features = common dso_local global i32 0, align 4
@phy_10gbit_features = common dso_local global i32 0, align 4
@phy_10gbit_features_array = common dso_local global i32 0, align 4
@phy_10gbit_full_features = common dso_local global i32 0, align 4
@phy_10gbit_full_features_array = common dso_local global i32 0, align 4
@phy_10gbit_fec_features_array = common dso_local global i32 0, align 4
@phy_10gbit_fec_features = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @features_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @features_init() #0 {
  %1 = load i32, i32* @phy_basic_ports_array, align 4
  %2 = load i32, i32* @phy_basic_ports_array, align 4
  %3 = call i32 @ARRAY_SIZE(i32 %2)
  %4 = load i32, i32* @phy_basic_features, align 4
  %5 = call i32 @linkmode_set_bit_array(i32 %1, i32 %3, i32 %4)
  %6 = load i32, i32* @phy_10_100_features_array, align 4
  %7 = load i32, i32* @phy_10_100_features_array, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load i32, i32* @phy_basic_features, align 4
  %10 = call i32 @linkmode_set_bit_array(i32 %6, i32 %8, i32 %9)
  %11 = load i32, i32* @phy_basic_t1_features_array, align 4
  %12 = load i32, i32* @phy_basic_t1_features_array, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = load i32, i32* @phy_basic_t1_features, align 4
  %15 = call i32 @linkmode_set_bit_array(i32 %11, i32 %13, i32 %14)
  %16 = load i32, i32* @phy_basic_ports_array, align 4
  %17 = load i32, i32* @phy_basic_ports_array, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = load i32, i32* @phy_gbit_features, align 4
  %20 = call i32 @linkmode_set_bit_array(i32 %16, i32 %18, i32 %19)
  %21 = load i32, i32* @phy_10_100_features_array, align 4
  %22 = load i32, i32* @phy_10_100_features_array, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load i32, i32* @phy_gbit_features, align 4
  %25 = call i32 @linkmode_set_bit_array(i32 %21, i32 %23, i32 %24)
  %26 = load i32, i32* @phy_gbit_features_array, align 4
  %27 = load i32, i32* @phy_gbit_features_array, align 4
  %28 = call i32 @ARRAY_SIZE(i32 %27)
  %29 = load i32, i32* @phy_gbit_features, align 4
  %30 = call i32 @linkmode_set_bit_array(i32 %26, i32 %28, i32 %29)
  %31 = load i32, i32* @phy_basic_ports_array, align 4
  %32 = load i32, i32* @phy_basic_ports_array, align 4
  %33 = call i32 @ARRAY_SIZE(i32 %32)
  %34 = load i32, i32* @phy_gbit_fibre_features, align 4
  %35 = call i32 @linkmode_set_bit_array(i32 %31, i32 %33, i32 %34)
  %36 = load i32, i32* @phy_10_100_features_array, align 4
  %37 = load i32, i32* @phy_10_100_features_array, align 4
  %38 = call i32 @ARRAY_SIZE(i32 %37)
  %39 = load i32, i32* @phy_gbit_fibre_features, align 4
  %40 = call i32 @linkmode_set_bit_array(i32 %36, i32 %38, i32 %39)
  %41 = load i32, i32* @phy_gbit_features_array, align 4
  %42 = load i32, i32* @phy_gbit_features_array, align 4
  %43 = call i32 @ARRAY_SIZE(i32 %42)
  %44 = load i32, i32* @phy_gbit_fibre_features, align 4
  %45 = call i32 @linkmode_set_bit_array(i32 %41, i32 %43, i32 %44)
  %46 = load i32, i32* @phy_fibre_port_array, align 4
  %47 = load i32, i32* @phy_fibre_port_array, align 4
  %48 = call i32 @ARRAY_SIZE(i32 %47)
  %49 = load i32, i32* @phy_gbit_fibre_features, align 4
  %50 = call i32 @linkmode_set_bit_array(i32 %46, i32 %48, i32 %49)
  %51 = load i32, i32* @phy_all_ports_features_array, align 4
  %52 = load i32, i32* @phy_all_ports_features_array, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  %54 = load i32, i32* @phy_gbit_all_ports_features, align 4
  %55 = call i32 @linkmode_set_bit_array(i32 %51, i32 %53, i32 %54)
  %56 = load i32, i32* @phy_10_100_features_array, align 4
  %57 = load i32, i32* @phy_10_100_features_array, align 4
  %58 = call i32 @ARRAY_SIZE(i32 %57)
  %59 = load i32, i32* @phy_gbit_all_ports_features, align 4
  %60 = call i32 @linkmode_set_bit_array(i32 %56, i32 %58, i32 %59)
  %61 = load i32, i32* @phy_gbit_features_array, align 4
  %62 = load i32, i32* @phy_gbit_features_array, align 4
  %63 = call i32 @ARRAY_SIZE(i32 %62)
  %64 = load i32, i32* @phy_gbit_all_ports_features, align 4
  %65 = call i32 @linkmode_set_bit_array(i32 %61, i32 %63, i32 %64)
  %66 = load i32, i32* @phy_all_ports_features_array, align 4
  %67 = load i32, i32* @phy_all_ports_features_array, align 4
  %68 = call i32 @ARRAY_SIZE(i32 %67)
  %69 = load i32, i32* @phy_10gbit_features, align 4
  %70 = call i32 @linkmode_set_bit_array(i32 %66, i32 %68, i32 %69)
  %71 = load i32, i32* @phy_10_100_features_array, align 4
  %72 = load i32, i32* @phy_10_100_features_array, align 4
  %73 = call i32 @ARRAY_SIZE(i32 %72)
  %74 = load i32, i32* @phy_10gbit_features, align 4
  %75 = call i32 @linkmode_set_bit_array(i32 %71, i32 %73, i32 %74)
  %76 = load i32, i32* @phy_gbit_features_array, align 4
  %77 = load i32, i32* @phy_gbit_features_array, align 4
  %78 = call i32 @ARRAY_SIZE(i32 %77)
  %79 = load i32, i32* @phy_10gbit_features, align 4
  %80 = call i32 @linkmode_set_bit_array(i32 %76, i32 %78, i32 %79)
  %81 = load i32, i32* @phy_10gbit_features_array, align 4
  %82 = load i32, i32* @phy_10gbit_features_array, align 4
  %83 = call i32 @ARRAY_SIZE(i32 %82)
  %84 = load i32, i32* @phy_10gbit_features, align 4
  %85 = call i32 @linkmode_set_bit_array(i32 %81, i32 %83, i32 %84)
  %86 = load i32, i32* @phy_all_ports_features_array, align 4
  %87 = load i32, i32* @phy_all_ports_features_array, align 4
  %88 = call i32 @ARRAY_SIZE(i32 %87)
  %89 = load i32, i32* @phy_10gbit_full_features, align 4
  %90 = call i32 @linkmode_set_bit_array(i32 %86, i32 %88, i32 %89)
  %91 = load i32, i32* @phy_10gbit_full_features_array, align 4
  %92 = load i32, i32* @phy_10gbit_full_features_array, align 4
  %93 = call i32 @ARRAY_SIZE(i32 %92)
  %94 = load i32, i32* @phy_10gbit_full_features, align 4
  %95 = call i32 @linkmode_set_bit_array(i32 %91, i32 %93, i32 %94)
  %96 = load i32, i32* @phy_10gbit_fec_features_array, align 4
  %97 = load i32, i32* @phy_10gbit_fec_features_array, align 4
  %98 = call i32 @ARRAY_SIZE(i32 %97)
  %99 = load i32, i32* @phy_10gbit_fec_features, align 4
  %100 = call i32 @linkmode_set_bit_array(i32 %96, i32 %98, i32 %99)
  ret void
}

declare dso_local i32 @linkmode_set_bit_array(i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
