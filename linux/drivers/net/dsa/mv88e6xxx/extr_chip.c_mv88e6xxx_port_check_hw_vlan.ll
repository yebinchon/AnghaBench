; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_check_hw_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_check_hw_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { i32, %struct.TYPE_3__*, %struct.mv88e6xxx_chip* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_vtu_entry = type { i64, i32, i64* }
%struct.TYPE_4__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"p%d: hw VLAN %d already used by port %d in %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i64, i64)* @mv88e6xxx_port_check_hw_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_port_check_hw_vlan(%struct.dsa_switch* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dsa_switch*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mv88e6xxx_chip*, align 8
  %11 = alloca %struct.mv88e6xxx_vtu_entry, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dsa_switch* %0, %struct.dsa_switch** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %15 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %14, i32 0, i32 2
  %16 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %15, align 8
  store %struct.mv88e6xxx_chip* %16, %struct.mv88e6xxx_chip** %10, align 8
  %17 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i64 @dsa_is_dsa_port(%struct.dsa_switch* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %4
  store i32 0, i32* %5, align 4
  br label %145

27:                                               ; preds = %21
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %145

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  %35 = sub nsw i64 %34, 1
  %36 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 0
  store i64 %35, i64* %36, align 8
  %37 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 1
  store i32 0, i32* %37, align 8
  br label %38

38:                                               ; preds = %139, %33
  %39 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %10, align 8
  %40 = call i32 @mv88e6xxx_vtu_getnext(%struct.mv88e6xxx_chip* %39, %struct.mv88e6xxx_vtu_entry* %11)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %13, align 4
  store i32 %44, i32* %5, align 4
  br label %145

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  br label %144

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %9, align 8
  %54 = icmp sgt i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %144

56:                                               ; preds = %50
  store i32 0, i32* %12, align 4
  br label %57

57:                                               ; preds = %135, %56
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %10, align 8
  %60 = call i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip* %59)
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %62, label %138

62:                                               ; preds = %57
  %63 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %64 = load i32, i32* %12, align 4
  %65 = call i64 @dsa_is_dsa_port(%struct.dsa_switch* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @dsa_is_cpu_port(%struct.dsa_switch* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %67, %62
  br label %135

73:                                               ; preds = %67
  %74 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %75 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %73
  br label %135

84:                                               ; preds = %73
  %85 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 2
  %86 = load i64*, i64** %85, align 8
  %87 = load i32, i32* %12, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %135

94:                                               ; preds = %84
  %95 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %96 = load i32, i32* %12, align 4
  %97 = call %struct.TYPE_4__* @dsa_to_port(%struct.dsa_switch* %95, i32 %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %101 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %100, i32 0, i32 1
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %99, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %94
  br label %138

110:                                              ; preds = %94
  %111 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %112 = load i32, i32* %12, align 4
  %113 = call %struct.TYPE_4__* @dsa_to_port(%struct.dsa_switch* %111, i32 %112)
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %110
  br label %135

118:                                              ; preds = %110
  %119 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %120 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load %struct.dsa_switch*, %struct.dsa_switch** %6, align 8
  %127 = load i32, i32* %12, align 4
  %128 = call %struct.TYPE_4__* @dsa_to_port(%struct.dsa_switch* %126, i32 %127)
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @netdev_name(i64 %130)
  %132 = call i32 @dev_err(i32 %121, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %122, i64 %124, i32 %125, i32 %131)
  %133 = load i32, i32* @EOPNOTSUPP, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %145

135:                                              ; preds = %117, %93, %83, %72
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %57

138:                                              ; preds = %109, %57
  br label %139

139:                                              ; preds = %138
  %140 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = icmp slt i64 %141, %142
  br i1 %143, label %38, label %144

144:                                              ; preds = %139, %55, %49
  store i32 0, i32* %5, align 4
  br label %145

145:                                              ; preds = %144, %118, %43, %30, %26
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i64 @dsa_is_dsa_port(%struct.dsa_switch*, i32) #1

declare dso_local i64 @dsa_is_cpu_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @mv88e6xxx_vtu_getnext(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip*) #1

declare dso_local %struct.TYPE_4__* @dsa_to_port(%struct.dsa_switch*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i64, i32, i32) #1

declare dso_local i32 @netdev_name(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
