; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_reset_npar_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_reset_npar_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_npar_info*, %struct.TYPE_2__*, i32 }
%struct.qlcnic_npar_info = type { i32, i64, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_info = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_reset_npar_config(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.qlcnic_npar_info*, align 8
  %7 = alloca %struct.qlcnic_info, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %1
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %103

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %1
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %99, %19
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %21, %26
  br i1 %27, label %28, label %102

28:                                               ; preds = %20
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %29, i32 0, i32 0
  %31 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %31, i64 %33
  store %struct.qlcnic_npar_info* %34, %struct.qlcnic_npar_info** %6, align 8
  %35 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %36 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %38, i32 0, i32 0
  %40 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %40, i64 %42
  %44 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %28
  br label %99

48:                                               ; preds = %28
  %49 = call i32 @memset(%struct.qlcnic_info* %7, i32 0, i32 8)
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter* %50, %struct.qlcnic_info* %7, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %103

57:                                               ; preds = %48
  %58 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %59 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %7, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %63 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %7, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %67 = call i32 @qlcnic_set_nic_info(%struct.qlcnic_adapter* %66, %struct.qlcnic_info* %7)
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %5, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %57
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %103

72:                                               ; preds = %57
  %73 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %74 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %72
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %79 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %80 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i32 @qlcnic_config_port_mirroring(%struct.qlcnic_adapter* %78, i32 %81, i32 1, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %77
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %103

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88, %72
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %91 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %6, align 8
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @qlcnic_reset_eswitch_config(%struct.qlcnic_adapter* %90, %struct.qlcnic_npar_info* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %103

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %47
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %20

102:                                              ; preds = %20
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %102, %96, %86, %70, %55, %17
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @memset(%struct.qlcnic_info*, i32, i32) #1

declare dso_local i32 @qlcnic_get_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32) #1

declare dso_local i32 @qlcnic_set_nic_info(%struct.qlcnic_adapter*, %struct.qlcnic_info*) #1

declare dso_local i32 @qlcnic_config_port_mirroring(%struct.qlcnic_adapter*, i32, i32, i32) #1

declare dso_local i32 @qlcnic_reset_eswitch_config(%struct.qlcnic_adapter*, %struct.qlcnic_npar_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
