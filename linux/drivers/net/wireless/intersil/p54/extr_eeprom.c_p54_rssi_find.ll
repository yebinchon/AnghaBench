; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_rssi_find.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_eeprom.c_p54_rssi_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_rssi_db_entry = type { i64 }
%struct.p54_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64 }

@p54_rssi_default = common dso_local global %struct.p54_rssi_db_entry zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.p54_rssi_db_entry* @p54_rssi_find(%struct.p54_common* %0, i64 %1) #0 {
  %3 = alloca %struct.p54_rssi_db_entry*, align 8
  %4 = alloca %struct.p54_common*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.p54_rssi_db_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 -1, i32* %8, align 4
  %9 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %10 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.p54_rssi_db_entry* @p54_rssi_default, %struct.p54_rssi_db_entry** %3, align 8
  br label %89

14:                                               ; preds = %2
  %15 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %16 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %21 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %19, %24
  %26 = inttoptr i64 %25 to i8*
  %27 = bitcast i8* %26 to %struct.p54_rssi_db_entry*
  store %struct.p54_rssi_db_entry* %27, %struct.p54_rssi_db_entry** %6, align 8
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %75, %14
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %31 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %78

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %6, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %38, i64 %40
  %42 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @same_band(i64 %37, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %75

47:                                               ; preds = %36
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  store i32 %51, i32* %8, align 4
  br label %75

52:                                               ; preds = %47
  %53 = load i64, i64* %5, align 8
  %54 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %6, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %54, i64 %56
  %58 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %53, %59
  %61 = call i64 @abs(i64 %60)
  %62 = load i64, i64* %5, align 8
  %63 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %63, i64 %65
  %67 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %62, %68
  %70 = call i64 @abs(i64 %69)
  %71 = icmp slt i64 %61, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %52
  %73 = load i32, i32* %7, align 4
  store i32 %73, i32* %8, align 4
  br label %75

74:                                               ; preds = %52
  br label %78

75:                                               ; preds = %72, %50, %46
  %76 = load i32, i32* %7, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %7, align 4
  br label %28

78:                                               ; preds = %74, %28
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  br label %87

82:                                               ; preds = %78
  %83 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %6, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.p54_rssi_db_entry, %struct.p54_rssi_db_entry* %83, i64 %85
  br label %87

87:                                               ; preds = %82, %81
  %88 = phi %struct.p54_rssi_db_entry* [ @p54_rssi_default, %81 ], [ %86, %82 ]
  store %struct.p54_rssi_db_entry* %88, %struct.p54_rssi_db_entry** %3, align 8
  br label %89

89:                                               ; preds = %87, %13
  %90 = load %struct.p54_rssi_db_entry*, %struct.p54_rssi_db_entry** %3, align 8
  ret %struct.p54_rssi_db_entry* %90
}

declare dso_local i32 @same_band(i64, i64) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
