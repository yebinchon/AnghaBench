; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_port_mdb_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz_common.c_ksz_port_mdb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ksz_device*, i32, %struct.alu_struct*)*, i32 (%struct.ksz_device*, i32, %struct.alu_struct*)* }
%struct.alu_struct = type { i64, i32, i32, i32, i32 }
%struct.switchdev_obj_port_mdb = type { i64, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ksz_port_mdb_add(%struct.dsa_switch* %0, i32 %1, %struct.switchdev_obj_port_mdb* %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switchdev_obj_port_mdb*, align 8
  %7 = alloca %struct.ksz_device*, align 8
  %8 = alloca %struct.alu_struct, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switchdev_obj_port_mdb* %2, %struct.switchdev_obj_port_mdb** %6, align 8
  %11 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %12 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %11, i32 0, i32 0
  %13 = load %struct.ksz_device*, %struct.ksz_device** %12, align 8
  store %struct.ksz_device* %13, %struct.ksz_device** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %8, i32 0, i32 3
  store i32 0, i32* %14, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %57, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %18 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %60

21:                                               ; preds = %15
  %22 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %23 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32 (%struct.ksz_device*, i32, %struct.alu_struct*)*, i32 (%struct.ksz_device*, i32, %struct.alu_struct*)** %25, align 8
  %27 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 %26(%struct.ksz_device* %27, i32 %28, %struct.alu_struct* %8)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %49, label %31

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %8, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %35 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @ETH_ALEN, align 4
  %38 = call i32 @memcmp(i32 %33, i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %31
  %41 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %8, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %44 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %60

48:                                               ; preds = %40, %31
  br label %56

49:                                               ; preds = %21
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %48
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %15

60:                                               ; preds = %47, %15
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %63 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %61, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br label %113

70:                                               ; preds = %66, %60
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %73 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %71, %74
  br i1 %75, label %76, label %88

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = call i32 @memset(%struct.alu_struct* %8, i32 0, i32 24)
  %80 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %8, i32 0, i32 4
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %83 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ETH_ALEN, align 4
  %86 = call i32 @memcpy(i32 %81, i32 %84, i32 %85)
  %87 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %8, i32 0, i32 1
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %76, %70
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @BIT(i32 %89)
  %91 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %8, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %90
  store i32 %93, i32* %91, align 8
  %94 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %95 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %88
  %99 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %8, i32 0, i32 2
  store i32 1, i32* %99, align 4
  %100 = load %struct.switchdev_obj_port_mdb*, %struct.switchdev_obj_port_mdb** %6, align 8
  %101 = getelementptr inbounds %struct.switchdev_obj_port_mdb, %struct.switchdev_obj_port_mdb* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.alu_struct, %struct.alu_struct* %8, i32 0, i32 0
  store i64 %102, i64* %103, align 8
  br label %104

104:                                              ; preds = %98, %88
  %105 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %106 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %105, i32 0, i32 1
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32 (%struct.ksz_device*, i32, %struct.alu_struct*)*, i32 (%struct.ksz_device*, i32, %struct.alu_struct*)** %108, align 8
  %110 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %111 = load i32, i32* %9, align 4
  %112 = call i32 %109(%struct.ksz_device* %110, i32 %111, %struct.alu_struct* %8)
  br label %113

113:                                              ; preds = %104, %69
  ret void
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.alu_struct*, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
