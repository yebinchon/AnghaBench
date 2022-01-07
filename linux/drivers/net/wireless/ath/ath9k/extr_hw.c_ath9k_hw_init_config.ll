; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hw.c_ath9k_hw_init_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.ath_common = type { i32 }

@SER_REG_MODE_AUTO = common dso_local global i64 0, align 8
@NR_CPUS = common dso_local global i32 0, align 4
@AR_SREV_VERSION_5416_PCI = common dso_local global i64 0, align 8
@SER_REG_MODE_ON = common dso_local global i64 0, align 8
@SER_REG_MODE_OFF = common dso_local global i64 0, align 8
@RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"serialize_regmode is %d\0A\00", align 1
@MAX_TX_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_hw*)* @ath9k_hw_init_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hw_init_config(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_common*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %4 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %5 = call %struct.ath_common* @ath9k_hw_common(%struct.ath_hw* %4)
  store %struct.ath_common* %5, %struct.ath_common** %3, align 8
  %6 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %7 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i32 1, i32* %8, align 8
  %9 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 6, i32* %11, align 4
  %12 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  store i32 0, i32* %14, align 8
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i32 1, i32* %17, align 4
  %18 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  store i32 1, i32* %20, align 8
  %21 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %22 = call i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %1
  %25 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %26 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 5
  store i32 500, i32* %27, align 4
  %28 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 6
  store i32 2000, i32* %30, align 8
  br label %38

31:                                               ; preds = %1
  %32 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %33 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 5
  store i32 250, i32* %34, align 4
  %35 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 6
  store i32 700, i32* %37, align 8
  br label %38

38:                                               ; preds = %31, %24
  %39 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %40 = call i64 @AR_SREV_9462(%struct.ath_hw* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %44 = call i64 @AR_SREV_9565(%struct.ath_hw* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42, %38
  %47 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %48 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 7
  store i32 7, i32* %49, align 4
  br label %50

50:                                               ; preds = %46, %42
  %51 = call i32 (...) @num_possible_cpus()
  %52 = icmp sgt i32 %51, 1
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i64, i64* @SER_REG_MODE_AUTO, align 8
  %55 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %56 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 8
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %53, %50
  %59 = load i32, i32* @NR_CPUS, align 4
  %60 = icmp sgt i32 %59, 1
  br i1 %60, label %61, label %103

61:                                               ; preds = %58
  %62 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SER_REG_MODE_AUTO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %103

68:                                               ; preds = %61
  %69 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %70 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @AR_SREV_VERSION_5416_PCI, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %92, label %75

75:                                               ; preds = %68
  %76 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %77 = call i64 @AR_SREV_9160(%struct.ath_hw* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %75
  %80 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %81 = call i64 @AR_SREV_9280(%struct.ath_hw* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %79
  %84 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %85 = call i64 @AR_SREV_9287(%struct.ath_hw* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %83, %79, %75
  %88 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %89 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %97, label %92

92:                                               ; preds = %87, %68
  %93 = load i64, i64* @SER_REG_MODE_ON, align 8
  %94 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %95 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 8
  store i64 %93, i64* %96, align 8
  br label %102

97:                                               ; preds = %87, %83
  %98 = load i64, i64* @SER_REG_MODE_OFF, align 8
  %99 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %100 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 8
  store i64 %98, i64* %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  br label %103

103:                                              ; preds = %102, %61, %58
  %104 = load %struct.ath_common*, %struct.ath_common** %3, align 8
  %105 = load i32, i32* @RESET, align 4
  %106 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %107 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @ath_dbg(%struct.ath_common* %104, i32 %105, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i64 %109)
  %111 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %112 = call i64 @AR_SREV_9285(%struct.ath_hw* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %118, label %114

114:                                              ; preds = %103
  %115 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %116 = call i64 @AR_SREV_9271(%struct.ath_hw* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114, %103
  %119 = load i32, i32* @MAX_TX_FIFO_THRESHOLD, align 4
  %120 = ashr i32 %119, 1
  %121 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %122 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 9
  store i32 %120, i32* %123, align 8
  br label %129

124:                                              ; preds = %114
  %125 = load i32, i32* @MAX_TX_FIFO_THRESHOLD, align 4
  %126 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %127 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 9
  store i32 %125, i32* %128, align 8
  br label %129

129:                                              ; preds = %124, %118
  ret void
}

declare dso_local %struct.ath_common* @ath9k_hw_common(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9300_20_OR_LATER(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9462(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9565(%struct.ath_hw*) #1

declare dso_local i32 @num_possible_cpus(...) #1

declare dso_local i64 @AR_SREV_9160(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9280(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9287(%struct.ath_hw*) #1

declare dso_local i32 @ath_dbg(%struct.ath_common*, i32, i8*, i64) #1

declare dso_local i64 @AR_SREV_9285(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9271(%struct.ath_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
