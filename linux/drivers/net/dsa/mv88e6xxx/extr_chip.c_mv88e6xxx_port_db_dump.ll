; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_db_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_db_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mv88e6xxx_vtu_entry = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i32*, i8*)* @mv88e6xxx_port_db_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_port_db_dump(%struct.mv88e6xxx_chip* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv88e6xxx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.mv88e6xxx_vtu_entry, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @mv88e6xxx_port_get_fid(%struct.mv88e6xxx_chip* %13, i32 %14, i32* %11)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %12, align 4
  store i32 %19, i32* %5, align 4
  br label %77

20:                                               ; preds = %4
  %21 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @mv88e6xxx_port_db_dump_fid(%struct.mv88e6xxx_chip* %21, i32 %22, i64 0, i32 %23, i32* %24, i8* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %77

31:                                               ; preds = %20
  %32 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %33 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %10, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %10, i32 0, i32 1
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %66, %31
  %40 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %41 = call i32 @mv88e6xxx_vtu_getnext(%struct.mv88e6xxx_chip* %40, %struct.mv88e6xxx_vtu_entry* %10)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %77

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %10, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %75

51:                                               ; preds = %46
  %52 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %53 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %10, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %10, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = load i32*, i32** %8, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = call i32 @mv88e6xxx_port_db_dump_fid(%struct.mv88e6xxx_chip* %52, i32 %54, i64 %56, i32 %57, i32* %58, i8* %59)
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %51
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %5, align 4
  br label %77

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65
  %67 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %10, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %70 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp slt i64 %68, %73
  br i1 %74, label %39, label %75

75:                                               ; preds = %66, %50
  %76 = load i32, i32* %12, align 4
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %75, %63, %44, %29, %18
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @mv88e6xxx_port_get_fid(%struct.mv88e6xxx_chip*, i32, i32*) #1

declare dso_local i32 @mv88e6xxx_port_db_dump_fid(%struct.mv88e6xxx_chip*, i32, i64, i32, i32*, i8*) #1

declare dso_local i32 @mv88e6xxx_vtu_getnext(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
