; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5755_nvram_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_get_5755_nvram_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32 }

@NVRAM_CFG1 = common dso_local global i32 0, align 4
@PROTECTED_NVRAM = common dso_local global i32 0, align 4
@NVRAM_CFG1_5752VENDOR_MASK = common dso_local global i32 0, align 4
@JEDEC_ATMEL = common dso_local global i32 0, align 4
@NVRAM_BUFFERED = common dso_local global i32 0, align 4
@FLASH = common dso_local global i32 0, align 4
@TG3_NVRAM_SIZE_512KB = common dso_local global i32 0, align 4
@TG3_NVRAM_SIZE_256KB = common dso_local global i32 0, align 4
@TG3_NVRAM_SIZE_128KB = common dso_local global i32 0, align 4
@JEDEC_ST = common dso_local global i32 0, align 4
@TG3_NVRAM_SIZE_64KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tg3*)* @tg3_get_5755_nvram_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tg3_get_5755_nvram_info(%struct.tg3* %0) #0 {
  %2 = alloca %struct.tg3*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tg3* %0, %struct.tg3** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @NVRAM_CFG1, align 4
  %6 = call i32 @tr32(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 134217728
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.tg3*, %struct.tg3** %2, align 8
  %12 = load i32, i32* @PROTECTED_NVRAM, align 4
  %13 = call i32 @tg3_flag_set(%struct.tg3* %11, i32 %12)
  store i32 1, i32* %4, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load i32, i32* @NVRAM_CFG1_5752VENDOR_MASK, align 4
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %123 [
    i32 131, label %19
    i32 130, label %19
    i32 129, label %19
    i32 128, label %19
    i32 134, label %71
    i32 133, label %71
    i32 132, label %71
  ]

19:                                               ; preds = %14, %14, %14, %14
  %20 = load i32, i32* @JEDEC_ATMEL, align 4
  %21 = load %struct.tg3*, %struct.tg3** %2, align 8
  %22 = getelementptr inbounds %struct.tg3, %struct.tg3* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.tg3*, %struct.tg3** %2, align 8
  %24 = load i32, i32* @NVRAM_BUFFERED, align 4
  %25 = call i32 @tg3_flag_set(%struct.tg3* %23, i32 %24)
  %26 = load %struct.tg3*, %struct.tg3** %2, align 8
  %27 = load i32, i32* @FLASH, align 4
  %28 = call i32 @tg3_flag_set(%struct.tg3* %26, i32 %27)
  %29 = load %struct.tg3*, %struct.tg3** %2, align 8
  %30 = getelementptr inbounds %struct.tg3, %struct.tg3* %29, i32 0, i32 0
  store i32 264, i32* %30, align 4
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, 131
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load i32, i32* %3, align 4
  %35 = icmp eq i32 %34, 128
  br i1 %35, label %36, label %46

36:                                               ; preds = %33, %19
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @TG3_NVRAM_SIZE_512KB, align 4
  br label %42

42:                                               ; preds = %40, %39
  %43 = phi i32 [ 254464, %39 ], [ %41, %40 ]
  %44 = load %struct.tg3*, %struct.tg3** %2, align 8
  %45 = getelementptr inbounds %struct.tg3, %struct.tg3* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %70

46:                                               ; preds = %33
  %47 = load i32, i32* %3, align 4
  %48 = icmp eq i32 %47, 130
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %55

53:                                               ; preds = %49
  %54 = load i32, i32* @TG3_NVRAM_SIZE_256KB, align 4
  br label %55

55:                                               ; preds = %53, %52
  %56 = phi i32 [ 127488, %52 ], [ %54, %53 ]
  %57 = load %struct.tg3*, %struct.tg3** %2, align 8
  %58 = getelementptr inbounds %struct.tg3, %struct.tg3* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %69

59:                                               ; preds = %46
  %60 = load i32, i32* %4, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %65

63:                                               ; preds = %59
  %64 = load i32, i32* @TG3_NVRAM_SIZE_128KB, align 4
  br label %65

65:                                               ; preds = %63, %62
  %66 = phi i32 [ 127488, %62 ], [ %64, %63 ]
  %67 = load %struct.tg3*, %struct.tg3** %2, align 8
  %68 = getelementptr inbounds %struct.tg3, %struct.tg3* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %69

69:                                               ; preds = %65, %55
  br label %70

70:                                               ; preds = %69, %42
  br label %123

71:                                               ; preds = %14, %14, %14
  %72 = load i32, i32* @JEDEC_ST, align 4
  %73 = load %struct.tg3*, %struct.tg3** %2, align 8
  %74 = getelementptr inbounds %struct.tg3, %struct.tg3* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 4
  %75 = load %struct.tg3*, %struct.tg3** %2, align 8
  %76 = load i32, i32* @NVRAM_BUFFERED, align 4
  %77 = call i32 @tg3_flag_set(%struct.tg3* %75, i32 %76)
  %78 = load %struct.tg3*, %struct.tg3** %2, align 8
  %79 = load i32, i32* @FLASH, align 4
  %80 = call i32 @tg3_flag_set(%struct.tg3* %78, i32 %79)
  %81 = load %struct.tg3*, %struct.tg3** %2, align 8
  %82 = getelementptr inbounds %struct.tg3, %struct.tg3* %81, i32 0, i32 0
  store i32 256, i32* %82, align 4
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %83, 134
  br i1 %84, label %85, label %96

85:                                               ; preds = %71
  %86 = load i32, i32* %4, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = load i32, i32* @TG3_NVRAM_SIZE_64KB, align 4
  br label %92

90:                                               ; preds = %85
  %91 = load i32, i32* @TG3_NVRAM_SIZE_128KB, align 4
  br label %92

92:                                               ; preds = %90, %88
  %93 = phi i32 [ %89, %88 ], [ %91, %90 ]
  %94 = load %struct.tg3*, %struct.tg3** %2, align 8
  %95 = getelementptr inbounds %struct.tg3, %struct.tg3* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  br label %122

96:                                               ; preds = %71
  %97 = load i32, i32* %3, align 4
  %98 = icmp eq i32 %97, 133
  br i1 %98, label %99, label %110

99:                                               ; preds = %96
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @TG3_NVRAM_SIZE_64KB, align 4
  br label %106

104:                                              ; preds = %99
  %105 = load i32, i32* @TG3_NVRAM_SIZE_256KB, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.tg3*, %struct.tg3** %2, align 8
  %109 = getelementptr inbounds %struct.tg3, %struct.tg3* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %121

110:                                              ; preds = %96
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %110
  %114 = load i32, i32* @TG3_NVRAM_SIZE_128KB, align 4
  br label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @TG3_NVRAM_SIZE_512KB, align 4
  br label %117

117:                                              ; preds = %115, %113
  %118 = phi i32 [ %114, %113 ], [ %116, %115 ]
  %119 = load %struct.tg3*, %struct.tg3** %2, align 8
  %120 = getelementptr inbounds %struct.tg3, %struct.tg3* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %106
  br label %122

122:                                              ; preds = %121, %92
  br label %123

123:                                              ; preds = %14, %122, %70
  ret void
}

declare dso_local i32 @tr32(i32) #1

declare dso_local i32 @tg3_flag_set(%struct.tg3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
