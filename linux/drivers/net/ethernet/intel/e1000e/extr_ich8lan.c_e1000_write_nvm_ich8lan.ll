; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_write_nvm_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_write_nvm_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__, %struct.e1000_nvm_info }
%struct.TYPE_4__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i64 }
%struct.e1000_nvm_info = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@.str = private unnamed_addr constant [32 x i8] c"nvm parameter(s) out of bounds\0A\00", align 1
@E1000_ERR_NVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*, i64, i64, i64*)* @e1000_write_nvm_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_write_nvm_ich8lan(%struct.e1000_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.e1000_nvm_info*, align 8
  %11 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 1
  store %struct.e1000_nvm_info* %14, %struct.e1000_nvm_info** %10, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %17, %struct.e1000_dev_spec_ich8lan** %11, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %20 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sge i64 %18, %21
  br i1 %22, label %34, label %23

23:                                               ; preds = %4
  %24 = load i64, i64* %8, align 8
  %25 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %26 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp sgt i64 %24, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %23
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %23, %4
  %35 = call i32 @e_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @E1000_ERR_NVM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %82

38:                                               ; preds = %31
  %39 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %40 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.1*
  %45 = call i32 %42(%struct.e1000_hw.1* %44)
  store i64 0, i64* %12, align 8
  br label %46

46:                                               ; preds = %71, %38
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %11, align 8
  %52 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* %7, align 8
  %55 = load i64, i64* %12, align 8
  %56 = add nsw i64 %54, %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = load i64, i64* %12, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %11, align 8
  %64 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load i64, i64* %12, align 8
  %68 = add nsw i64 %66, %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i64 %62, i64* %70, align 8
  br label %71

71:                                               ; preds = %50
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, 1
  store i64 %73, i64* %12, align 8
  br label %46

74:                                               ; preds = %46
  %75 = load %struct.e1000_nvm_info*, %struct.e1000_nvm_info** %10, align 8
  %76 = getelementptr inbounds %struct.e1000_nvm_info, %struct.e1000_nvm_info* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %77, align 8
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %80 = bitcast %struct.e1000_hw* %79 to %struct.e1000_hw.0*
  %81 = call i32 %78(%struct.e1000_hw.0* %80)
  store i32 0, i32* %5, align 4
  br label %82

82:                                               ; preds = %74, %34
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @e_dbg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
