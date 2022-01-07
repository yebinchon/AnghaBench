; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_atu_new.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_atu_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mv88e6xxx_vtu_entry = type { i64, i32, i64 }

@fid_bitmap = common dso_local global i32 0, align 4
@MV88E6XXX_N_FID = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i64*)* @mv88e6xxx_atu_new to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_atu_new(%struct.mv88e6xxx_chip* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.mv88e6xxx_vtu_entry, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @fid_bitmap, align 4
  %10 = load i32, i32* @MV88E6XXX_N_FID, align 4
  %11 = call i32 @DECLARE_BITMAP(i32 %9, i32 %10)
  %12 = load i32, i32* @fid_bitmap, align 4
  %13 = load i32, i32* @MV88E6XXX_N_FID, align 4
  %14 = call i32 @bitmap_zero(i32 %12, i32 %13)
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %34, %2
  %16 = load i32, i32* %7, align 4
  %17 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %18 = call i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %15
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i64*, i64** %5, align 8
  %24 = call i32 @mv88e6xxx_port_get_fid(%struct.mv88e6xxx_chip* %21, i32 %22, i64* %23)
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %20
  %28 = load i32, i32* %8, align 4
  store i32 %28, i32* %3, align 4
  br label %92

29:                                               ; preds = %20
  %30 = load i64*, i64** %5, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @fid_bitmap, align 4
  %33 = call i32 @set_bit(i64 %31, i32 %32)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %7, align 4
  br label %15

37:                                               ; preds = %15
  %38 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %39 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %6, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %6, i32 0, i32 1
  store i32 0, i32* %44, align 8
  br label %45

45:                                               ; preds = %62, %37
  %46 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %47 = call i32 @mv88e6xxx_vtu_getnext(%struct.mv88e6xxx_chip* %46, %struct.mv88e6xxx_vtu_entry* %6)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* %8, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %6, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %52
  br label %71

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %6, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @fid_bitmap, align 4
  %61 = call i32 @set_bit(i64 %59, i32 %60)
  br label %62

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %6, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %66 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp slt i64 %64, %69
  br i1 %70, label %45, label %71

71:                                               ; preds = %62, %56
  %72 = load i32, i32* @fid_bitmap, align 4
  %73 = load i32, i32* @MV88E6XXX_N_FID, align 4
  %74 = call i64 @find_next_zero_bit(i32 %72, i32 %73, i32 1)
  %75 = load i64*, i64** %5, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %79 = call i64 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip* %78)
  %80 = icmp sge i64 %77, %79
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %71
  %85 = load i32, i32* @ENOSPC, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %3, align 4
  br label %92

87:                                               ; preds = %71
  %88 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %89 = load i64*, i64** %5, align 8
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @mv88e6xxx_g1_atu_flush(%struct.mv88e6xxx_chip* %88, i64 %90, i32 1)
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %87, %84, %50, %27
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @bitmap_zero(i32, i32) #1

declare dso_local i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_port_get_fid(%struct.mv88e6xxx_chip*, i32, i64*) #1

declare dso_local i32 @set_bit(i64, i32) #1

declare dso_local i32 @mv88e6xxx_vtu_getnext(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i64 @find_next_zero_bit(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @mv88e6xxx_num_databases(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_g1_atu_flush(%struct.mv88e6xxx_chip*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
