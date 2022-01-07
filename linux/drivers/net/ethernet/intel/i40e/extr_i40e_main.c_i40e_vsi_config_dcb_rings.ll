; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_config_dcb_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_main.c_i40e_vsi_config_dcb_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vsi = type { i32, %struct.i40e_ring**, %struct.i40e_ring**, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.i40e_ring = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@I40E_FLAG_DCB_ENABLED = common dso_local global i32 0, align 4
@I40E_MAX_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vsi*)* @i40e_vsi_config_dcb_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_vsi_config_dcb_rings(%struct.i40e_vsi* %0) #0 {
  %2 = alloca %struct.i40e_vsi*, align 8
  %3 = alloca %struct.i40e_ring*, align 8
  %4 = alloca %struct.i40e_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_vsi* %0, %struct.i40e_vsi** %2, align 8
  %9 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %9, i32 0, i32 4
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @I40E_FLAG_DCB_ENABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %47, label %17

17:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %43, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %18
  %25 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %25, i32 0, i32 2
  %27 = load %struct.i40e_ring**, %struct.i40e_ring*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %27, i64 %29
  %31 = load %struct.i40e_ring*, %struct.i40e_ring** %30, align 8
  store %struct.i40e_ring* %31, %struct.i40e_ring** %4, align 8
  %32 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %33 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %32, i32 0, i32 1
  %34 = load %struct.i40e_ring**, %struct.i40e_ring*** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %34, i64 %36
  %38 = load %struct.i40e_ring*, %struct.i40e_ring** %37, align 8
  store %struct.i40e_ring* %38, %struct.i40e_ring** %3, align 8
  %39 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %40 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %39, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %42 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %41, i32 0, i32 0
  store i32 0, i32* %42, align 4
  br label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %18

46:                                               ; preds = %18
  br label %116

47:                                               ; preds = %1
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %113, %47
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @I40E_MAX_TRAFFIC_CLASS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %116

52:                                               ; preds = %48
  %53 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %54 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @BIT_ULL(i32 %57)
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %52
  br label %113

62:                                               ; preds = %52
  %63 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %64 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %5, align 4
  %72 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %73 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %74, align 8
  %76 = load i32, i32* %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %7, align 4
  br label %82

82:                                               ; preds = %109, %62
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %112

88:                                               ; preds = %82
  %89 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %90 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %89, i32 0, i32 2
  %91 = load %struct.i40e_ring**, %struct.i40e_ring*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %91, i64 %93
  %95 = load %struct.i40e_ring*, %struct.i40e_ring** %94, align 8
  store %struct.i40e_ring* %95, %struct.i40e_ring** %4, align 8
  %96 = load %struct.i40e_vsi*, %struct.i40e_vsi** %2, align 8
  %97 = getelementptr inbounds %struct.i40e_vsi, %struct.i40e_vsi* %96, i32 0, i32 1
  %98 = load %struct.i40e_ring**, %struct.i40e_ring*** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.i40e_ring*, %struct.i40e_ring** %98, i64 %100
  %102 = load %struct.i40e_ring*, %struct.i40e_ring** %101, align 8
  store %struct.i40e_ring* %102, %struct.i40e_ring** %3, align 8
  %103 = load i32, i32* %8, align 4
  %104 = load %struct.i40e_ring*, %struct.i40e_ring** %4, align 8
  %105 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* %8, align 4
  %107 = load %struct.i40e_ring*, %struct.i40e_ring** %3, align 8
  %108 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 4
  br label %109

109:                                              ; preds = %88
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %82

112:                                              ; preds = %82
  br label %113

113:                                              ; preds = %112, %61
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %48

116:                                              ; preds = %46, %48
  ret void
}

declare dso_local i32 @BIT_ULL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
