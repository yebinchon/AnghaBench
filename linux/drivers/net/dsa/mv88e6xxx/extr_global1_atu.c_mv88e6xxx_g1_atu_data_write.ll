; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_data_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_atu_entry = type { i32, i32, i64 }

@MV88E6XXX_G1_ATU_DATA_TRUNK = common dso_local global i32 0, align 4
@MV88E6XXX_G1_ATU_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_atu_entry*)* @mv88e6xxx_g1_atu_data_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_g1_atu_data_write(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_atu_entry* %1) #0 {
  %3 = alloca %struct.mv88e6xxx_chip*, align 8
  %4 = alloca %struct.mv88e6xxx_atu_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %3, align 8
  store %struct.mv88e6xxx_atu_entry* %1, %struct.mv88e6xxx_atu_entry** %4, align 8
  %6 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %4, align 8
  %7 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, 15
  store i32 %9, i32* %5, align 4
  %10 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %4, align 8
  %11 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %4, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* @MV88E6XXX_G1_ATU_DATA_TRUNK, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %4, align 8
  %25 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %28 = call i32 @mv88e6xxx_port_mask(%struct.mv88e6xxx_chip* %27)
  %29 = and i32 %26, %28
  %30 = shl i32 %29, 4
  %31 = load i32, i32* %5, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %23, %2
  %34 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %3, align 8
  %35 = load i32, i32* @MV88E6XXX_G1_ATU_DATA, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %34, i32 %35, i32 %36)
  ret i32 %37
}

declare dso_local i32 @mv88e6xxx_port_mask(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
