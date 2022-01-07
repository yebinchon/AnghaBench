; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_pkg_enum_section.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_pkg_enum_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_seg = type { i32 }
%struct.ice_pkg_enum = type { i64, i8*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32, i32 }

@ICE_MIN_S_OFF = common dso_local global i64 0, align 8
@ICE_MAX_S_OFF = common dso_local global i64 0, align 8
@ICE_MIN_S_SZ = common dso_local global i64 0, align 8
@ICE_MAX_S_SZ = common dso_local global i64 0, align 8
@ICE_PKG_BUF_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.ice_seg*, %struct.ice_pkg_enum*, i32)* @ice_pkg_enum_section to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ice_pkg_enum_section(%struct.ice_seg* %0, %struct.ice_pkg_enum* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ice_seg*, align 8
  %6 = alloca %struct.ice_pkg_enum*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ice_seg* %0, %struct.ice_seg** %5, align 8
  store %struct.ice_pkg_enum* %1, %struct.ice_pkg_enum** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.ice_seg*, %struct.ice_seg** %5, align 8
  %11 = icmp ne %struct.ice_seg* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %15 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %12, %3
  %17 = load %struct.ice_seg*, %struct.ice_seg** %5, align 8
  %18 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %19 = call i32 @ice_pkg_advance_sect(%struct.ice_seg* %17, %struct.ice_pkg_enum* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store i8* null, i8** %4, align 8
  br label %135

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %45, %22
  %24 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %25 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %30 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %36 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @cpu_to_le32(i32 %37)
  %39 = icmp ne i64 %34, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %42 = call i32 @ice_pkg_advance_sect(%struct.ice_seg* null, %struct.ice_pkg_enum* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store i8* null, i8** %4, align 8
  br label %135

45:                                               ; preds = %40
  br label %23

46:                                               ; preds = %23
  %47 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %48 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %53 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @le16_to_cpu(i32 %57)
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @ICE_MIN_S_OFF, align 8
  %62 = icmp slt i64 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %46
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* @ICE_MAX_S_OFF, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %63, %46
  store i8* null, i8** %4, align 8
  br label %135

68:                                               ; preds = %63
  %69 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %70 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %75 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @le16_to_cpu(i32 %79)
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %9, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @ICE_MIN_S_SZ, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %68
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* @ICE_MAX_S_SZ, align 8
  %88 = icmp sgt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %68
  store i8* null, i8** %4, align 8
  br label %135

90:                                               ; preds = %85
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i64, i64* @ICE_PKG_BUF_SIZE, align 8
  %95 = icmp sgt i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i8* null, i8** %4, align 8
  br label %135

97:                                               ; preds = %90
  %98 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %99 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %98, i32 0, i32 2
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %104 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @le32_to_cpu(i64 %108)
  %110 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %111 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 8
  %112 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %113 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %112, i32 0, i32 2
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = bitcast %struct.TYPE_4__* %114 to i8*
  %116 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %117 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %122 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @le16_to_cpu(i32 %126)
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %115, i64 %128
  %130 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %131 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %130, i32 0, i32 1
  store i8* %129, i8** %131, align 8
  %132 = load %struct.ice_pkg_enum*, %struct.ice_pkg_enum** %6, align 8
  %133 = getelementptr inbounds %struct.ice_pkg_enum, %struct.ice_pkg_enum* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  store i8* %134, i8** %4, align 8
  br label %135

135:                                              ; preds = %97, %96, %89, %67, %44, %21
  %136 = load i8*, i8** %4, align 8
  ret i8* %136
}

declare dso_local i32 @ice_pkg_advance_sect(%struct.ice_seg*, %struct.ice_pkg_enum*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
