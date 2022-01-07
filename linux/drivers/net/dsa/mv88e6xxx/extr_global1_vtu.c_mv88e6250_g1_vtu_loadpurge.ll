; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6250_g1_vtu_loadpurge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6250_g1_vtu_loadpurge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_vtu_entry = type { i32, i64 }

@MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv88e6250_g1_vtu_loadpurge(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_vtu_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.mv88e6xxx_vtu_entry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.mv88e6xxx_vtu_entry* %1, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %8 = load i32, i32* @MV88E6XXX_G1_VTU_OP_VTU_LOAD_PURGE, align 4
  store i32 %8, i32* %6, align 4
  %9 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %10 = call i32 @mv88e6xxx_g1_vtu_op_wait(%struct.mv88e6xxx_chip* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %17 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %18 = call i32 @mv88e6xxx_g1_vtu_vid_write(%struct.mv88e6xxx_chip* %16, %struct.mv88e6xxx_vtu_entry* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %54

23:                                               ; preds = %15
  %24 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %25 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  %29 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %30 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %31 = call i32 @mv88e6185_g1_vtu_data_write(%struct.mv88e6xxx_chip* %29, %struct.mv88e6xxx_vtu_entry* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %54

36:                                               ; preds = %28
  %37 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %38 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 15
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  %43 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %44 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %45, 48
  %47 = shl i32 %46, 4
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %36, %23
  %51 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip* %51, i32 %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %34, %21, %13
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @mv88e6xxx_g1_vtu_op_wait(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_vid_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6185_g1_vtu_data_write(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6xxx_g1_vtu_op(%struct.mv88e6xxx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
