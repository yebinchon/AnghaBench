; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_data_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_data_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_atu_entry = type { i32, i32, i32 }

@MV88E6XXX_G1_ATU_DATA = common dso_local global i32 0, align 4
@MV88E6XXX_G1_ATU_DATA_TRUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_atu_entry*)* @mv88e6xxx_g1_atu_data_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g1_atu_data_read(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_atu_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.mv88e6xxx_atu_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.mv88e6xxx_atu_entry* %1, %struct.mv88e6xxx_atu_entry** %5, align 8
  %8 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %9 = load i32, i32* @MV88E6XXX_G1_ATU_DATA, align 4
  %10 = call i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip* %8, i32 %9, i32* %6)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 15
  %18 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %5, align 8
  %19 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %5, align 8
  %21 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %41

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @MV88E6XXX_G1_ATU_DATA_TRUNK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %5, align 8
  %33 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = ashr i32 %34, 4
  %36 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %37 = call i32 @mv88e6xxx_port_mask(%struct.mv88e6xxx_chip* %36)
  %38 = and i32 %35, %37
  %39 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %5, align 8
  %40 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %24, %15
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %13
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mv88e6xxx_g1_read(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_mask(%struct.mv88e6xxx_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
