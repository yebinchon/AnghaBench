; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6390_g1_vtu_getnext.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6390_g1_vtu_getnext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_vtu_entry = type { i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6390_g1_vtu_getnext(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_vtu_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.mv88e6xxx_vtu_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.mv88e6xxx_vtu_entry* %1, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %7 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %8 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %9 = call i32 @mv88e6xxx_g1_vtu_getnext(%struct.mv88e6xxx_chip* %7, %struct.mv88e6xxx_vtu_entry* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %16 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %56

19:                                               ; preds = %14
  %20 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %21 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %22 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @mv88e6390_g1_vtu_data_read(%struct.mv88e6xxx_chip* %20, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %57

29:                                               ; preds = %19
  %30 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %31 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %32 = call i32 @mv88e6xxx_g1_vtu_stu_get(%struct.mv88e6xxx_chip* %30, %struct.mv88e6xxx_vtu_entry* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %57

37:                                               ; preds = %29
  %38 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %39 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %40 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mv88e6390_g1_vtu_data_read(%struct.mv88e6xxx_chip* %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %57

47:                                               ; preds = %37
  %48 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %49 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %50 = call i32 @mv88e6xxx_g1_vtu_fid_read(%struct.mv88e6xxx_chip* %48, %struct.mv88e6xxx_vtu_entry* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %57

55:                                               ; preds = %47
  br label %56

56:                                               ; preds = %55, %14
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %53, %45, %35, %27, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @mv88e6xxx_g1_vtu_getnext(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6390_g1_vtu_data_read(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_stu_get(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_fid_read(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
