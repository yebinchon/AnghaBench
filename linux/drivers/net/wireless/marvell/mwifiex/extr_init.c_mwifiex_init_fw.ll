; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_init_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_init.c_mwifiex_init_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i64, i8*, i32, i32, %struct.mwifiex_private**, i64 }
%struct.mwifiex_private = type { i32 }

@MWIFIEX_HW_STATUS_INITIALIZING = common dso_local global i8* null, align 8
@MWIFIEX_HW_STATUS_READY = common dso_local global i8* null, align 8
@EINPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_init_fw(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  store i64 1, i64* %7, align 8
  %9 = load i8*, i8** @MWIFIEX_HW_STATUS_INITIALIZING, align 8
  %10 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %13 = call i32 @mwifiex_allocate_adapter(%struct.mwifiex_adapter* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %121

17:                                               ; preds = %1
  %18 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %19 = call i32 @mwifiex_init_adapter(%struct.mwifiex_adapter* %18)
  store i64 0, i64* %6, align 8
  br label %20

20:                                               ; preds = %48, %17
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %51

26:                                               ; preds = %20
  %27 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %27, i32 0, i32 4
  %29 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %28, align 8
  %30 = load i64, i64* %6, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %29, i64 %30
  %32 = load %struct.mwifiex_private*, %struct.mwifiex_private** %31, align 8
  %33 = icmp ne %struct.mwifiex_private* %32, null
  br i1 %33, label %34, label %47

34:                                               ; preds = %26
  %35 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %36 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %35, i32 0, i32 4
  %37 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %36, align 8
  %38 = load i64, i64* %6, align 8
  %39 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %37, i64 %38
  %40 = load %struct.mwifiex_private*, %struct.mwifiex_private** %39, align 8
  store %struct.mwifiex_private* %40, %struct.mwifiex_private** %5, align 8
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %42 = call i32 @mwifiex_init_priv(%struct.mwifiex_private* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %34
  store i32 -1, i32* %2, align 4
  br label %121

46:                                               ; preds = %34
  br label %47

47:                                               ; preds = %46, %26
  br label %48

48:                                               ; preds = %47
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %6, align 8
  br label %20

51:                                               ; preds = %20
  %52 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load i8*, i8** @MWIFIEX_HW_STATUS_READY, align 8
  %58 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @EINPROGRESS, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %95

62:                                               ; preds = %51
  store i64 0, i64* %6, align 8
  br label %63

63:                                               ; preds = %91, %62
  %64 = load i64, i64* %6, align 8
  %65 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ult i64 %64, %67
  br i1 %68, label %69, label %94

69:                                               ; preds = %63
  %70 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %70, i32 0, i32 4
  %72 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %72, i64 %73
  %75 = load %struct.mwifiex_private*, %struct.mwifiex_private** %74, align 8
  %76 = icmp ne %struct.mwifiex_private* %75, null
  br i1 %76, label %77, label %90

77:                                               ; preds = %69
  %78 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %79 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %78, i32 0, i32 4
  %80 = load %struct.mwifiex_private**, %struct.mwifiex_private*** %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = getelementptr inbounds %struct.mwifiex_private*, %struct.mwifiex_private** %80, i64 %81
  %83 = load %struct.mwifiex_private*, %struct.mwifiex_private** %82, align 8
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @mwifiex_sta_init_cmd(%struct.mwifiex_private* %83, i64 %84, i32 1)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  store i32 -1, i32* %2, align 4
  br label %121

89:                                               ; preds = %77
  store i64 0, i64* %7, align 8
  br label %90

90:                                               ; preds = %89, %69
  br label %91

91:                                               ; preds = %90
  %92 = load i64, i64* %6, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %6, align 8
  br label %63

94:                                               ; preds = %63
  br label %95

95:                                               ; preds = %94, %56
  %96 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %96, i32 0, i32 2
  %98 = call i32 @spin_lock_bh(i32* %97)
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %99, i32 0, i32 3
  %101 = call i32 @list_empty(i32* %100)
  store i32 %101, i32* %8, align 4
  %102 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %102, i32 0, i32 2
  %104 = call i32 @spin_unlock_bh(i32* %103)
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %95
  %108 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %109 = call i32 @mwifiex_main_process(%struct.mwifiex_adapter* %108)
  %110 = icmp ne i32 %109, -1
  br i1 %110, label %111, label %114

111:                                              ; preds = %107
  %112 = load i32, i32* @EINPROGRESS, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %111, %107
  br label %119

115:                                              ; preds = %95
  %116 = load i8*, i8** @MWIFIEX_HW_STATUS_READY, align 8
  %117 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %118 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %117, i32 0, i32 1
  store i8* %116, i8** %118, align 8
  br label %119

119:                                              ; preds = %115, %114
  %120 = load i32, i32* %4, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %119, %88, %45, %16
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i32 @mwifiex_allocate_adapter(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_init_adapter(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_init_priv(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_sta_init_cmd(%struct.mwifiex_private*, i64, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @mwifiex_main_process(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
