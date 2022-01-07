; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_vlan_join.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/mv88e6xxx/extr_chip.c_mv88e6xxx_port_vlan_join.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv88e6xxx_chip = type { i32 }
%struct.mv88e6xxx_vtu_entry = type { i64, i32, i64*, i32 }

@MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"p%d: already a member of VLAN %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv88e6xxx_chip*, i32, i64, i64)* @mv88e6xxx_port_vlan_join to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88e6xxx_port_vlan_join(%struct.mv88e6xxx_chip* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mv88e6xxx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.mv88e6xxx_vtu_entry, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mv88e6xxx_chip* %0, %struct.mv88e6xxx_chip** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load i64, i64* @MV88E6XXX_G1_VTU_DATA_MEMBER_TAG_NON_MEMBER, align 8
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %129

20:                                               ; preds = %4
  %21 = load i64, i64* %8, align 8
  %22 = sub nsw i64 %21, 1
  %23 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 0
  store i64 %22, i64* %23, align 8
  %24 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 1
  store i32 0, i32* %24, align 8
  %25 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %26 = call i32 @mv88e6xxx_vtu_getnext(%struct.mv88e6xxx_chip* %25, %struct.mv88e6xxx_vtu_entry* %11)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %20
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %5, align 4
  br label %129

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %97, label %40

40:                                               ; preds = %36, %31
  %41 = call i32 @memset(%struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 32)
  %42 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %43 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 3
  %44 = call i32 @mv88e6xxx_atu_new(%struct.mv88e6xxx_chip* %42, i32* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %13, align 4
  store i32 %48, i32* %5, align 4
  br label %129

49:                                               ; preds = %40
  store i32 0, i32* %12, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %53 = call i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip* %52)
  %54 = icmp slt i32 %51, %53
  br i1 %54, label %55, label %77

55:                                               ; preds = %50
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %7, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 2
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %60, i64* %65, align 8
  br label %73

66:                                               ; preds = %55
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 2
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  store i64 %67, i64* %72, align 8
  br label %73

73:                                               ; preds = %66, %59
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %50

77:                                               ; preds = %50
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 1
  store i32 1, i32* %80, align 8
  %81 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %82 = call i32 @mv88e6xxx_vtu_loadpurge(%struct.mv88e6xxx_chip* %81, %struct.mv88e6xxx_vtu_entry* %11)
  store i32 %82, i32* %13, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* %13, align 4
  store i32 %86, i32* %5, align 4
  br label %129

87:                                               ; preds = %77
  %88 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %89 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @mv88e6xxx_broadcast_setup(%struct.mv88e6xxx_chip* %88, i64 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %129

96:                                               ; preds = %87
  br label %128

97:                                               ; preds = %36
  %98 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 2
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %9, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %120

106:                                              ; preds = %97
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.mv88e6xxx_vtu_entry, %struct.mv88e6xxx_vtu_entry* %11, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i64, i64* %109, i64 %111
  store i64 %107, i64* %112, align 8
  %113 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %114 = call i32 @mv88e6xxx_vtu_loadpurge(%struct.mv88e6xxx_chip* %113, %struct.mv88e6xxx_vtu_entry* %11)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %119

117:                                              ; preds = %106
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %5, align 4
  br label %129

119:                                              ; preds = %106
  br label %127

120:                                              ; preds = %97
  %121 = load %struct.mv88e6xxx_chip*, %struct.mv88e6xxx_chip** %6, align 8
  %122 = getelementptr inbounds %struct.mv88e6xxx_chip, %struct.mv88e6xxx_chip* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @dev_info(i32 %123, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %124, i64 %125)
  br label %127

127:                                              ; preds = %120, %119
  br label %128

128:                                              ; preds = %127, %96
  store i32 0, i32* %5, align 4
  br label %129

129:                                              ; preds = %128, %117, %94, %85, %47, %29, %17
  %130 = load i32, i32* %5, align 4
  ret i32 %130
}

declare dso_local i32 @mv88e6xxx_vtu_getnext(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @memset(%struct.mv88e6xxx_vtu_entry*, i32, i32) #1

declare dso_local i32 @mv88e6xxx_atu_new(%struct.mv88e6xxx_chip*, i32*) #1

declare dso_local i32 @mv88e6xxx_num_ports(%struct.mv88e6xxx_chip*) #1

declare dso_local i32 @mv88e6xxx_vtu_loadpurge(%struct.mv88e6xxx_chip*, %struct.mv88e6xxx_vtu_entry*) #1

declare dso_local i32 @mv88e6xxx_broadcast_setup(%struct.mv88e6xxx_chip*, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
