; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6352_g1_vtu_loadpurge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6352_g1_vtu_loadpurge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_vtu_entry = type { i64 }

@MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6352_g1_vtu_loadpurge(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_vtu_entry* %1) #0 {
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
  br label %63

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
  br label %63

21:                                               ; preds = %13
  %22 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %23 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %59

26:                                               ; preds = %21
  %27 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %28 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %29 = call i32 @mv88e6185_g1_vtu_data_write(%struct.mv88e6xxx_chip* %27, %struct.mv88e6xxx_vtu_entry* %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %63

34:                                               ; preds = %26
  %35 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %36 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %37 = call i32 @mv88e6xxx_g1_vtu_sid_write(%struct.mv88e6xxx_chip* %35, %struct.mv88e6xxx_vtu_entry* %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %34
  %43 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %44 = load i32, i32* @MV88E6XXX_G1_VTU_OP_STU_LOAD_PURGE, align 4
  %45 = call i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip* %43, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %63

50:                                               ; preds = %42
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %52 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %53 = call i32 @mv88e6xxx_g1_vtu_fid_write(%struct.mv88e6xxx_chip* %51, %struct.mv88e6xxx_vtu_entry* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %50
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %63

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %21
  %60 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %61 = load i32, i32* @MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE, align 4
  %62 = call i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip* %60, i32 %61)
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %56, %48, %40, %32, %19, %11
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @mv88e6xxx_g1_vtu_op_wait(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_vid_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6185_g1_vtu_data_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_sid_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip*, i32) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_fid_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
