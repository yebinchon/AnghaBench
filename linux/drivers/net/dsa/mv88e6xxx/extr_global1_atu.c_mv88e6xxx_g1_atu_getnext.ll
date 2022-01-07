; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_getnext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_atu.c_mv88e6xxx_g1_atu_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_atu_entry = type { i32 }

@MV88E6XXX_G1_ATU_OP_GET_NEXT_DB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6xxx_g1_atu_getnext(%struct.mv88e6xxx_chip* %0, i32 %1, %struct.mv88e6xxx_atu_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mv88e6xxx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mv88e6xxx_atu_entry*, align 8
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mv88e6xxx_atu_entry* %2, %struct.mv88e6xxx_atu_entry** %7, align 8
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %10 = call i32 @mv88e6xxx_g1_atu_op_wait(%struct.mv88e6xxx_chip* %9)
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %8, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %8, align 4
  store i32 %14, i32* %4, align 4
  br label %50

15:                                               ; preds = %3
  %16 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %7, align 8
  %17 = getelementptr inbounds %struct.mv88e6xxx_atu_entry, %struct.mv88e6xxx_atu_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %22 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %7, align 8
  %23 = call i32 @mv88e6xxx_g1_atu_mac_write(%struct.mv88e6xxx_chip* %21, %struct.mv88e6xxx_atu_entry* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %50

28:                                               ; preds = %20
  br label %29

29:                                               ; preds = %28, %15
  %30 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @MV88E6XXX_G1_ATU_OP_GET_NEXT_DB, align 4
  %33 = call i32 @mv88e6xxx_g1_atu_op(%struct.mv88e6xxx_chip* %30, i32 %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %50

38:                                               ; preds = %29
  %39 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %40 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %7, align 8
  %41 = call i32 @mv88e6xxx_g1_atu_data_read(%struct.mv88e6xxx_chip* %39, %struct.mv88e6xxx_atu_entry* %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  br label %50

46:                                               ; preds = %38
  %47 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %5, align 8
  %48 = load %struct.mv88e6xxx_atu_entry*, %struct.mv88e6xxx_atu_entry** %7, align 8
  %49 = call i32 @mv88e6xxx_g1_atu_mac_read(%struct.mv88e6xxx_chip* %47, %struct.mv88e6xxx_atu_entry* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %46, %44, %36, %26, %13
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @mv88e6xxx_g1_atu_op_wait(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_atu_mac_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_atu_entry*) #1

declare dso_local i32 @mv88e6xxx_g1_atu_op(%struct.mv88e6xxx_chip*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_g1_atu_data_read(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_atu_entry*) #1

declare dso_local i32 @mv88e6xxx_g1_atu_mac_read(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_atu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
