; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6390_g1_vtu_loadpurge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6390_g1_vtu_loadpurge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_vtu_entry = type { i32, i32, i64 }

@MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6390_g1_vtu_loadpurge(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_vtu_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.mv88e6xxx_vtu_entry*, align 8
  %6 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.mv88e6xxx_vtu_entry* %1, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %7 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %8 = call i32 @mv88e6xxx_g1_vtu_op_wait(%struct.mv88e6xxx_chip* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %3, align 4
  br label %75

13:                                               ; preds = %2
  %14 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %15 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %16 = call i32 @mv88e6xxx_g1_vtu_vid_write(%struct.mv88e6xxx_chip* %14, %struct.mv88e6xxx_vtu_entry* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %13
  %22 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %23 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %71

26:                                               ; preds = %21
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %28 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %29 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mv88e6390_g1_vtu_data_write(%struct.mv88e6xxx_chip* %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  store i32 %35, i32* %3, align 4
  br label %75

36:                                               ; preds = %26
  %37 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %38 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %39 = call i32 @mv88e6xxx_g1_vtu_sid_write(%struct.mv88e6xxx_chip* %37, %struct.mv88e6xxx_vtu_entry* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %75

44:                                               ; preds = %36
  %45 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %46 = load i32, i32* @MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE, align 4
  %47 = call i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip* %45, i32 %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %75

52:                                               ; preds = %44
  %53 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %54 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %55 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mv88e6390_g1_vtu_data_write(%struct.mv88e6xxx_chip* %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %75

62:                                               ; preds = %52
  %63 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %64 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %65 = call i32 @mv88e6xxx_g1_vtu_fid_write(%struct.mv88e6xxx_chip* %63, %struct.mv88e6xxx_vtu_entry* %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %75

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %21
  %72 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %73 = load i32, i32* @MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE, align 4
  %74 = call i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip* %72, i32 %73)
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %68, %60, %50, %42, %34, %19, %11
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @mv88e6xxx_g1_vtu_op_wait(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_vid_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6390_g1_vtu_data_write(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_sid_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_fid_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
