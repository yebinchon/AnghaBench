; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_set_default_offload_settings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_set_default_offload_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.qlcnic_npar_info*, %struct.TYPE_2__*, i64 }
%struct.qlcnic_npar_info = type { i32, i8*, i32, i32, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.qlcnic_esw_func_cfg = type { i32, i8*, i32, i32, i8*, i32, i32 }

@BIT_0 = common dso_local global i8* null, align 8
@BIT_1 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_set_default_offload_settings(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_esw_func_cfg, align 8
  %5 = alloca %struct.qlcnic_npar_info*, align 8
  %6 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %104

12:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  br label %13

13:                                               ; preds = %100, %12
  %14 = load i64, i64* %6, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %14, %19
  br i1 %20, label %21, label %103

21:                                               ; preds = %13
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %22, i32 0, i32 0
  %24 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %24, i64 %25
  %27 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %21
  br label %100

31:                                               ; preds = %21
  %32 = call i32 @memset(%struct.qlcnic_esw_func_cfg* %4, i32 0, i32 40)
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 0
  %35 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %35, i64 %36
  %38 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 6
  store i32 %39, i32* %40, align 4
  %41 = load i8*, i8** @BIT_0, align 8
  %42 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 4
  store i8* %41, i8** %42, align 8
  %43 = load i8*, i8** @BIT_0, align 8
  %44 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 1
  store i8* %43, i8** %44, align 8
  %45 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %46 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %31
  %49 = load i8*, i8** @BIT_0, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %53 = call i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load i32, i32* @BIT_1, align 4
  %57 = load i32, i32* @BIT_2, align 4
  %58 = or i32 %56, %57
  %59 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %58
  store i32 %61, i32* %59, align 8
  br label %62

62:                                               ; preds = %55, %48
  br label %63

63:                                               ; preds = %62, %31
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %65 = call i64 @qlcnic_config_switch_port(%struct.qlcnic_adapter* %64, %struct.qlcnic_esw_func_cfg* %4)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @EIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %104

70:                                               ; preds = %63
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %71, i32 0, i32 0
  %73 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %72, align 8
  %74 = load i64, i64* %6, align 8
  %75 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %73, i64 %74
  store %struct.qlcnic_npar_info* %75, %struct.qlcnic_npar_info** %5, align 8
  %76 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 5
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %79 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  %80 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 4
  %81 = load i8*, i8** %80, align 8
  %82 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %83 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %82, i32 0, i32 4
  store i8* %81, i8** %83, align 8
  %84 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %87 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %91 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %95 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %4, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.qlcnic_npar_info*, %struct.qlcnic_npar_info** %5, align 8
  %99 = getelementptr inbounds %struct.qlcnic_npar_info, %struct.qlcnic_npar_info* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %70, %30
  %101 = load i64, i64* %6, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %6, align 8
  br label %13

103:                                              ; preds = %13
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %103, %67, %11
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local i32 @memset(%struct.qlcnic_esw_func_cfg*, i32, i32) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_config_switch_port(%struct.qlcnic_adapter*, %struct.qlcnic_esw_func_cfg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
