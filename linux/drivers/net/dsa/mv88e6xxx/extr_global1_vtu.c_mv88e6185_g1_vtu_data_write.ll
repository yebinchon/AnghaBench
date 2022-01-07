; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6185_g1_vtu_data_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_global1_vtu.c_mv88e6185_g1_vtu_data_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_vtu_entry = type { i32*, i32* }

@MV88E6XXX_G1_VTU_DATA1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*)* @mv88e6185_g1_vtu_data_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6185_g1_vtu_data_write(%struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_vtu_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv88e6xxx_chip*, align 8
  %5 = alloca %struct.mv88e6xxx_vtu_entry*, align 8
  %6 = alloca [3 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %4, align 8
  store %struct.mv88e6xxx_vtu_entry* %1, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %12 = bitcast [3 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 12, i1 false)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %56, %2
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %16 = call i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %59

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = srem i32 %19, 4
  %21 = mul nsw i32 %20, 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = add i32 %22, 2
  store i32 %23, i32* %9, align 4
  %24 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %25 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 3
  %32 = load i32, i32* %8, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* %7, align 4
  %35 = sdiv i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %38, %33
  store i32 %39, i32* %37, align 4
  %40 = load %struct.mv88e6xxx_vtu_entry*, %struct.mv88e6xxx_vtu_entry** %5, align 8
  %41 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 3
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %47, %48
  %50 = load i32, i32* %7, align 4
  %51 = sdiv i32 %50, 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %49
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %18
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %7, align 4
  br label %13

59:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %80, %59
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 3
  br i1 %62, label %63, label %83

63:                                               ; preds = %60
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %10, align 4
  %68 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %4, align 8
  %69 = load i64, i64* @MV88E6XXX_G1_VTU_DATA1, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip* %68, i64 %72, i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %63
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %3, align 4
  br label %84

79:                                               ; preds = %63
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %60

83:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %77
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip*) #2

declare dso_local i32 @mv88e6xxx_g1_write(%struct.mv88e6xxx_chip*, i64, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
